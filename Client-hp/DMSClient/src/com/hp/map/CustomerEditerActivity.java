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
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

public class CustomerEditerActivity extends CustomerAdditionActivity {
	
	
	protected void onCreate(Bundle bundle){
		super.onCreate(bundle);
		setContentView(R.layout.customer_addition);
		
		cus_id = (EditText)findViewById(R.id.cus_id);
		cus_name = (EditText)findViewById(R.id.cus_name);
		cus_state = (EditText)findViewById(R.id.cus_state);
		cus_line = (EditText)findViewById(R.id.cus_line);
		cus_area = (EditText)findViewById(R.id.cus_area);
		cus_address = (EditText)findViewById(R.id.cus_address);
		cus_phone = (EditText)findViewById(R.id.cus_phone);
		cus_fax = (EditText)findViewById(R.id.cus_fax);
		cus_note = (EditText)findViewById(R.id.cus_note);
		
		cus_id.setEnabled(false);
		
		cus_id.setText(CustomerListActivity.customer.getMMaDoiTuong());
		cus_name.setText(CustomerListActivity.customer.getMDoiTuong());
		cus_state.setText(CustomerListActivity.customer.getMTinhThanh());
		cus_line.setText(CustomerListActivity.customer.getMTuyenBanHangThu() + "");
		cus_area.setText(CustomerListActivity.customer.getMX());
		cus_address.setText(CustomerListActivity.customer.getMDiaChi());
		cus_phone.setText(CustomerListActivity.customer.getMDienThoai() +"");
		cus_fax.setText(CustomerListActivity.customer.getMFax());
		cus_note.setText(CustomerListActivity.customer.getMGhiChu());
		
	}
		
	public void getCustomer(){
			//String id = cus_id.getText().toString();
			String name = cus_name.getText().toString();
			String state = cus_state.getText().toString();
			String line = cus_line.getText().toString();
			String area = cus_area.getText().toString();
			String address = cus_address.getText().toString();
			String phone = cus_phone.getText().toString();
			String fax = cus_fax.getText().toString();
			String note = cus_note.getText().toString();
			
			CustomerListActivity.customer.setMDiaChi(address);
			CustomerListActivity.customer.setMDienThoai(phone);
			CustomerListActivity.customer.setMDoiTuong(name);
			CustomerListActivity.customer.setMFax(fax);
			CustomerListActivity.customer.setMGhiChu(note);
			CustomerListActivity.customer.setMTinhThanh(state);
			CustomerListActivity.customer.setMX(area);
			CustomerListActivity.customer.setMTuyenBanHangThu(line);
			//insert
			insertCustomer(CustomerListActivity.customer);
		
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
		ClientResponse response = Rest.mService.path("webresources").path("updateCustomer").accept("application/json")
		.type("application/json").post(ClientResponse.class, cusStr);

        String output = response.toString();
        System.out.println("input 1: " + output);
        
        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
            Toast.makeText(context, "Đã lưu ", Toast.LENGTH_SHORT).show();
            
            // open detail
            Intent t = new Intent(context, CustomerMapActivity.class);
	        t.putExtra("POSITION_CLICK", customer.getMMaDoiTuong());
	        
	        startActivity(t);
            
        }else
        	Toast.makeText(context, "Không thể lưu dữ liệu. Hãy xem lại kết nối, mã KH không được trống và không trùng với khách hàng khác", Toast.LENGTH_SHORT).show();
        
        System.out.println("Server response .... \n");
        System.out.println("input 0: " + output);
	}

	
}
