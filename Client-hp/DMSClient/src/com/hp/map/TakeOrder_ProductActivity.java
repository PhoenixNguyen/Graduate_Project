package com.hp.map;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

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

public class TakeOrder_ProductActivity extends Activity implements OnItemClickListener{
	public ListView listView;
	public static Map<String, List<Product>> mProductsMap = new HashMap<String, List<Product>>();
	
	private Spinner spinner;
	final Context context = this;
	private int line;
	
	public static List<TakeOrderDetail> ordersDetailList = new ArrayList<TakeOrderDetail>();
	
	private TextView total_value;
	
	private EditText id_search;
	private ProductArrayAdapter adapter;
	
	public TextView title;
	
	//For Inventory
	public String command;
	public String customerID;
	
	public static boolean timeLine = true;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.product);
		
		//Reset
		ordersDetailList.clear();
				
		//Init
		init();
		
		//Search ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		id_search = (EditText) findViewById(R.id.product_id);
						
		total_value = (TextView)findViewById(R.id.total_value);
		
		List<Product> productsList = new ArrayList<Product>();
		Product product = new Product(1, "Welcome", "Welcome", "Choose providers list");
		productsList.add(product);
		
		listView = (ListView)findViewById(R.id.list_view_product);
		adapter = new ProductArrayAdapter(this, android.R.layout.simple_list_item_1, productsList);
		listView.setAdapter(adapter);
		
		
		listView.setOnItemClickListener(this);
		
		//spiner
		addItemsOnSpinner();
		addListenerOnSpinnerItemSelection();
		
		
		//SET total line
		Set<String> keyset = TakeOrder_ProductActivity.mProductsMap.keySet();
		line = 0;
		for(String key : keyset){
		for(int i = 0; i < TakeOrder_ProductActivity.mProductsMap.get(key).size(); i++)
			if(TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal() > 0){
				line++;
			}
		}
		total_value.setText(line+"");
		//
		
	}
	
	public void onResume(){
		super.onResume();
		this.onCreate(null);
	}
	
	public void init(){
		title = (TextView)findViewById(R.id.title);
		command = "getProductsList";
		customerID = "";
	}
	
	protected void onListItemClick(ListView l, View v, int position, long id){
		//get selected items
		String selectedValue = (String) listView.getAdapter().getItem(position);
		Toast.makeText(this, selectedValue, Toast.LENGTH_SHORT).show();
	}
	
	//............... start spiner ........................
	// add items into spinner dynamically
	  public void addItemsOnSpinner() {
	 
		String re = getProviderIDList();
		if(re == null)
			return;
		
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
			//Init products list
//			mProductsMap.put(i+"", value)
//			mProductsList[i] = new ArrayList<Product>();
			
			//Add
			list.add(providersList.get(i).getmID());
		}
		ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this,
			android.R.layout.simple_spinner_item, list);
		dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spinner.setAdapter(dataAdapter);
	  }
	 
	  public String getProviderIDList(){
		//GET providers list
			// Check the internet
			if(isOnline()){
				System.out.println("Internet access!!____________________");
			}
			else{
				System.out.println("NO Internet access!!____________________");
				Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
				return null;
			}
			
			ClientResponse response = Rest.mService.path("webresources").path("getProvidersIDList")
					.accept("application/json")
					.type("application/json").get(ClientResponse.class);
	        System.out.println("________________ "+ response.toString());
	        if(response.getStatus() != 200){
	        	return null;
	        }
	        
	        return response.getEntity(String.class);
	  }
	  
	  
	  public void addListenerOnSpinnerItemSelection() {
			spinner = (Spinner) findViewById(R.id.class_id);
			spinner.setOnItemSelectedListener(new CustomOnItemSelectedListener(this, listView, id_search, command, customerID));
		  }
	  ////////////////////// finish spiner ///////////////////////////////////

	  
	  public boolean isOnline() { 
			ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
			return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
		}

	
	@Override
    public void onItemClick(AdapterView<?> a, View v, final int position, long id) 
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
		dialogButton.setText("Cập nhật");
		// if button is clicked, close the custom dialog
		dialogButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
			
				System.out.println("__ "+ line);
				String count2 = count.getText().toString();
				int number = 0;
				if(count2.compareTo("") != 0 && String.valueOf(count2).length() < 10)
					number = Integer.parseInt(count2);
				else{
					Toast.makeText(context, "Hãy nhập số lượng nhiều hơn 0 và ít hơn 0.1 tỷ ", Toast.LENGTH_SHORT).show();
					return;
				}
				TakeOrder_ProductActivity.mProductsMap.get(CustomOnItemSelectedListener.mProviderIndex + "").get(position).setmTotal(number);
				Collections.sort(TakeOrder_ProductActivity.mProductsMap.get(CustomOnItemSelectedListener.mProviderIndex + ""));
				Collections.reverse(TakeOrder_ProductActivity.mProductsMap.get(CustomOnItemSelectedListener.mProviderIndex + ""));
				
				//finish
				dialog.dismiss();
				
				adapter = new ProductArrayAdapter(context, android.R.layout.simple_list_item_1
						, TakeOrder_ProductActivity.mProductsMap.get(CustomOnItemSelectedListener.mProviderIndex + ""));
				listView.setAdapter(adapter);
				
				//SET total line
				Set<String> keyset = TakeOrder_ProductActivity.mProductsMap.keySet();
				line = 0;
				for(String key : keyset){
				for(int i = 0; i < TakeOrder_ProductActivity.mProductsMap.get(key).size(); i++)
					if(TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal() > 0){
						line++;
					}
				}
				total_value.setText(line+"");
				//
			}
		});

		Button dialogButtonNO = (Button) dialog.findViewById(R.id.dialogButtonNO);
		dialogButtonNO.setText("Hủy");
		// if button is clicked, close the custom dialog
		dialogButtonNO.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				//finish
				dialog.dismiss();
			}
			
		});
		dialog.show();
     }
}

