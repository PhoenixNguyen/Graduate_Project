package com.hp.map;

public class SaleManagerActivity extends TakeOrdersManagerActivity{
	public void init(){
		activityClass = SaleManagerDetailActivity.class;
		getList = "getSaleOrderList";
		deleteValue = "deleteSaleOrder";
	}
}
