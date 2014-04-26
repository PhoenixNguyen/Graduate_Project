package com.hp.map;

import java.io.IOException;
import java.net.URI;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.Customer;
import com.hp.domain.Schedule;
import com.hp.order.ProductArrayAdapter;
import com.hp.rest.Rest;
import com.hp.schedule.CalendarAdapter;
import com.hp.schedule.DialogArrayAdapter;
import com.hp.schedule.ListViewSchedules;
import com.hp.schedule.ScheduleViewArrayAdapter;
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
import android.content.Intent;
import android.graphics.Color;
import android.net.ConnectivityManager;
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
public class Schedule_CalendarActivity extends MainMenuActivity {

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
		
	//take customers
	public static Map<String, Timestamp> mTakeCustomersList = new HashMap<String, Timestamp>();
	public static String mTakeTheDate = new String();
	
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
				
				// Check the internet
				if(isOnline()){
					System.out.println("Internet access!!____________________");
				}
				else{
					System.out.println("NO Internet access!!____________________");
					Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
					return;
				}
				
				//Set enable
				listView.setEnabled(true);

				//System.out.println("________________ 2 CALL: "+
			    	//	Rest.mService.path("webresources").path("getData").accept(MediaType.TEXT_PLAIN).get(String.class));
				// removing the previous view if added
				if (((LinearLayout) rLayout).getChildCount() > 0) {
					((LinearLayout) rLayout).removeAllViews();
				}
				desc = new ArrayList<String>();
				date = new ArrayList<String>();
				((CalendarAdapter) parent.getAdapter()).setSelected(v);
				final String selectedGridDate = CalendarAdapter.dayString
						.get(position);
				
				//Set Take the date
				mTakeTheDate = selectedGridDate ;
				
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
				add.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						// Add dialog ------------------------------------------------------------
						addDialog(selectedGridDate);
					}
				});
				
				
				///////////////////////////////////////////
				
				// List customers in schedule -------------------------------------------
				ClientResponse response = Rest.mService.path("webresources").path("getSchedule")
						.accept("application/json")
						.type("application/json").post(ClientResponse.class
								,Rest.mStaff.getId()+"::"+selectedGridDate);
				
		        System.out.println("________________ "+ response.toString() + "__ " +response.getLength());
		        if(response.getLength() > 2 )
		        {
		        
			        String re = response.getEntity(String.class);
			        System.out.println("________________ "+ re);
			        
			        // pair to object
			        ObjectMapper mapper = new ObjectMapper();
			        List<Schedule> schedule = null;
					try {
	//					File jsonFile = new File(jsonFilePath);
						schedule = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
								Schedule.class));
						//System.out.println("++++++++++++++ "+schedule.get(0).getMaKH() +" " +schedule.get(0).getTime());
					} catch (JsonGenerationException e) {
						e.printStackTrace();
					} catch (JsonMappingException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
					
					String[] scheduleIDList = new String[]{};
					ListViewSchedules[] listV = new ListViewSchedules[]{};
					
					DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					for(int i = 0; i < schedule.size(); i++){
						Calendar cal = Calendar.getInstance();
						cal.setTime(schedule.get(i).getTime());
						cal.add(Calendar.HOUR, -7);
						System.out.println("-____- " +dateFormat.format(cal.getTime()));
											  
						scheduleIDList = append(scheduleIDList, schedule.get(i).getMaKH());
						listV = append(listV, new ListViewSchedules(schedule.get(i).getMaKH()
								, dateFormat.format(cal.getTime()) ));
						
					}
					String[] PRODUCT = 
							new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
											"Apple", "Avocado","Apple", "Avocado", "Banana", "Blueberry", "Coconut"};
					//listView = (ListView)findViewById(R.id.list_view_customers);
					
					listView.setAdapter(new ScheduleViewArrayAdapter(context, android.R.layout.simple_list_item_1, listV));
					
					listView.setOnItemClickListener(new OnItemClickListener()
					{
					     @Override
					     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
					     {
					    	 ListViewSchedules selectedValue = (ListViewSchedules) listView.getAdapter().getItem(position);
					    	 addCustomerDialog(selectedValue);
	//				    	 
	//				          //Toast.makeText(getBaseContext(), "Click", Toast.LENGTH_LONG).show();
	//				    	// custom dialog
	
					      }
					});
				
		        }
		        else
		        {
		        	
		        	
		        	ListViewSchedules[] listV = new ListViewSchedules[]{
		        			new ListViewSchedules("NOT SET", "00-00-00 00:00:00")};
		        	listView.setAdapter(new ScheduleViewArrayAdapter(context, android.R.layout.simple_list_item_1, listV));
		        	listView.setEnabled(false);
		        }

			}

		});
	}

	public void addCustomerDialog(final ListViewSchedules selectedValue){
		final Dialog dialog = new Dialog(context);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View v = li.inflate(R.layout.customer_selected_dialog, null, false);
		dialog.setContentView(v);
		
		dialog.setTitle("Lựa chọn của bạn: ");
	
		Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
		// if button is clicked, close the custom dialog
		dialogButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// show the map
				Intent t = new Intent(context, CustomerMapActivity.class);
		        t.putExtra("POSITION_CLICK", selectedValue.getId());
		        
		        startActivity(t);
		        
				dialog.dismiss();
			}
		});

		//Delete a schedule
		Button dialogDeleteButton = (Button) dialog.findViewById(R.id.dialogButtonNO);
		// if button is clicked, close the custom dialog
		dialogDeleteButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
			
				// Check the internet
				if(isOnline()){
					System.out.println("Internet access!!____________________");
				}
				else{
					System.out.println("NO Internet access!!____________________");
					Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
					return;
				}
				
				DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = null;
				try {
					date = sdf.parse(selectedValue.getTime());
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				System.out.println("_date: "+ sdf.format(date));
//				//Post
				ClientResponse response = Rest.mService.path("webresources").path("deleteSchedule").accept("application/json")
						.type("application/json").post(ClientResponse.class, selectedValue.getId()+"::"+sdf.format(date));
						
				if (response.getStatus() != 200) {
		            throw new RuntimeException("Failed : HTTP error code : "
		                    + response.getStatus());
		        }
				
				if(response.getStatus() != 200){
		        	
		        	return ;
		        }
		        String output = response.getEntity(String.class);
		        System.out.println("Server response .... \n");
		        System.out.println(output);
		        
		        if(output.compareTo("status:1") == 0){
		        	Toast.makeText(context, "Đã xóa!", Toast.LENGTH_SHORT).show();
		        	
		        }
		        else
		        	Toast.makeText(context, "Xóa lỗi!", Toast.LENGTH_SHORT).show();
		        
				dialog.dismiss();
			}
		});
		dialog.show();
		
	}
	
	public void addDialog(String pDate){
		// Check the internet
		if(isOnline()){
			System.out.println("Internet access!!____________________");
		}
		else{
			System.out.println("NO Internet access!!____________________");
			Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
			return;
		}
		
		final Dialog dialog = new Dialog(context);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View v = li.inflate(R.layout.schedule_dialog, null, false);
		dialog.setContentView(v);
		listViewCus = (ListView)dialog.findViewById(R.id.list_view_cus);
		
		dialog.setTitle("Chọn Khách Hàng");
		
		// List customers in schedule -------------------------------------------
		//Get customers list for staff and not have the schedule ========================================
		ClientResponse response = Rest.mService.path("webresources").path("getCustomersListSchedule")
				.accept("application/json")
				.type("application/json").post(ClientResponse.class, Rest.customerList.get(0).getMaNhanVien() +"::"+pDate);
        System.out.println("________________ "+ response.toString());
        if(response.getStatus() != 200){
        	dialog.dismiss();
        	return;
        }
        
        String re = response.getEntity(String.class);
        System.out.println("________________ "+ re);
        
        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        List<Customer> schedule = null;
		try {
//			File jsonFile = new File(jsonFilePath);
			schedule = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
					Customer.class));
			//System.out.println("++++++++++++++ "+schedule.get(0).getmMaDoiTuong());
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////
		String[] customer = new String[]{};
		
		for(int i = 0; i < schedule.size(); i++){
			customer = append(customer, schedule.get(i).getMaDoiTuong());
			
		}
		String[] PRODUCT = 
				new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
								"Apple", "Avocado","Apple", "Avocado", "Banana", "Blueberry", "Coconut"};
		//ListView listViewCus = (ListView)findViewById(R.id.list_view_cus);
		listViewCus.setAdapter(new DialogArrayAdapter(context, android.R.layout.simple_list_item_1, customer));
		
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
				// Check the internet
				if(isOnline()){
					System.out.println("Internet access!!____________________");
				}
				else{
					System.out.println("NO Internet access!!____________________");
					Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
					return;
				}
				
				// get map
				System.out.println("__MAP__");
				List<Schedule> scheduleList = new ArrayList<Schedule>();
				for(String key : mTakeCustomersList.keySet()){
					Timestamp value = mTakeCustomersList.get(key);
					Schedule schedule = new Schedule(Rest.customerList.get(0).getMaNhanVien()
							, key
							, value
							, false);
					
					scheduleList.add(schedule);
					System.out.println(key + " ___ " + value);
					
				}
				//================= put in server======================================
				ObjectMapper mapper = new ObjectMapper();
		        String listStr = new String();

				try {

					listStr = mapper.writeValueAsString(scheduleList);
					
				} catch (JsonGenerationException ex) {

					ex.printStackTrace();

				} catch (JsonMappingException ex) {

					ex.printStackTrace();

				} catch (IOException ex) {

					ex.printStackTrace();

				}
				
				//Post
				ClientResponse response = Rest.mService.path("webresources").path("putSchedule").accept("application/json")
						.type("application/json").post(ClientResponse.class, listStr);
						
				if (response.getStatus() != 200) {
		            throw new RuntimeException("Failed : HTTP error code : "
		                    + response.getStatus());
		        }
		        String output = response.toString();
		        System.out.println("Server response .... \n");
		        System.out.println(output);
		        
				/////==================================================================
				//destroy
				Schedule_CalendarActivity.mTakeCustomersList.clear();
				dialog.dismiss();
			}
		});

		dialog.show();
		
	}
	
	@SuppressLint("NewApi")
	static <T> T[] append(T[] arr, T element) {
        final int N = arr.length;
        arr = Arrays.copyOf(arr, N + 1);
        arr[N] = element;
        return arr;
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
	
	public boolean isOnline() { 
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
		return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
	}
	
}
