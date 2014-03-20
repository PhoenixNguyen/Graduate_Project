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
	
	public CustomOnItemSelectedListener(Context context, ListView listView, EditText search){
		this.listView = listView;
		this.context = context;
		this.search = search;
	}
	public void onItemSelected(AdapterView<?> parent, View view, int pos,long id) {
//		Toast.makeText(parent.getContext(), 
//			"OnItemSelectedListener : " + parent.getItemAtPosition(pos).toString(),
//			Toast.LENGTH_SHORT).show();
		
		String providerID = parent.getItemAtPosition(pos).toString();
		//GET
		ClientResponse response = Rest.mService.path("webresources").path("getProductsList")
				.accept("application/json")
				.type("application/json").post(ClientResponse.class, providerID);
        System.out.println("________________ "+ response.toString());
        if(response.getStatus() != 200){
        	return;
        }
        
        String re = response.getEntity(String.class);
        System.out.println("________________ "+ re);
        
        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        //List<Product> productsList = new ArrayList<Product>();
		try {
//			File jsonFile = new File(jsonFilePath);
			TakeOrder_ProductActivity.mProductsList = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
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
		
		adapter = new ProductArrayAdapter(context, android.R.layout.simple_list_item_1, TakeOrder_ProductActivity.mProductsList);
		listView.setAdapter(adapter);
		
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
	 
	  @Override
	  public void onNothingSelected(AdapterView<?> arg0) {
		// TODO Auto-generated method stub
	  }
}
