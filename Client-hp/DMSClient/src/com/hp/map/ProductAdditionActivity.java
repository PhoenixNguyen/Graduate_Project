package com.hp.map;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hp.domain.Customer;
import com.hp.domain.Product;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class ProductAdditionActivity extends Activity implements OnClickListener{
	
	public Context context = this;
		
	
	public EditText product_id;
	public EditText product_name;
	public EditText product_barcode;
	public EditText product_brand;
	public EditText product_origin;
	public EditText product_packing;
	public EditText product_quantification;
	public EditText product_tax;
	public EditText product_import_price;
	
	public EditText product_export_price;
	//public EditText product_provider;
	public EditText product_description;
	public EditText product_image_path;
	
	public TextView title;
	public ImageButton import_cus;
	
	public Spinner product_provider;
	
	public String provider_selected;
	
	protected void onCreate(Bundle bundle){
		super.onCreate(bundle);
		setContentView(R.layout.product_addition);
		
		title = (TextView)findViewById(R.id.title);
		
		product_id = (EditText)findViewById(R.id.product_id);
		product_name = (EditText)findViewById(R.id.product_name);
		product_barcode = (EditText)findViewById(R.id.product_barcode);
		product_brand = (EditText)findViewById(R.id.product_origin);
		product_origin = (EditText)findViewById(R.id.product_origin);
		product_packing = (EditText)findViewById(R.id.product_packing);
		product_quantification = (EditText)findViewById(R.id.product_quantification);
		product_tax = (EditText)findViewById(R.id.product_tax);
		product_import_price = (EditText)findViewById(R.id.product_import_price);
		
		product_export_price = (EditText)findViewById(R.id.product_export_price);
		
		product_provider = (Spinner)findViewById(R.id.product_provider);
		
		product_description = (EditText)findViewById(R.id.product_description);
		//product_image_path = (EditText)findViewById(R.id.product_image_path);
		
		import_cus = (ImageButton)findViewById(R.id.import_cus);
		import_cus.setOnClickListener(this);
		
		final List<String> list = new ArrayList<String>();
		for(int i = 0; i < ProductManagerActivity.providersList.size(); i++){
	
			//Add
			list.add(ProductManagerActivity.providersList.get(i).getmID());
		}
		
		
		ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this,
				android.R.layout.simple_spinner_item, list);
		dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		product_provider.setAdapter(dataAdapter);
		product_provider.setOnItemSelectedListener(new OnItemSelectedListener() {
			public void onItemSelected(AdapterView<?> parent, View view, int pos,long id) {
				provider_selected = list.get(pos);
			}

			@Override
			public void onNothingSelected(AdapterView<?> arg0) {
				// TODO Auto-generated method stub
				
			}
		});
	}
	
	public void onClick(View v){
		if(v == import_cus){
			String id = product_id.getText().toString();
			String name = product_name.getText().toString();
			String barcode = product_barcode.getText().toString();
			String brand = product_brand.getText().toString();
			String origin = product_origin.getText().toString();
			String packing = product_packing.getText().toString();
			String quantification = product_quantification.getText().toString();
			String tax = product_tax.getText().toString();
			String import_price = product_import_price.getText().toString();
			
			String export_price = product_export_price.getText().toString();
			//String provider = product_provider.getText().toString();
			String description = product_description.getText().toString();
			//String note = product_image_path.getText().toString();
			
			float tax2 = 0;
			float im_pr2 = 0;
			float ex_pr2 = 0;
			
			if(tax!= null && tax.compareTo("") != 0)
				tax2 = Float.parseFloat(tax);
			if(import_price!= null && import_price.compareTo("") != 0)
				im_pr2 = Float.parseFloat(import_price);
			if(export_price!= null && export_price.compareTo("") != 0)
				ex_pr2 = Float.parseFloat(export_price);
			
			Product product = new Product(barcode, id
					, name, brand
					, origin, packing
					, quantification, tax2
					, im_pr2, ex_pr2
					, provider_selected, description
					, "");
			System.out.println("provider_selected: "+provider_selected);
			insertProduct(product);
		}
	}
	
	public void insertProduct(Product product){
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
		ClientResponse response = Rest.mService.path("webresources").path("insertProduct").accept("application/json")
		.type("application/json").post(ClientResponse.class, cusStr);

        String output = response.toString();
        System.out.println("input 1: " + output);
        
        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
            Toast.makeText(context, "Đã lưu ", Toast.LENGTH_SHORT).show();
            
//            //Refresh
//            if(Rest.getCustomersList(Rest.mStaffID) == true){
//	            // open detail
//	            Intent t = new Intent(context, CustomerMapActivity.class);
//		        t.putExtra("POSITION_CLICK", customer.getmMaDoiTuong());
//		        
//		        startActivity(t);
//            }
            
        }else
        	Toast.makeText(context, "Không thể lưu dữ liệu. Hãy xem lại kết nối, mã hàng không được trống và không trùng với hàng khác", Toast.LENGTH_SHORT).show();
        
        System.out.println("Server response .... \n");
        System.out.println("input 0: " + output);
	}

	public boolean isOnline() { 
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
		return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
	}

}
