package com.hp.map;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.DecimalFormat;
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
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

public class TakeOrder_AmountActivity extends MainMenuActivity implements OnClickListener{
	
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
	float discount;
	
	private int numberTotal;
	
	public String putData;
	public String putDataDetail;
	
	public TextView title;
	public TextView sum;
	public LinearLayout linearlayout_discount;
	
	public EditText note;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.amount);
		
		title = (TextView)findViewById(R.id.title);
		sum = (TextView)findViewById(R.id.sum);
		linearlayout_discount = (LinearLayout)findViewById(R.id.linearlayout_discount);

		customer_id = (EditText)findViewById(R.id.customer_id);
		customer_name = (EditText)findViewById(R.id.customer_name);
		
		total_value = (EditText)findViewById(R.id.total_value);
		document_value = (EditText)findViewById(R.id.document_value);
		
		discount_percent = (EditText)findViewById(R.id.discount_percent);
		discount_value = (EditText)findViewById(R.id.discount_value);
		sum_value = (EditText)findViewById(R.id.sum_value);
		
		note = (EditText)findViewById(R.id.note);
	
		save = (Button)findViewById(R.id.save);
		
		//init something
		init();
				
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
		total_value.setText((new BigDecimal(pricesTotal)).toString());
		sum_value.setText((new BigDecimal(pricesTotal)).toString());
		
		save.setOnClickListener(this);
		
		

		if(!TakeOrder_ProductActivity.add_take_order_detail && CustomerMapActivity.mSelectedCustomer != null){
			customer_id.setText(CustomerMapActivity.mSelectedCustomer.getmMaDoiTuong());
			customer_name.setText(CustomerMapActivity.mSelectedCustomer.getmDoiTuong());
		}
		else
		{
			if(TakeOrdersManagerActivity.takeOrderList != null && TakeOrdersManagerActivity.takeOrderList.size() > 0)
			for(int i = 0; i < TakeOrdersManagerActivity.takeOrderList.size(); i++){
				System.out.println("__++"+TakeOrdersManagerActivity.takeOrderList.get(i).getmID() +" -- " + TakeOrder_ProductActivity.take_order_id);
	        	if(TakeOrdersManagerActivity.takeOrderList.get(i).getmID().compareTo(                      //TakeOrdersDetailManagerActivity.takeOrderDetailList.get(j) 
	        			TakeOrder_ProductActivity.take_order_id) == 0){
	        		System.out.println(" ACC ");
	        		customer_id.setText(TakeOrdersManagerActivity.takeOrderList.get(i).getmID());
	    			customer_name.setText(TakeOrdersManagerActivity.takeOrderList.get(i).getmCustomerName());
	    			
	    			//Show discount
	    			discount_percent.setText(TakeOrdersManagerActivity.takeOrderList.get(i).getmDiscount() +"");
	    			//set discount
					discount = (float)Math.ceil(pricesTotal*TakeOrdersManagerActivity.takeOrderList.get(i).getmDiscount()/100);
					
					discount_value.setText((new BigDecimal(discount)).toString());
					
					//set sume
					sum_value.setText((new BigDecimal(pricesTotal - discount)).toString());
					
					note.setText(TakeOrdersManagerActivity.takeOrderList.get(i).getmNote());
	        		break;
	        	}
	        }
			
			
		}
		
	}
	
	public void init(){
		putData = "putTakeOrder";
		putDataDetail = "putOrdersDetailList";
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
		
		TextView text0 = (TextView) dialog.findViewById(R.id.name);
		text0.setVisibility(View.GONE);
		TextView price0 = (TextView) dialog.findViewById(R.id.price);
		price0.setVisibility(View.GONE);
		EditText discount0 = (EditText) dialog.findViewById(R.id.discount);
		discount0.setVisibility(View.GONE);
		EditText note0 = (EditText) dialog.findViewById(R.id.note);
		note0.setVisibility(View.GONE);
		
		TextView product_name = (TextView) dialog.findViewById(R.id.product_name);
		product_name.setVisibility(View.GONE);
		TextView product_price = (TextView) dialog.findViewById(R.id.product_price);
		product_price.setVisibility(View.GONE);
		
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
				if(count2.compareTo("") != 0 && String.valueOf(count2).length() < 10)
					number = Integer.parseInt(count2);
				else{
					Toast.makeText(context, "Hãy nhập số lượng nhiều hơn 0 và ít hơn 0.1 tỷ ", Toast.LENGTH_SHORT).show();
					return;
				}
				
				//set discount
				discount = (float)Math.ceil(pricesTotal*number/100);
				
				discount_percent.setText(number+"");
				discount_value.setText((new BigDecimal(discount)).toString());
				
				//set sume
				sum_value.setText((new BigDecimal(pricesTotal - discount)).toString());
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
			
			//If add more products into take order ========================================================
			if(TakeOrder_ProductActivity.add_take_order_detail){
					//Set order ID
					for(int i = 0; i < TakeOrder_ReViewActivity.takeOrderDetailList.size(); i++){
						
						TakeOrder_ReViewActivity.takeOrderDetailList.get(i).setmTakeOrderID(
								TakeOrder_ProductActivity.take_order_id);
					}
					
					// Send
					ObjectMapper mapper = new ObjectMapper();
			        String orderDetailList = new String();
			        String TakeOrderStr = new String();
			        TakeOrder order = null;
			        for(int i = 0; i < TakeOrdersManagerActivity.takeOrderList.size(); i++){
			        	if(TakeOrdersManagerActivity.takeOrderList.get(i).getmID().compareTo(
			        			TakeOrder_ProductActivity.take_order_id) == 0){
			        		order = TakeOrdersManagerActivity.takeOrderList.get(i);
			        		order.setmDiscount(Float.parseFloat(discount_percent.getText().toString()));
			        		order.setmAfterPrivate(pricesTotal - discount);
			        		order.setmNote(note.getText().toString());
			        		
			        		break;
			        	}
			        }
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
					
					String update_main_command = "updateAddingTakeOrder";
					String update_detail_command = "addOrdersDetailForTakeOrder";
					
					//If update Inventory
					if(InventoryManagerDetailActivity.add_inventory_detail){
						update_main_command = "updateAddingInventory";
						update_detail_command = "updateAddingInventoryDetail";
					}
					
					//Order ---------------------------------------------------------------
					ClientResponse response = Rest.mService.path("webresources").path(update_main_command).accept("application/json")
					.type("application/json").post(ClientResponse.class, TakeOrderStr);

			        String output = response.toString();
			        System.out.println("input 1: " + output);
			        
			        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
			            Toast.makeText(context, "Đã lưu ", Toast.LENGTH_SHORT).show();
			            // refresh customers
			            
			            
			        }else
			        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
			        
			        System.out.println("Server response .... \n");
			        System.out.println("input 0: " + output);
			        
					//Order detail-------------------------------------------------------------
			        ClientResponse response2 = Rest.mService.path("webresources").path(update_detail_command).accept("application/json")
			    			.type("application/json").post(ClientResponse.class, orderDetailList);

			        String output2 = response2.toString();
			        System.out.println("input 1: " + output2);
			        
			        if ((response2.getStatus() == 200) && (response2.getEntity(String.class).compareTo("0") != 0)) {
			            Toast.makeText(context, "Đã lưu", Toast.LENGTH_SHORT).show();
			            // refresh customers
			            resetValue();
			            TakeOrder_ProductActivity.add_take_order_detail = false;
			            TakeOrder_ProductActivity.timeLine = true;
			            InventoryManagerDetailActivity.add_inventory_detail = false;
			            
			        }else
			        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
			        
			        System.out.println("Server response .... \n");
			        System.out.println("input 0: " + output2);
				
				
				return;
			}
			
			//NEW
			/////////////////////////////////////////////////////////////////////////////=========================
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
					, pricesTotal - discount, pricesTotal - discount
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
			ClientResponse response = Rest.mService.path("webresources").path(putData).accept("application/json")
			.type("application/json").post(ClientResponse.class, TakeOrderStr);

	        String output = response.toString();
	        System.out.println("input 1: " + output);
	        
	        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
	            Toast.makeText(context, "Đã lưu ", Toast.LENGTH_SHORT).show();
	            // refresh customers
	            
	            
	        }else
	        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
	        
	        System.out.println("Server response .... \n");
	        System.out.println("input 0: " + output);
	        
	        //Order detail-------------------------------------------------------------
	        ClientResponse response2 = Rest.mService.path("webresources").path(putDataDetail).accept("application/json")
	    			.type("application/json").post(ClientResponse.class, orderDetailList);

	        String output2 = response2.toString();
	        System.out.println("input 1: " + output2);
	        
	        if ((response2.getStatus() == 200) && (response2.getEntity(String.class).compareTo("0") != 0)) {
	            Toast.makeText(context, "Đã lưu", Toast.LENGTH_SHORT).show();
	            // refresh customers
	            resetValue();
	            
	        }else
	        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
	        
	        System.out.println("Server response .... \n");
	        System.out.println("input 0: " + output2);
	        
	        ////////////////////////// save order detail//////////////////////////////////
	        
		}
	}
	
	public void updateTakeOrderDetail(){
		
	}
	
	public void updateInventoryDetail(){
		
	}
	
	public void resetValue(){
		TakeOrder_ProductActivity.mProductsMap.clear();
		TakeOrder_ReViewActivity.takeOrderDetailList.clear();
		pricesTotal = 0;
		discount = 0;
		TakeOrder_ProductActivity.timeLine = true;
		TakeOrder_ProductActivity.add_take_order_detail = false;
		
		onResume();
	}
}
