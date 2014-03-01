package com.hp.order;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.Product;
import com.hp.domain.Provider;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListView;
import android.widget.Toast;

public class CustomOnItemSelectedListener implements OnItemSelectedListener{
	
	ListView listView;
	Context context;
	public CustomOnItemSelectedListener(Context context, ListView listView){
		this.listView = listView;
		this.context = context;
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
        List<Product> productsList = new ArrayList<Product>();
		try {
//			File jsonFile = new File(jsonFilePath);
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
		
//		String[] PRODUCT;
//		if(parent.getItemAtPosition(pos).toString().compareTo("fruit") == 0)
//			PRODUCT = 
//					new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
//									"Apple", "Avocado",
//									"Apple", "Avocado", "Banana", "Blueberry", "Coconut"};
//		else
//			PRODUCT = 
//			new String[] {"Android", "iOS", "WindowsMobile", "Blackberry",
//				"Android", "iOS", "WindowsMobile"};
		listView.setAdapter(new ProductArrayAdapter(context, android.R.layout.simple_list_item_1, productsList));
	  }
	 
	  @Override
	  public void onNothingSelected(AdapterView<?> arg0) {
		// TODO Auto-generated method stub
	  }
}
