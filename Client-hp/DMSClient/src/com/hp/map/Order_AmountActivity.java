package com.hp.map;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hp.domain.TakeOrder;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Order_AmountActivity extends Activity implements OnClickListener{
	
	private Context context = this;
	
	private EditText total_value;
	private EditText document_value;
	private EditText discount_value;
	private EditText tax_value;
	private EditText sum_value;
	private EditText dc2_value;
	private EditText note_value;
	
	private Button save;
	float pricesTotal;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.amount);
		
		total_value = (EditText)findViewById(R.id.total_value);
		document_value = (EditText)findViewById(R.id.document_value);
		discount_value = (EditText)findViewById(R.id.discount_value);
		tax_value = (EditText)findViewById(R.id.tax_value);
		sum_value = (EditText)findViewById(R.id.sum_value);
		dc2_value = (EditText)findViewById(R.id.dc2_value);
		note_value = (EditText)findViewById(R.id.note_value);
		
		save = (Button)findViewById(R.id.save);
		
		int numberTotal = 0;
		pricesTotal = 0;
		for(int i = 0; i < Order_ProductActivity.ordersDetailList.size(); i++){
			numberTotal = numberTotal +  Order_ProductActivity.ordersDetailList.get(i).getmNumber();
			pricesTotal = pricesTotal +  Order_ProductActivity.ordersDetailList.get(i).getmAfterOrderPrice() 
					* Order_ProductActivity.ordersDetailList.get(i).getmNumber() ;
		}
		document_value.setText(Order_ProductActivity.ordersDetailList.size() + " sản phẩm và " + numberTotal + " mục");
		sum_value.setText(pricesTotal + "");
		
		save.setOnClickListener(this);
	}
	
	@Override
	protected void onResume() {

	   super.onResume();
	   this.onCreate(null);
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		if(v == save){
			//Create order:
			
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new  Date();
			String date2 = df.format(date);
			
			String orderID = CustomerMapActivity.mSelectedCustomer.getmMaDoiTuong()+"-" + date2;
			
			TakeOrder order = new TakeOrder(orderID
					, Timestamp.valueOf(date2), Timestamp.valueOf(date2)
					, CustomerMapActivity.mSelectedCustomer.getmMaDoiTuong()
					, CustomerMapActivity.mSelectedCustomer.getmDoiTuong()
					, CustomerMapActivity.mSelectedCustomer.getmDiaChi()
					, CustomerMapActivity.mSelectedCustomer.getmDienThoai()
					, CustomerMapActivity.mSelectedCustomer.getmDiaChi()
					, ""
					
					, 0
					, pricesTotal, pricesTotal, 0
					, 0, Timestamp.valueOf(date2), Timestamp.valueOf(date2)
					, Rest.mStaffID, Rest.mStaffID);
			
			//Set order ID
			for(int i = 0; i < Order_ProductActivity.ordersDetailList.size(); i++){
				Order_ProductActivity.ordersDetailList.get(i).setmLine(i+1);
				Order_ProductActivity.ordersDetailList.get(i).setmTakeOrderID(orderID);
			}
			
			// Send
			ObjectMapper mapper = new ObjectMapper();
	        String TakeOrderStr = new String();
	        String orderDetailList = new String();

			try {

				TakeOrderStr = mapper.writeValueAsString(order);
				orderDetailList = mapper.writeValueAsString(Order_ProductActivity.ordersDetailList);
				
			} catch (JsonGenerationException ex) {

				ex.printStackTrace();

			} catch (JsonMappingException ex) {

				ex.printStackTrace();

			} catch (IOException ex) {

				ex.printStackTrace();

			}
	       
			//Order ---------------------------------------------------------------
			ClientResponse response = Rest.mService.path("webresources").path("putTakeOrder").accept("application/json")
			.type("application/json").post(ClientResponse.class, TakeOrderStr);

	        String output = response.toString();
	        System.out.println("input 1: " + output);
	        
	        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
	            Toast.makeText(context, "Đang lưu hóa đơn", Toast.LENGTH_SHORT).show();
	            // refresh customers
	            
	            
	        }else
	        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
	        
	        System.out.println("Server response .... \n");
	        System.out.println("input 0: " + output);
	        
	        //Order detail-------------------------------------------------------------
	        ClientResponse response2 = Rest.mService.path("webresources").path("putOrdersDetailList").accept("application/json")
	    			.type("application/json").post(ClientResponse.class, orderDetailList);

	        String output2 = response2.toString();
	        System.out.println("input 1: " + output2);
	        
	        if ((response2.getStatus() == 200) && (response2.getEntity(String.class).compareTo("0") != 0)) {
	            Toast.makeText(context, "Đang lưu chi tiết hóa đơn", Toast.LENGTH_SHORT).show();
	            // refresh customers
	            
	            
	        }else
	        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
	        
	        System.out.println("Server response .... \n");
	        System.out.println("input 0: " + output2);
	        
	        ////////////////////////// save order detail//////////////////////////////////
	        
		}
	}
}
