package com.hp.map;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hp.domain.Customer;
import com.hp.map.R;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

public class CustomerAdditionActivity extends Activity implements OnClickListener{
	
	public Context context = this;
	
	public EditText cus_id;
	public EditText cus_name;
	public EditText cus_state;
	public EditText cus_line;
	public EditText cus_area;
	public EditText cus_address;
	public EditText cus_phone;
	public EditText cus_fax;
	public EditText cus_note;
	
	public TextView title;
	public ImageButton import_cus;
	
	protected void onCreate(Bundle bundle){
		super.onCreate(bundle);
		setContentView(R.layout.customer_addition);
		
		title = (TextView)findViewById(R.id.title);
		
		cus_id = (EditText)findViewById(R.id.cus_id);
		cus_name = (EditText)findViewById(R.id.cus_name);
		cus_state = (EditText)findViewById(R.id.cus_state);
		cus_line = (EditText)findViewById(R.id.cus_line);
		cus_area = (EditText)findViewById(R.id.cus_area);
		cus_address = (EditText)findViewById(R.id.cus_address);
		cus_phone = (EditText)findViewById(R.id.cus_phone);
		cus_fax = (EditText)findViewById(R.id.cus_fax);
		cus_note = (EditText)findViewById(R.id.cus_note);
		
		import_cus = (ImageButton)findViewById(R.id.import_cus);
		import_cus.setOnClickListener(this);
			
		
	}
	
	public void onClick(View v){
		if(v == import_cus){
			String id = cus_id.getText().toString();
			String name = cus_name.getText().toString();
			String state = cus_state.getText().toString();
			String line = cus_line.getText().toString();
			String area = cus_area.getText().toString();
			String address = cus_address.getText().toString();
			String phone = cus_phone.getText().toString();
			String fax = cus_fax.getText().toString();
			String note = cus_note.getText().toString();
			
			Customer customer = new Customer(id, name
					, Rest.mStaffID, state
					, line, area
					, address, phone
					, fax, note);
			//insert
			insertCustomer(customer);
		}
	}
	
	public void insertCustomer(Customer customer){
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
		ClientResponse response = Rest.mService.path("webresources").path("insertCustomer").accept("application/json")
		.type("application/json").post(ClientResponse.class, cusStr);

        String output = response.toString();
        System.out.println("input 1: " + output);
        
        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
            Toast.makeText(context, "Đã lưu ", Toast.LENGTH_SHORT).show();
            
            //Refresh
            if(Rest.getCustomersList(Rest.mStaffID) == true){
	            // open detail
	            Intent t = new Intent(context, CustomerMapActivity.class);
		        t.putExtra("POSITION_CLICK", customer.getmMaDoiTuong());
		        
		        startActivity(t);
            }
            
        }else
        	Toast.makeText(context, "Không thể lưu dữ liệu. Hãy xem lại kết nối, mã KH không được trống và không trùng với khách hàng khác", Toast.LENGTH_SHORT).show();
        
        System.out.println("Server response .... \n");
        System.out.println("input 0: " + output);
	}

	public boolean isOnline() { 
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
		return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
	}
	
}