package com.hp.map;

public class InventoryManager_ProductActivity extends TakeOrder_ProductActivity{
	public void init(){
		
		title.setText("Quản lý hàng tồn");
		command = "getProductsList";
		customerID = "";
		
		timeLine = true;
		
//		title = (TextView)findViewById(R.id.title);
//		title.setText("Quản lý kho");
	}
}
