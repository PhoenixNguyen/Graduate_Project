package com.hp.map;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class TakeOrder_ReViewActivity extends TakeOrdersDetailManagerActivity{
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_detail_manager);
		
		
		order_id = "180NLB-2014-03-14 02:17:02";
		
		TextView title = (TextView)findViewById(R.id.title);
		title.setText("Order: "+order_id);
		
		getOrderList();
		addListView();
	}
}
