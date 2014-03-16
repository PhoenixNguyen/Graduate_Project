package com.hp.map;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.Customer;
import com.hp.domain.Product;
import com.hp.domain.Provider;
import com.hp.domain.TakeOrderDetail;
import com.hp.order.*;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class TakeOrder_ProductActivity extends Activity{
	private ListView listView;
	
	static final String[] PRODUCT = 
			new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
							"Apple", "Avocado"};
	
	private Spinner spinner;
	final Context context = this;
	private int line = 0;
	
	public static List<TakeOrderDetail> ordersDetailList = new ArrayList<TakeOrderDetail>();
	
	private TextView total_value;
	
	private EditText id_search;
	private ProductArrayAdapter adapter;
	
	
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.product);
		
		//Reset
		ordersDetailList.clear();
		
		//Search ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		id_search = (EditText) findViewById(R.id.product_id);
						
		total_value = (TextView)findViewById(R.id.total_value);
		
		List<Product> productsList = new ArrayList<Product>();
		Product product = new Product(1, "Welcome", "Welcome", "Choose providers list");
		productsList.add(product);
		
		listView = (ListView)findViewById(R.id.list_view_product);
		adapter = new ProductArrayAdapter(this, android.R.layout.simple_list_item_1, productsList);
		listView.setAdapter(adapter);
		
		
		listView.setOnItemClickListener(new OnItemClickListener()
		{
		     @Override
		     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
		     {
		    	 final Product selectedValue = (Product) listView.getAdapter().getItem(position);
		    	 
		          //Toast.makeText(getBaseContext(), "Click", Toast.LENGTH_LONG).show();
		    	// custom dialog
					final Dialog dialog = new Dialog(context);
					dialog.setContentView(R.layout.order_product_dialog);
					dialog.setTitle("Số lượng");
		 
					// set the custom dialog components - text, image and button
					TextView text = (TextView) dialog.findViewById(R.id.text);
					text.setText("Tên sản phẩm: "+selectedValue.getmProductName());

					TextView price = (TextView) dialog.findViewById(R.id.price);
					price.setText("Giá sản phẩm: "+selectedValue.getmExportPrices());
					
					TextView discount = (TextView) dialog.findViewById(R.id.discount);
					discount.setText("Giảm giá: 0.0" );
					
					final EditText count = (EditText)dialog.findViewById(R.id.count);
					
					Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
					// if button is clicked, close the custom dialog
					dialogButton.setOnClickListener(new OnClickListener() {
						@Override
						public void onClick(View v) {
							
							line++;
							System.out.println("__ "+ line);
							String count2 = count.getText().toString();
							int number = 0;
							if(count2.compareTo("") != 0)
								number = Integer.parseInt(count2);
							else
								return;
							
							//take order detail
							boolean status = false;
							for(int i = 0; i < ordersDetailList.size(); i++){
								if(ordersDetailList.get(i).getmProductID().compareTo(selectedValue.getmProductID()) == 0){
									if(number == 0){
										ordersDetailList.remove(i);
									}
									else{
										ordersDetailList.get(i).setmNumber(number);
										
									}
									status = true;
									line--;
								}
							}
							if(!status && number != 0){
								System.out.println("2__ "+ line);
								TakeOrderDetail orderDetail = 
										new TakeOrderDetail("", line, selectedValue.getmProductID(), selectedValue.getmBarcode(), selectedValue.getmProductName(), 
												selectedValue.getmExportPrices(), selectedValue.getmExportPrices(), 0, 0, 
												selectedValue.getmExportPrices() * number, "", number, "", 0);
								
								ordersDetailList.add(orderDetail);
							}
							
							total_value.setText(ordersDetailList.size()+"");
							//finish
							dialog.dismiss();
						}
					});
		 
					
					dialog.show();
		      }
		});

		//spiner
		addItemsOnSpinner();
		addListenerOnSpinnerItemSelection();
		
		

		
	}
	
	protected void onListItemClick(ListView l, View v, int position, long id){
		//get selected items
		String selectedValue = (String) listView.getAdapter().getItem(position);
		Toast.makeText(this, selectedValue, Toast.LENGTH_SHORT).show();
	}
	
	//............... start spiner ........................
	// add items into spinner dynamically
	  public void addItemsOnSpinner() {
	 
		//GET providers list
		// Check the internet
		if(isOnline()){
			System.out.println("Internet access!!____________________");
		}
		else{
			System.out.println("NO Internet access!!____________________");
			Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
			return;
		}
		
		ClientResponse response = Rest.mService.path("webresources").path("getProvidersIDList")
				.accept("application/json")
				.type("application/json").get(ClientResponse.class);
        System.out.println("________________ "+ response.toString());
        if(response.getStatus() != 200){
        	return;
        }
        
        String re = response.getEntity(String.class);
        System.out.println("________________ "+ re);
        
        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        List<Provider> providersList = null;
		try {
//			File jsonFile = new File(jsonFilePath);
			providersList = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
					Provider.class));
			//System.out.println("++++++++++++++ "+schedule.get(0).getmMaDoiTuong());
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//////////////////////////////////////////////////////////////////////////////////////////
		
		spinner = (Spinner) findViewById(R.id.class_id);
		
		List<String> list = new ArrayList<String>();
		for(int i = 0; i < providersList.size(); i++){
			
			list.add(providersList.get(i).getmID());
		}
		ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this,
			android.R.layout.simple_spinner_item, list);
		dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spinner.setAdapter(dataAdapter);
	  }
	 
	  
	  public void addListenerOnSpinnerItemSelection() {
			spinner = (Spinner) findViewById(R.id.class_id);
			spinner.setOnItemSelectedListener(new CustomOnItemSelectedListener(this, listView, id_search));
		  }
	  ////////////////////// finish spiner ///////////////////////////////////

	  
	  public boolean isOnline() { 
			ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
			return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
		}
}

