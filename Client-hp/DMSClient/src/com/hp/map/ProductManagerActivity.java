package com.hp.map;

import com.hp.domain.Product;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;

public class ProductManagerActivity extends TakeOrder_ProductActivity{
	
	public void init(){
		//Reset values and init it
		mProductsMap.clear();
		timeLine = true;
		
		title.setText("Quản lý sản phẩm");
		search_button.setText("Thêm");
		
		command = "getProductsList";
		customerID = "";
		
		mManager = true;
	}
	
	public void searchButton(View view){
		startActivity(new Intent(this, ProductAdditionActivity.class));
	}
	
	@Override
    public void onItemClick(AdapterView<?> a, View v, final int position, long id) 
    {
 		final Product selectedValue = (Product) listView.getAdapter().getItem(position);
 		
 		final Dialog dialog = new Dialog(context);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View view = li.inflate(R.layout.customer_comfirm_dialog, null, false);
		dialog.setContentView(view);
		dialog.setTitle("Lựa chọn của bạn");
		
		final Button edit = (Button)dialog.findViewById(R.id.edit);
		final Button detail = (Button)dialog.findViewById(R.id.detail);
		final Button delete = (Button)dialog.findViewById(R.id.delete);
		final Button cancel = (Button)dialog.findViewById(R.id.cancel);
		
		edit.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				//startActivity(new Intent(context, CustomerEditerActivity.class));
				
			}
		});
		
		detail.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
//				        Intent t = new Intent(context, CustomerMapActivity.class);
//				        t.putExtra("POSITION_CLICK", customer.getmMaDoiTuong());
//				        
//				        startActivity(t);
			}
		});
		
		delete.setOnClickListener(new OnClickListener() {
					
					@Override
					public void onClick(View v) {
						// TODO Auto-generated method stub
//						comfirmDeleteDialog(customer);
//						dialog.dismiss();
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

}
