package com.hp.map;

import android.app.TabActivity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;

public class Order_TabActivity extends TabActivity{
	
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.order_tab);
		
		Resources recource = getResources();
		TabHost tabHost = getTabHost();
		
		Intent intentProduct = new Intent().setClass(this, Order_ProductActivity.class);
		TabSpec tabSpecProduct = tabHost
				.newTabSpec("Product")
				.setIndicator("Product")
				.setContent(intentProduct);
		
		Intent intentAmount = new Intent().setClass(this, Order_AmountActivity.class);
		TabSpec tabSpecAmount = tabHost
				.newTabSpec("Amount")
				.setIndicator("Amount")
				.setContent(intentAmount);
		
		tabHost.addTab(tabSpecProduct);
		tabHost.addTab(tabSpecAmount);
		
		tabHost.setCurrentTab(0);
	}
}