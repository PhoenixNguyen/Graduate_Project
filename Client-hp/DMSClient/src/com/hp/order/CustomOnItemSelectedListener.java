package com.hp.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.Product;

import com.hp.map.TakeOrder_ProductActivity;
import com.hp.map.TakeOrdersDetailManagerActivity;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

public class CustomOnItemSelectedListener implements OnItemSelectedListener{
	
	ListView listView;
	Context context;
	EditText search;
	ProductArrayAdapter adapter;
	String command;
	String customerID;
	
	public static int mProviderIndex = 0;
	
	private boolean mManager;
	
	public CustomOnItemSelectedListener(Context context, ListView listView
			, EditText search, String command, String customerID, boolean pManager){
		this.listView = listView;
		this.context = context;
		this.search = search;
		this.command = command;
		this.customerID= customerID; 
		this.mManager = pManager;
		
	}
	public void onItemSelected(AdapterView<?> parent, View view, int pos,long id) {
//		Toast.makeText(parent.getContext(), 
//			"OnItemSelectedListener : " + parent.getItemAtPosition(pos).toString(),
//			Toast.LENGTH_SHORT).show();
		mProviderIndex = pos;
		String providerID = parent.getItemAtPosition(pos).toString();
		String data;
		if(customerID == null || customerID == "")
			data = providerID;
		else
			data = providerID +"::" + customerID;
		
		System.out.println("____ " + data + "___ " );
		
		addAllProducts();
		
		adapter = new ProductArrayAdapter(context, android.R.layout.simple_list_item_1
				, TakeOrder_ProductActivity.mProductsMap.get(mProviderIndex + ""), mManager);
		listView.setAdapter(adapter);
		//Set total
		if(mManager)
			TakeOrder_ProductActivity.total_value.setText(TakeOrder_ProductActivity.mProductsMap.get(mProviderIndex + "").size()+"");
		//
		
		//Add search listenner
		search.addTextChangedListener(new TextWatcher() {

			@Override
			public void onTextChanged(CharSequence cs, int arg1, int arg2,
					int arg3) {
				// When user changed the Text
				adapter.getFilter().filter(cs);
			}

			@Override
			public void beforeTextChanged(CharSequence arg0, int arg1,
					int arg2, int arg3) {
				// TODO Auto-generated method stub

			}

			@Override
			public void afterTextChanged(Editable arg0) {
				// TODO Auto-generated method stub
			}

		});
	  }
	 
	  public void addAllProducts(){
		if(TakeOrder_ProductActivity.timeLine == true)
				TakeOrder_ProductActivity.mProductsMap.clear();
		else
			return;
		
		for(int k = 0; k< TakeOrder_ProductActivity.providersList.size(); k++){
		//GET
		ClientResponse response = Rest.mService.path("webresources").path(command)
				.accept("application/json")
				.type("application/json").post(ClientResponse.class, TakeOrder_ProductActivity.providersList.get(k).getmID() );
        System.out.println("________________ "+ response.toString());
        if(response.getStatus() != 200){
        	return;
        }
        
        String re = response.getEntity(String.class);
        System.out.println("________________ "+ re);
        
        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        List<Product> productsList = new ArrayList<Product>();
		try {
//				File jsonFile = new File(jsonFilePath);
			productsList = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
					Product.class));
			//System.out.println("++++++++++++++ "+schedule.get(0).getmMaDoiTuong());
		} catch (JsonGenerationException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		//////////////////////////////////////////////////////////////////////////////////////////
		
		
		//If mProductsMap have not contained this key then import this list
		//if(!TakeOrder_ProductActivity.mProductsMap.containsKey(mProviderIndex + "")){
			TakeOrder_ProductActivity.mProductsMap.put(k + "", productsList);
			
			//
			//if add more products for take order
			if(TakeOrder_ProductActivity.add_take_order_detail){
				
				for(int i = 0; i < TakeOrder_ProductActivity.mProductsMap.get(k + "").size(); i++){
					for(int j = 0; j < TakeOrdersDetailManagerActivity.takeOrderDetailList.size(); j++){
						if(TakeOrder_ProductActivity.mProductsMap.get(k + "").get(i).getmProductID()
								.compareTo(TakeOrdersDetailManagerActivity.takeOrderDetailList.get(j).getmProductID()) == 0){
							
							TakeOrder_ProductActivity.mProductsMap.get(k + "").get(i).setmTotal(
									TakeOrdersDetailManagerActivity.takeOrderDetailList.get(j).getmNumber());
							TakeOrder_ProductActivity.mProductsMap.get(k + "").get(i).setmDiscount(
									TakeOrdersDetailManagerActivity.takeOrderDetailList.get(j).getmDiscount());
							
							TakeOrder_ProductActivity.mProductsMap.get(k + "").get(i).setmNote(
									TakeOrdersDetailManagerActivity.takeOrderDetailList.get(j).getmNote());
							
							TakeOrder_ProductActivity.mProductsMap.get(k + "").get(i).setmPromotionalProductAmounts(
									TakeOrdersDetailManagerActivity.takeOrderDetailList.get(j).getmPromotionalProductMount()
									);
							
						}
					}
				}
				
				TakeOrder_ProductActivity.take_order_id = TakeOrdersDetailManagerActivity.order_id;
			}
		//}
		
		//timeline = false for not init again
		TakeOrder_ProductActivity.timeLine = false;
		
		}
		
	  }
	  @Override
	  public void onNothingSelected(AdapterView<?> arg0) {
		// TODO Auto-generated method stub
	  }
}
