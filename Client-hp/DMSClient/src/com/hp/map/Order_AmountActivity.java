package com.hp.map;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class Order_AmountActivity extends Activity {
	
	private Button product;
	private Button amount;
	
	private Context context = this;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.amount);
		
		product = (Button)findViewById(R.id.product_button);
		product.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				startActivity(new Intent(context, Order_ProductActivity.class));
			}
		});
	}
}
