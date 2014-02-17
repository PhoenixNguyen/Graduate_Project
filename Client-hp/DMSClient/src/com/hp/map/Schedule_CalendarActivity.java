package com.hp.map;

import java.net.URI;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Locale;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import com.hp.order.ProductArrayAdapter;
import com.hp.rest.Rest;
import com.hp.schedule.CalendarAdapter;
import com.hp.schedule.DialogArrayAdapter;
import com.hp.schedule.Utility;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.StrictMode;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

@SuppressLint("NewApi")
@TargetApi(Build.VERSION_CODES.GINGERBREAD)
public class Schedule_CalendarActivity extends Activity {

	public GregorianCalendar month, itemmonth;// calendar instances.

	public CalendarAdapter adapter;// adapter instance
	public Handler handler;// for grabbing some event values for showing the dot
							// marker.
	public ArrayList<String> items; // container to store calendar items which
									// needs showing the event marker
	ArrayList<String> event;
	LinearLayout rLayout;
	ArrayList<String> date;
	ArrayList<String> desc;

	private ListView listView;
	private ListView listViewCus;
	final Context context = this;
		
	@TargetApi(Build.VERSION_CODES.GINGERBREAD)
	@SuppressLint("NewApi")
	public void onCreate(Bundle savedInstanceState) {
		if (android.os.Build.VERSION.SDK_INT > 9) {
    	    StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
    	    StrictMode.setThreadPolicy(policy);
    	}
		super.onCreate(savedInstanceState);
		setContentView(R.layout.calendar);
		Locale.setDefault(Locale.US);
		
//		Rest rest = new Rest("njnj");
//		rest.connectWebservices();
		
		rLayout = (LinearLayout) findViewById(R.id.text);
		month = (GregorianCalendar) GregorianCalendar.getInstance();
		itemmonth = (GregorianCalendar) month.clone();

		items = new ArrayList<String>();

		adapter = new CalendarAdapter(this, month);

		GridView gridview = (GridView) findViewById(R.id.gridview);
		gridview.setAdapter(adapter);

		handler = new Handler();
		handler.post(calendarUpdater);

		TextView title = (TextView) findViewById(R.id.title);
		title.setText(android.text.format.DateFormat.format("MMMM yyyy", month));

		RelativeLayout previous = (RelativeLayout) findViewById(R.id.previous);

		previous.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				setPreviousMonth();
				refreshCalendar();
			}
		});

		RelativeLayout next = (RelativeLayout) findViewById(R.id.next);
		next.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				setNextMonth();
				refreshCalendar();

			}
		});
		
		listView = (ListView)findViewById(R.id.list_view_customers);
		
		
		gridview.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> parent, View v,
					int position, long id) {
				
				//Connect services
//				Rest rest = new Rest("");
//				rest.connectWebservices();
				
				System.out.println("________________ 2 CALL: "+
			    		Rest.mService.path("webresources").path("getData").accept(MediaType.TEXT_PLAIN).get(String.class));
				// removing the previous view if added
				if (((LinearLayout) rLayout).getChildCount() > 0) {
					((LinearLayout) rLayout).removeAllViews();
				}
				desc = new ArrayList<String>();
				date = new ArrayList<String>();
				((CalendarAdapter) parent.getAdapter()).setSelected(v);
				String selectedGridDate = CalendarAdapter.dayString
						.get(position);
				String[] separatedTime = selectedGridDate.split("-");
				String gridvalueString = separatedTime[2].replaceFirst("^0*",
						"");// taking last part of date. ie; 2 from 2012-12-02.
				int gridvalue = Integer.parseInt(gridvalueString);
				// navigate to next or previous month on clicking offdays.
				if ((gridvalue > 10) && (position < 8)) {
					setPreviousMonth();
					refreshCalendar();
				} else if ((gridvalue < 7) && (position > 28)) {
					setNextMonth();
					refreshCalendar();
				}
				((CalendarAdapter) parent.getAdapter()).setSelected(v);
				
				///////----------------- Set a date below the calendar --------------------
				TextView viewDate = new TextView(Schedule_CalendarActivity.this);

				// set some properties of rowTextView or something
				viewDate.setText("Customers in " + selectedGridDate);
				viewDate.setTextSize(20);
				viewDate.setTextColor(Color.BLACK);
				
				Button add = new Button(Schedule_CalendarActivity.this);
				add.setText("Add schedules");
				add.setRight(1);
				// add the textview to the linearlayout -----------------------------------
				rLayout.addView(viewDate);
				rLayout.addView(add);
				// Add dialog ------------------------------------------------------------
				addDialog();
				
				///////////////////////////////////////////
				
				// List customers in schedule -------------------------------------------
				String[] PRODUCT = 
						new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
										"Apple", "Avocado","Apple", "Avocado", "Banana", "Blueberry", "Coconut"};
				//listView = (ListView)findViewById(R.id.list_view_customers);
				listView.setAdapter(new ProductArrayAdapter(context, android.R.layout.simple_list_item_1, PRODUCT));
				
				listView.setOnItemClickListener(new OnItemClickListener()
				{
				     @Override
				     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
				     {
//				    	 String selectedValue = (String) listView.getAdapter().getItem(position);
//				    	 
//				          //Toast.makeText(getBaseContext(), "Click", Toast.LENGTH_LONG).show();
//				    	// custom dialog

				      }
				});

			}

		});
	}

	public void addDialog(){
		final Dialog dialog = new Dialog(context);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View v = li.inflate(R.layout.schedule_dialog, null, false);
		dialog.setContentView(v);
		listViewCus = (ListView)dialog.findViewById(R.id.list_view_cus);
		
		dialog.setTitle("Chọn Khách Hàng");
		
		// List customers in schedule -------------------------------------------
		String[] PRODUCT = 
				new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
								"Apple", "Avocado","Apple", "Avocado", "Banana", "Blueberry", "Coconut"};
		//ListView listViewCus = (ListView)findViewById(R.id.list_view_cus);
		listViewCus.setAdapter(new DialogArrayAdapter(context, android.R.layout.simple_list_item_1, PRODUCT));
		
		listViewCus.setOnItemClickListener(new OnItemClickListener()
		{
		     @Override
		     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
		     {
//		    	 String selectedValue = (String) listView.getAdapter().getItem(position);
//		    	 
//		          //Toast.makeText(getBaseContext(), "Click", Toast.LENGTH_LONG).show();
//		    	// custom dialog

		      }
		});
		
		Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
		// if button is clicked, close the custom dialog
		dialogButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				dialog.dismiss();
			}
		});

		dialog.show();
		
//		final Dialog dialog = new Dialog(context);
//		dialog.setContentView(R.layout.order_product_dialog);
//		dialog.setTitle("Số lượng");
//
//		// set the custom dialog components - text, image and button
//		TextView text = (TextView) dialog.findViewById(R.id.text);
//		text.setText("Tên sản phẩm: ");
//
//		TextView price = (TextView) dialog.findViewById(R.id.price);
//		price.setText("Giá sản phẩm: ");
//		
//		Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
//		// if button is clicked, close the custom dialog
//		dialogButton.setOnClickListener(new OnClickListener() {
//			@Override
//			public void onClick(View v) {
//				dialog.dismiss();
//			}
//		});
//		dialog.show();
	}
	protected void setNextMonth() {
		if (month.get(GregorianCalendar.MONTH) == month
				.getActualMaximum(GregorianCalendar.MONTH)) {
			month.set((month.get(GregorianCalendar.YEAR) + 1),
					month.getActualMinimum(GregorianCalendar.MONTH), 1);
		} else {
			month.set(GregorianCalendar.MONTH,
					month.get(GregorianCalendar.MONTH) + 1);
		}

	}

	protected void setPreviousMonth() {
		if (month.get(GregorianCalendar.MONTH) == month
				.getActualMinimum(GregorianCalendar.MONTH)) {
			month.set((month.get(GregorianCalendar.YEAR) - 1),
					month.getActualMaximum(GregorianCalendar.MONTH), 1);
		} else {
			month.set(GregorianCalendar.MONTH,
					month.get(GregorianCalendar.MONTH) - 1);
		}

	}

	protected void showToast(String string) {
		Toast.makeText(this, string, Toast.LENGTH_SHORT).show();

	}

	public void refreshCalendar() {
		TextView title = (TextView) findViewById(R.id.title);

		adapter.refreshDays();
		adapter.notifyDataSetChanged();
		handler.post(calendarUpdater); // generate some calendar items

		title.setText(android.text.format.DateFormat.format("MMMM yyyy", month));
	}

	public Runnable calendarUpdater = new Runnable() {

		@Override
		public void run() {
			items.clear();

			// Print dates of the current week
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
			String itemvalue;
			event = Utility.readCalendarEvent(Schedule_CalendarActivity.this);
			Log.d("=====Event====", event.toString());
			Log.d("=====Date ARRAY====", Utility.startDates.toString());

			for (int i = 0; i < Utility.startDates.size(); i++) {
				itemvalue = df.format(itemmonth.getTime());
				itemmonth.add(GregorianCalendar.DATE, 1);
				items.add(Utility.startDates.get(i).toString());
			}
			adapter.setItems(items);
			adapter.notifyDataSetChanged();
		}
	};
	
	public void connectWebservices(){
//		ClientConfig config = new DefaultClientConfig();
//	    Client client = Client.create(config);
//	    WebResource service = client.resource(getBaseURI());
//	    // Fluent interfaces
//	    //System.out.println(service.path("webresources").path("getData").accept(MediaType.TEXT_PLAIN).get(ClientResponse.class).toString());
//	    // Get plain text
//	    System.out.println("________________"+
//	    		service.path("webresources").path("getData").accept("text/plain").get(String.class));
//	    // Get XML
//	    //System.out.println(service.path("webresources").path("getData").accept(MediaType.TEXT_XML).get(String.class));
//	    // The HTML
//	    //System.out.println(service.path("webresources").path("getData").accept(MediaType.TEXT_HTML).get(String.class));
		
		Client client = Client.create();
		 
		WebResource webResource = client
		   .resource("http://192.168.169.2:8080/DMSProject/webresources/getData");
 
		ClientResponse response = webResource.accept("text/plain")
                   .get(ClientResponse.class);
 
		if (response.getStatus() != 200) {
		   throw new RuntimeException("Failed : HTTP error code : "
			+ response.getStatus());
		}
 
		String output = response.getEntity(String.class);
 
		System.out.println("Output from Server .... \n");
		System.out.println(output);
	}
	
	private URI getBaseURI() {
	    return UriBuilder.fromUri("http://192.168.169.2:8080/DMSProject").build();
	  }
}
