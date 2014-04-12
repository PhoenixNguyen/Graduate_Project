package com.hp.map;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hp.customer.CustomerArrayAdapter;
import com.hp.domain.Customer;
import com.hp.domain.Product;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.Toast;

public class ProductManagerActivity extends TakeOrder_ProductActivity{
	
	public static Product selectedValue;
	public void init(){
		//Reset values and init it
		mProductsMap.clear();
		timeLine = true;
		
		title.setText("Quản lý sản phẩm");
		title.setVisibility(View.GONE);
		
		command = "getProductsList";
		customerID = "";
		
		mManager = true;
	}
	
	public boolean onCreateOptionsMenu(Menu menu){
		MenuInflater inflater = getMenuInflater();
		inflater.inflate(R.menu.order_menu, menu);
		
		return true;
	}
	
	@Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Take appropriate action for each action item click
        switch (item.getItemId()) {
//        case R.id.action_search:
//        	
//            return true;
        case R.id.action_add:
        	insertProduct();
            return true;
               
        default:
            return super.onOptionsItemSelected(item);
        }
    }
	
	public void insertProduct(){
		startActivity(new Intent(this, ProductAdditionActivity.class));
	}
	
	@Override
    public void onItemClick(AdapterView<?> a, View v, final int position, long id) 
    {
 		selectedValue = (Product) listView.getAdapter().getItem(position);
 		
 		final Dialog dialog = new Dialog(context);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View view = li.inflate(R.layout.customer_comfirm_dialog, null, false);
		dialog.setContentView(view);
		dialog.setTitle("Lựa chọn của bạn");
		
		final Button edit = (Button)dialog.findViewById(R.id.edit);
		final Button detail = (Button)dialog.findViewById(R.id.detail);
		final Button delete = (Button)dialog.findViewById(R.id.delete);
		final Button cancel = (Button)dialog.findViewById(R.id.cancel);
		
		edit.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				startActivity(new Intent(context, ProductEditerActivity.class));
				dialog.dismiss();
			}
		});
		
		detail.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						startActivity(new Intent(context, ProductEditerActivity.class));
						dialog.dismiss();
			}
		});
		
		delete.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						comfirmDeleteDialog(selectedValue);
						dialog.dismiss();
					}
				});
		
		cancel.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});

		
		dialog.show();
    }
	
	public void comfirmDeleteDialog(final Product product){
		final Dialog dialog = new Dialog(context);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View v = li.inflate(R.layout.customer_comfirm_dialog, null, false);
		dialog.setContentView(v);
		dialog.setTitle("Lựa chọn của bạn");
		
		final Button edit = (Button)dialog.findViewById(R.id.edit);
		final Button detail = (Button)dialog.findViewById(R.id.detail);
		final Button delete = (Button)dialog.findViewById(R.id.delete);
		delete.setVisibility(View.GONE);
		final Button cancel = (Button)dialog.findViewById(R.id.cancel);
		cancel.setVisibility(View.GONE);
		
		edit.setText("Chấp nhận");
		detail.setText("Hủy");
		
		edit.setOnClickListener(new OnClickListener() {
					
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				deleteProduct(product);
				dialog.dismiss();
			}
		});
		detail.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				dialog.dismiss();
			}
		});
		
		dialog.show();
	}
	
	public void deleteProduct(Product product){
		// Check the internet
		if(isOnline()){
			System.out.println("Internet access!!____________________");
		}
		else{
			System.out.println("NO Internet access!!____________________");
			Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
			return;
		}
		
		// Send
		ObjectMapper mapper = new ObjectMapper();
        String cusStr = new String();

		try {

			cusStr = mapper.writeValueAsString(product);
			
		} catch (JsonGenerationException ex) {

			ex.printStackTrace();

		} catch (JsonMappingException ex) {

			ex.printStackTrace();

		} catch (IOException ex) {

			ex.printStackTrace();

		}
       
		//Order ---------------------------------------------------------------
		ClientResponse response = Rest.mService.path("webresources").path("deleteProduct").accept("application/json")
		.type("application/json").post(ClientResponse.class, cusStr);

        String output = response.toString();
        System.out.println("input 1: " + output);
        
        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
            Toast.makeText(context, "Đã xóa ", Toast.LENGTH_SHORT).show();
            
            // Refresh
            onResume();
            
            
        }else
        	Toast.makeText(context, "Không thể xóa dữ liệu. Khách hàng này đã tồn tại ở dữ liệu khác!", Toast.LENGTH_SHORT).show();
        
        System.out.println("Server response .... \n");
        System.out.println("input 0: " + output);
	}

}
