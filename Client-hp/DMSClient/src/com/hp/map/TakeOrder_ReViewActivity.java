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
import android.app.ActionBar.LayoutParams;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;

public class TakeOrder_ReViewActivity extends TakeOrdersDetailManagerActivity{
	
	public static List<TakeOrderDetail> takeOrderDetailList = new ArrayList<TakeOrderDetail>();
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_detail_manager);
		
		
		//order_id = "180NLB-2014-03-14 02:17:02";
		
		TextView title = (TextView)findViewById(R.id.title);
		title.setText("Danh mục đã chọn: ");
		
		init();
		getOrderList();
		addListView();
	}
	
	public void init(){
		
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
				if(TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal() > 0 || TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmPromotionalProductAmounts() > 0){
					TakeOrderDetail orderDetail = 
							new TakeOrderDetail("", line++, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmProductID()
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmBarcode()
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmProductName() 
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmExportPrices()
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmExportPrices()
									, 0
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmDiscount() 
									, (float)Math.ceil((TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmExportPrices() - 
											TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmExportPrices() *
											TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmDiscount() / 100)
										* TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal())
									, "", TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmTotal()
									, "", 0
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmNote()
									, TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmPromotionalProductAmounts()
									);
					
					takeOrderDetailList.add(orderDetail);
				}
			}
		}
		
	}
	
	public void addListView() {

		// Check the internet
		if (isOnline()) {
			System.out.println("Internet access!!____________________");
		} else {
			System.out.println("NO Internet access!!____________________");
			Toast.makeText(this, "No internet access, please try again later!",
					Toast.LENGTH_SHORT).show();
			return;
		}

		if (takeOrderDetailList.size() == 0) {
			return;
		}

		ordersListView = (ListView) findViewById(R.id.list_view_product);
		adapter = new OrdersManagerDetailArrayAdapter(this,
				android.R.layout.simple_list_item_1, takeOrderDetailList);
		ordersListView.setAdapter(adapter);

		ordersListView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> a, View v, int position,
					long id) {
				System.out.println("Click!");
				TakeOrderDetail selectedValue = (TakeOrderDetail) ordersListView.getAdapter().getItem(position);
		    	 addCustomerDialog(selectedValue, position);
				
			}
		});
	}
	
	public void addCustomerDialog(final TakeOrderDetail selectedValue, final int position){
		final Dialog dialog = new Dialog(context);
		dialog.setContentView(R.layout.order_product_dialog);
		dialog.setTitle("Thay đổi số lượng");

		// set the custom dialog components - text, image and button
		TextView text = (TextView) dialog.findViewById(R.id.name);
		text.setText(""+selectedValue.getmProductName());

		TextView price = (TextView) dialog.findViewById(R.id.price);
		price.setText(""+selectedValue.getmBeforeOrderPrice());
		
		final EditText discount = (EditText) dialog.findViewById(R.id.discount);
		discount.setText(takeOrderDetailList.get(position).getmDiscount()+"");
		
		final EditText count = (EditText)dialog.findViewById(R.id.count);
		count.setText(takeOrderDetailList.get(position).getmNumber()+"");
		
		final EditText note = (EditText) dialog.findViewById(R.id.note);
		note.setText(takeOrderDetailList.get(position).getmNote()+"");
		
		//discount product
		final TextView product_discount = (TextView) dialog.findViewById(R.id.product_discount);
		final EditText product_discount_count = (EditText) dialog.findViewById(R.id.product_discount_count);
		product_discount.setVisibility(View.VISIBLE);
		product_discount_count.setVisibility(View.VISIBLE);
		product_discount_count.setText(selectedValue.getmPromotionalProductMount()+"");
		
		Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
		dialogButton.setText("Cập nhật");
		// if button is clicked, close the custom dialog
		dialogButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				
				String count2 = count.getText().toString();
				String discount2 = discount.getText().toString();
				String product_discount_count2 = product_discount_count.getText().toString();
				
				int number = 0;
				int discount = 0;
				int promotionalAmount = 0;
				
				if(count2.compareTo("") != 0 && String.valueOf(count2).length() < 10)
					number = Integer.parseInt(count2);
				else{
					Toast.makeText(context, "Hãy nhập số lượng nhiều hơn 0 và ít hơn 0.1 tỷ ", Toast.LENGTH_SHORT).show();
					return;
				}
				
				if(String.valueOf(discount2).length() < 10){
					if(discount2.compareTo("") != 0){
						discount = Integer.parseInt(discount2);
						if(discount > 100){
							Toast.makeText(context, "Bạn đã nhập quá 100% ", Toast.LENGTH_SHORT).show();
							return;
						}
					}
				}
				else{
					Toast.makeText(context, "Hãy nhập phần trăm ít hơn 0.1 tỷ ", Toast.LENGTH_SHORT).show();
					return;
				}
				
				//promotinal product
				if(String.valueOf(product_discount_count2).length() < 10){
					if(product_discount_count2.compareTo("") != 0)
						promotionalAmount = Integer.parseInt(product_discount_count2);
				}
				else{
					Toast.makeText(context, "Hãy nhập số lượng nhiều hơn 0 và ít hơn 0.1 tỷ ", Toast.LENGTH_SHORT).show();
					return;
				}
				
				float priceTotal = (float)Math.ceil((takeOrderDetailList.get(position).getmAfterOrderPrice() - 
						takeOrderDetailList.get(position).getmAfterOrderPrice() * discount / 100) * number);
				takeOrderDetailList.get(position).setmDiscount(discount);
				takeOrderDetailList.get(position).setmNumber(number);
				takeOrderDetailList.get(position).setmPriceTotal(priceTotal);
				takeOrderDetailList.get(position).setmNote(note.getText().toString());
				takeOrderDetailList.get(position).setmPromotionalProductMount(promotionalAmount);

				dialog.dismiss();
				
				//reload
				adapter = new OrdersManagerDetailArrayAdapter(context,
						android.R.layout.simple_list_item_1, takeOrderDetailList);
				ordersListView.setAdapter(adapter);
				
				//Set call back product list to load again in takeorder_product
				callbackSetMap(selectedValue.getmProductID(), number, discount, note.getText().toString(), promotionalAmount);
				//if number = 0 --> remove
				if(number == 0 && promotionalAmount == 0){
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
		
		dialog.getWindow().setLayout(LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT);
		dialog.show();
		
	}
	
	public void callbackSetMap(String productID, int total, int discount, String note, int promotion){
		
		Set<String> keyset = TakeOrder_ProductActivity.mProductsMap.keySet();
		int line = 0;
		
		for(String key : keyset){
			
			for(int i = 0; i < TakeOrder_ProductActivity.mProductsMap.get(key).size(); i++){
				if(TakeOrder_ProductActivity.mProductsMap.get(key).get(i).getmProductID() == productID){
					TakeOrder_ProductActivity.mProductsMap.get(key).get(i).setmTotal(total);
					TakeOrder_ProductActivity.mProductsMap.get(key).get(i).setmDiscount(discount);
					TakeOrder_ProductActivity.mProductsMap.get(key).get(i).setmNote(note);
					TakeOrder_ProductActivity.mProductsMap.get(key).get(i).setmPromotionalProductAmounts(promotion);
					return;
				}
			}
		}
		
	}
}
