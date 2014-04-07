package com.hp.map;

import java.io.IOException;
import java.util.Arrays;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hp.customer.CustomerArrayAdapter;
import com.hp.domain.Customer;
import com.hp.order.ProductArrayAdapter;
import com.hp.rest.Rest;
import com.hp.schedule.ListViewSchedules;
import com.sun.jersey.api.client.ClientResponse;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;

public class CustomerListActivity extends MainMenuActivity{
	
	private ListView listView;
	private Context context = this;
	
	private EditText input_text;
	
	private CustomerArrayAdapter customerAdapter;
	
	public static Customer customer;
	
	@SuppressLint("NewApi")
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.customer_list);
		
		// Set up action bar.
//        final ActionBar actionBar = getActionBar();
//        actionBar.setDisplayShowHomeEnabled(false);
//        actionBar.setDisplayShowTitleEnabled(false);
        
		input_text = (EditText)findViewById(R.id.input_text);
		
		input_text.addTextChangedListener(new TextWatcher() {
			
			@Override
			public void onTextChanged(CharSequence s, int start, int before, int count) {
				// TODO Auto-generated method stub
				customerAdapter.getFilter().filter(s);
			}
			
			@Override
			public void beforeTextChanged(CharSequence s, int start, int count,
					int after) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void afterTextChanged(Editable s) {
				// TODO Auto-generated method stub
				
			}
		});
		
		addListView();
	}

	public void addListView(){
		//List view
		listView = (ListView)findViewById(R.id.list);
		customerAdapter = new CustomerArrayAdapter(context, Rest.customerList);
		listView.setAdapter(customerAdapter);
			
		listView.setOnItemClickListener(new OnItemClickListener()
		{
		     @Override
		     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
		     {
		    	customer = (Customer) listView.getAdapter().getItem(position);
		    	
		    	//open dialog
		    	choiceDialog(customer);
		      }
		});
	}
	
	public void choiceDialog(final Customer customer){
		final Dialog dialog = new Dialog(context);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View v = li.inflate(R.layout.customer_comfirm_dialog, null, false);
		dialog.setContentView(v);
		dialog.setTitle("Lựa chọn của bạn");
		
		final Button edit = (Button)dialog.findViewById(R.id.edit);
		final Button detail = (Button)dialog.findViewById(R.id.detail);
		final Button delete = (Button)dialog.findViewById(R.id.delete);
		final Button cancel = (Button)dialog.findViewById(R.id.cancel);
		
		edit.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				startActivity(new Intent(context, CustomerEditerActivity.class));
				
			}
		});
		
		detail.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
				        Intent t = new Intent(context, CustomerMapActivity.class);
				        t.putExtra("POSITION_CLICK", customer.getmMaDoiTuong());
				        
				        startActivity(t);
			}
		});
		
		delete.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
						comfirmDeleteDialog(customer);
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
	
	public void comfirmDeleteDialog(final Customer customer){
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
				deleteCustomer(customer);
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
	
	public void insertCustomer(View view){
		startActivity(new Intent(this, CustomerAdditionActivity.class));
		
	}
	
	public void deleteCustomer(Customer customer){
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

			cusStr = mapper.writeValueAsString(customer);
			
		} catch (JsonGenerationException ex) {

			ex.printStackTrace();

		} catch (JsonMappingException ex) {

			ex.printStackTrace();

		} catch (IOException ex) {

			ex.printStackTrace();

		}
       
		//Order ---------------------------------------------------------------
		ClientResponse response = Rest.mService.path("webresources").path("deleteCustomer").accept("application/json")
		.type("application/json").post(ClientResponse.class, cusStr);

        String output = response.toString();
        System.out.println("input 1: " + output);
        
        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
            Toast.makeText(context, "Đã xóa ", Toast.LENGTH_SHORT).show();
            
            // Refresh
            if(Rest.getCustomersList(Rest.mStaffID) == true){
	            customerAdapter = new CustomerArrayAdapter(context, Rest.customerList);
	    		listView.setAdapter(customerAdapter);
            }
            
            
        }else
        	Toast.makeText(context, "Không thể xóa dữ liệu. Khách hàng này đã tồn tại ở dữ liệu khác!", Toast.LENGTH_SHORT).show();
        
        System.out.println("Server response .... \n");
        System.out.println("input 0: " + output);
	}
	
	@SuppressLint("NewApi")
	static <T> T[] append(T[] arr, T element) {
        final int N = arr.length;
        arr = Arrays.copyOf(arr, N + 1);
        arr[N] = element;
        return arr;
    }
	
	public boolean isOnline() { 
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
		return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
	}
}
