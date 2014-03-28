package com.hp.map;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.hp.domain.Product;
import com.hp.domain.Stock;
import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

public class StockManagerActivity extends TakeOrder_ProductActivity{

	public void init(){
		title = (TextView)findViewById(R.id.title);
		title.setText("Quản lý hàng tồn");
		command = "getProductsList";
		customerID = "";
		
//		title = (TextView)findViewById(R.id.title);
//		title.setText("Quản lý kho");
	}

	@Override
    public void onItemClick(AdapterView<?> a, View v,int position, long id) 
    {
   	 final Product selectedValue = (Product) listView.getAdapter().getItem(position);
   	 
         //Toast.makeText(getBaseContext(), "Click", Toast.LENGTH_LONG).show();
   	// custom dialog
			final Dialog dialog = new Dialog(context);
			dialog.setContentView(R.layout.stock_dialog);
			dialog.setTitle("Thông tin kho");

//			final EditText edit_ton_cuoi = (EditText)dialog.findViewById(R.id.edit_ton_cuoi);
			

			final EditText stock_id_value = (EditText)dialog.findViewById(R.id.stock_id_value);
			final EditText product_name_value = (EditText)dialog.findViewById(R.id.product_name_value);
			final EditText price_value = (EditText)dialog.findViewById(R.id.price_value);
			
			final EditText date_value = (EditText)dialog.findViewById(R.id.date_value);
			final EditText sum_value = (EditText)dialog.findViewById(R.id.sum_value);
			
			final Button save = (Button)dialog.findViewById(R.id.save);
			final Button cancel = (Button)dialog.findViewById(R.id.cancel);
			
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new Date();
			String datestr = dateFormat.format(date);
			final String stockID = selectedValue.getmProductID()+"-"+datestr;
			
			//set value
			stock_id_value.setText(stockID);
			product_name_value.setText(selectedValue.getmProductName());
			price_value.setText(selectedValue.getmExportPrices() + "");
			date_value.setText(datestr);
			
			
			save.setOnClickListener(new OnClickListener() {

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
					float toncuoi= 0;

					
					if(sum_value.getText() != null || sum_value.getText().toString().compareTo("") == 0)
						toncuoi = Float.parseFloat(sum_value.getText().toString());
					else
						return;

					String stockStr = null;
					ClientResponse response = null;

						Stock stock2 = new Stock(
								stockID,
								selectedValue.getmProductID(),
								selectedValue.getmProductName(),
								selectedValue.getmExportPrices(),
								0f,
								0f,
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
					
					

			        String output = response.toString();
			        System.out.println("input 1: " + output);

			        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("true") == 0)) {
			            Toast.makeText(context, "Đã lưu", Toast.LENGTH_SHORT).show();
			            // refresh customers


			        }else
			        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();

			        System.out.println("Server response .... \n");
			        System.out.println("input 0: " + output);
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