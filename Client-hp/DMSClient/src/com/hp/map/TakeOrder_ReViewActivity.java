package com.hp.map;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import com.hp.domain.TakeOrderDetail;
import com.hp.order_manager.OrdersManagerDetailArrayAdapter;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class TakeOrder_ReViewActivity extends TakeOrdersDetailManagerActivity{
		
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_detail_manager);
		
		
		order_id = "180NLB-2014-03-14 02:17:02";
		
		TextView title = (TextView)findViewById(R.id.title);
		title.setText("Danh mục đã chọn: ");
		
		getOrderList();
		addListView();
	}
	
	public void onResume(){
		super.onResume();
		this.onCreate(null);
	}
	
	public void getOrderList(){
		takeOrderDetailList.clear();
		
		Set<String> keyset = TakeOrder_ProductActivity.mProductsMap.keySet();
		int line = 0;
		for(String key : keyset){
			for(int i = 0; i < TakeOrder_ProductActivity.mProductsMap.get(key).size(); i++){
				if(TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal() > 0){
					TakeOrderDetail orderDetail = 
							new TakeOrderDetail("", line++, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmProductID()
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmBarcode()
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmProductName() 
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmExportPrices()
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmExportPrices()
									, 0, 0 
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmExportPrices() 
										* TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal()
									, "", TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal()
									, "", 0);
					
					takeOrderDetailList.add(orderDetail);
				}
			}
		}
		
	}
	
	public void addCustomerDialog(final TakeOrderDetail selectedValue, final int position){
		final Dialog dialog = new Dialog(context);
		dialog.setContentView(R.layout.order_product_dialog);
		dialog.setTitle("Thay đổi số lượng");

		// set the custom dialog components - text, image and button
		TextView text = (TextView) dialog.findViewById(R.id.text);
		text.setText("Tên sản phẩm: "+selectedValue.getmProductName());

		TextView price = (TextView) dialog.findViewById(R.id.price);
		price.setText("Giá sản phẩm: "+selectedValue.getmBeforeOrderPrice());
		
		final EditText count = (EditText)dialog.findViewById(R.id.count);
		
		Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
		dialogButton.setText("Cập nhật");
		// if button is clicked, close the custom dialog
		dialogButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				
				if(count == null)
					return;
				
				int number = Integer.parseInt(count.getText().toString());
				
				takeOrderDetailList.get(position).setmNumber(number);
				takeOrderDetailList.get(position).setmPriceTotal(number* takeOrderDetailList.get(position).getmAfterOrderPrice());
				
				dialog.dismiss();
				
				//reload
				adapter = new OrdersManagerDetailArrayAdapter(context,
						android.R.layout.simple_list_item_1, takeOrderDetailList);
				ordersListView.setAdapter(adapter);
				
				//Set call back product list
				callbackSetMap(selectedValue.getmProductID(), number);
				//if number = 0 --> remove
				if(number == 0){
					onResume();
				}
				
				
			}
		});

		//Cancel
		Button dialogButtonNO = (Button) dialog.findViewById(R.id.dialogButtonNO);
		dialogButtonNO.setText("Hủy");
		// if button is clicked, close the custom dialog
		dialogButtonNO.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				dialog.dismiss();
			}
		});
		
		
		dialog.show();
		
	}
	
	public void callbackSetMap(String productID, int total){
		
		Set<String> keyset = TakeOrder_ProductActivity.mProductsMap.keySet();
		int line = 0;
		
		for(String key : keyset){
			
			for(int i = 0; i < TakeOrder_ProductActivity.mProductsMap.get(key).size(); i++){
				if(TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmProductID() == productID){
					TakeOrder_ProductActivity.mProductsMap.get(key).get(i).setmTotal(total);
					return;
				}
			}
		}
		
	}
}
