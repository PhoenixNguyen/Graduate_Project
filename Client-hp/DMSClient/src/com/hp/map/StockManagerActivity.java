package com.hp.map;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.hp.domain.Product;
import com.hp.domain.TakeOrderDetail;

public class StockManagerActivity extends TakeOrder_ProductActivity{
	
	public void init(){
		
		title = (TextView)findViewById(R.id.title);
		title.setText("Quản lý kho");
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
			
			
			
			dialog.show();
     }
}
