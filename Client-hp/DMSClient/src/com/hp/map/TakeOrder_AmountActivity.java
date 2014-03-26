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
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class TakeOrder_AmountActivity extends Activity implements OnClickListener{
	
	private Context context = this;
	
	private EditText total_value;
	private EditText document_value;
	private EditText discount_value;
	private EditText tax_value;
	private EditText sum_value;
	private EditText dc2_value;
	private EditText note_value;
	
	private EditText customer_id;
	private EditText customer_name;
	
	private EditText discount_percent;
	
	private Button save;
	float pricesTotal;
	
	private int numberTotal;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.amount);
		
		customer_id = (EditText)findViewById(R.id.customer_id);
		customer_name = (EditText)findViewById(R.id.customer_name);
		
		total_value = (EditText)findViewById(R.id.total_value);
		document_value = (EditText)findViewById(R.id.document_value);
		
		discount_percent = (EditText)findViewById(R.id.discount_percent);
		discount_value = (EditText)findViewById(R.id.discount_value);
		sum_value = (EditText)findViewById(R.id.sum_value);
	
		customer_id.setText(CustomerMapActivity.mSelectedCustomer.getmMaDoiTuong());
		customer_name.setText(CustomerMapActivity.mSelectedCustomer.getmDoiTuong());
		
		save = (Button)findViewById(R.id.save);
		
		pricesTotal = 0;
		numberTotal = 0;
		for(int i = 0; i < TakeOrder_ReViewActivity.takeOrderDetailList.size(); i++){
			numberTotal = numberTotal +  TakeOrder_ReViewActivity.takeOrderDetailList.get(i).getmNumber();
			pricesTotal = pricesTotal +  TakeOrder_ReViewActivity.takeOrderDetailList.get(i).getmPriceTotal() ;
					
		}
		
		if(numberTotal == 0)
			return;
		
		document_value.setText(TakeOrder_ReViewActivity.takeOrderDetailList.size() + " sản phẩm và " + numberTotal + " đầu mục");
		//sum_value.setText(pricesTotal + "");
		total_value.setText(pricesTotal + "");
		sum_value.setText(pricesTotal+"");
		
		save.setOnClickListener(this);
	}
	
	@Override
	protected void onResume() {

	   super.onResume();
	   this.onCreate(null);
	}

	public void setDiscount(View view){
		final Dialog dialog = new Dialog(context);
		dialog.setContentView(R.layout.order_product_dialog);
		dialog.setTitle("Đặt giảm giá");
		
		final EditText count = (EditText)dialog.findViewById(R.id.count);
		count.setHint("Phần trăm");
		Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
		dialogButton.setText("Cập nhật");
		// if button is clicked, close the custom dialog
		dialogButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
			
				String count2 = count.getText().toString();
				int number = 0;
				if(count2.compareTo("") != 0)
					number = Integer.parseInt(count2);
				else
					return;
				
				discount_percent.setText(number+"");
				discount_value.setText(pricesTotal*number/100 + "");
				
				//set sume
				pricesTotal = pricesTotal - pricesTotal*number/100;
				
				sum_value.setText(pricesTotal+"");
				dialog.dismiss();
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
	
	
	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		if(v == save){
			//Create order:
			if(numberTotal == 0)
				return;
			
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
					, pricesTotal, pricesTotal
					, Integer.parseInt(discount_percent.getText().toString())
					, 0, Timestamp.valueOf(date2), Timestamp.valueOf(date2)
					, Rest.mStaffID, Rest.mStaffID);
			
			//Set order ID
			for(int i = 0; i < TakeOrder_ReViewActivity.takeOrderDetailList.size(); i++){
				TakeOrder_ReViewActivity.takeOrderDetailList.get(i).setmTakeOrderID(orderID);
			}
			
			// Send
			ObjectMapper mapper = new ObjectMapper();
	        String TakeOrderStr = new String();
	        String orderDetailList = new String();

			try {

				TakeOrderStr = mapper.writeValueAsString(order);
				orderDetailList = mapper.writeValueAsString(TakeOrder_ReViewActivity.takeOrderDetailList);
				
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
	            resetValue();
	            
	        }else
	        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
	        
	        System.out.println("Server response .... \n");
	        System.out.println("input 0: " + output2);
	        
	        ////////////////////////// save order detail//////////////////////////////////
	        
		}
	}
	
	public void resetValue(){
		TakeOrder_ProductActivity.mProductsMap.clear();
		TakeOrder_ReViewActivity.takeOrderDetailList.clear();
		pricesTotal = 0;
		onResume();
	}
}
