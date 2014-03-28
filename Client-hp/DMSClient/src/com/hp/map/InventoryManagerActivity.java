package com.hp.map;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hp.domain.Product;
import com.hp.domain.Stock;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class InventoryManagerActivity extends TakeOrder_ProductActivity{
	public void init(){
			
			title = (TextView)findViewById(R.id.title);
			title.setText("Quản lý hàng tồn");
			command = "getCustomerProduct";
			customerID = CustomerMapActivity.mSelectedCustomer.getmMaDoiTuong();
		}
	
	public String getProviderIDList(){
		//GET providers list
			// Check the internet
			if(isOnline()){
				System.out.println("Internet access!!____________________");
			}
			else{
				System.out.println("NO Internet access!!____________________");
				Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
				return null;
			}
			
			ClientResponse response = Rest.mService.path("webresources").path("getCustomerProviderList")
					.accept("application/json")
					.type("application/json").post(ClientResponse.class, customerID);
	        System.out.println("________________ "+ response.toString());
	        if(response.getStatus() != 200){
	        	return null;
	        }
	        
	        return response.getEntity(String.class);
	  }
	
	@Override
    public void onItemClick(AdapterView<?> a, View v,int position, long id) 
    {
   	 final Product selectedValue = (Product) listView.getAdapter().getItem(position);
   	 
         //Toast.makeText(getBaseContext(), "Click", Toast.LENGTH_LONG).show();
   	// custom dialog
			final Dialog dialog = new Dialog(context);
			dialog.setContentView(R.layout.stock_manager_dialog);
			dialog.setTitle("Thông tin kho");
			
			final EditText edit_ton_dau = (EditText)dialog.findViewById(R.id.edit_ton_dau);
			final EditText edit_ton_cuoi = (EditText)dialog.findViewById(R.id.edit_ton_cuoi);
			final EditText edit_nhap = (EditText)dialog.findViewById(R.id.edit_nhap);
			
			final TextView id_st = (TextView)dialog.findViewById(R.id.id);
			final TextView name = (TextView)dialog.findViewById(R.id.name);
			final TextView price = (TextView)dialog.findViewById(R.id.price);
			
//			final TextView td = (TextView)dialog.findViewById(R.id.ton_dau);
//			final TextView nh = (TextView)dialog.findViewById(R.id.nhap);
//			final TextView tc = (TextView)dialog.findViewById(R.id.ton_cuoi);
			
			final Stock stock = getStock(selectedValue.getmProductID());
			
			if(stock!=null){
				id_st.setText("Mã sản phẩm: "+stock.getmStockID());
				name.setText("Tên sản phẩm "+stock.getmName());
				price.setText("Giá: " +stock.getmPrice()+"");
				
//				td.setText("Tồn đầu: "+stock.getmBeginningInventory()+"");
//				nh.setText("Nhập: "+stock.getmInput()+"");
//				tc.setText("Tồn cuối: " +stock.getmLastInventory()+"");
			}
			Button dialogButtonYES = (Button)dialog.findViewById(R.id.dialogButtonYES);
			Button dialogButtonNO = (Button)dialog.findViewById(R.id.dialogButtonNO);
			
			dialogButtonYES.setOnClickListener(new OnClickListener() {
				
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					// Check the internet
					if(isOnline()){
						System.out.println("Internet access!!____________________");
					}
					else{
						System.out.println("NO Internet access!!____________________");
						Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
						return;
					}
					float tondau = 0;
					float toncuoi= 0;
					float nhap = 0;
					
					if(edit_ton_dau.getText().toString().compareTo("") != 0 && 
							edit_ton_cuoi.getText().toString().compareTo("") != 0 &&
							edit_nhap.getText().toString().compareTo("") != 0){
						
						tondau = Float.parseFloat(edit_ton_dau.getText().toString());
						toncuoi = Float.parseFloat(edit_ton_cuoi.getText().toString());
						nhap = Float.parseFloat(edit_nhap.getText().toString());
					}
						else
							return;
					String stockStr = null;
					ClientResponse response = null;
					
					if(stock == null){
						Stock stock2 = new Stock(
								"",
								selectedValue.getmProductID(),
								selectedValue.getmProductName(),
								selectedValue.getmExportPrices(),
								tondau,
								nhap,
								toncuoi,
								selectedValue.getmExportPrices(),
								
								0f,
								0f,
								0f,
								""
								);
						// Sys
						ObjectMapper mapper = new ObjectMapper();
				        stockStr = new String();
				       
	
						try {
	
							stockStr = mapper.writeValueAsString(stock2);
							
						} catch (JsonGenerationException ex) {
	
							ex.printStackTrace();
	
						} catch (JsonMappingException ex) {
	
							ex.printStackTrace();
	
						} catch (IOException ex) {
	
							ex.printStackTrace();
	
						}
				       
						//Order ---------------------------------------------------------------
						response = Rest.mService.path("webresources").path("putStock").accept("application/json")
						.type("application/json").post(ClientResponse.class, stockStr);
					}
					else{
						stock.setmInput(nhap);
						stock.setmLastInventory(toncuoi);
						stock.setmBeginningInventory(tondau);
						
						ObjectMapper mapper = new ObjectMapper();
				        stockStr = new String();
				       
	
						try {
	
							stockStr = mapper.writeValueAsString(stock);
							
						} catch (JsonGenerationException ex) {
	
							ex.printStackTrace();
	
						} catch (JsonMappingException ex) {
	
							ex.printStackTrace();
	
						} catch (IOException ex) {
	
							ex.printStackTrace();
	
						}
				       
						//Order ---------------------------------------------------------------
						response = Rest.mService.path("webresources").path("putStock").accept("application/json")
						.type("application/json").post(ClientResponse.class, stockStr);
					}
						
			        String output = response.toString();
			        System.out.println("input 1: " + output);
			        
			        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
			            Toast.makeText(context, "Đã lưu", Toast.LENGTH_SHORT).show();
			            // refresh customers
			            
			            
			        }else
			        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
			        
			        System.out.println("Server response .... \n");
			        System.out.println("input 0: " + output);
					
				}
			});
			
			dialogButtonNO.setOnClickListener(new OnClickListener() {
				
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					dialog.dismiss();
				}
			});
			
			dialog.show();
     }
	
	public Stock getStock(String id){
		if(isOnline()){
			System.out.println("Internet access!!____________________");
		}
		else{
			System.out.println("NO Internet access!!____________________");
			Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
			return null;
		}
		
		ClientResponse response = Rest.mService.path("webresources")
				.path("getStock").accept("application/json")
				.type("application/json")
				.post(ClientResponse.class, id);
		System.out.println("________________ " + response.toString());

		if (response.getStatus() != 200) {

			return null;
		}

		String re = response.getEntity(String.class);
		System.out.println("________________ " + re);

		// pair to object
		ObjectMapper mapper = new ObjectMapper();
		Stock stock = null;
		try {
			// File jsonFile = new File(jsonFilePath);
			stock = mapper.readValue(re, Stock.class);
			// System.out.println("++++++++++++++ mdt "+customerList.get(0).getmMaDoiTuong());
		} catch (JsonGenerationException e) {
			e.printStackTrace();
			return null;
		} catch (JsonMappingException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
		return stock;
	}
}
