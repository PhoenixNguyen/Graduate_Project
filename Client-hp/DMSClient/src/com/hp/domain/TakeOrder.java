/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import java.sql.Timestamp;


/**
 *
 * @author HP
 */


public class TakeOrder {
    
   
    private int mSerial;
    

	private String mID;
	private Timestamp mTakeOrderDate;
    private Timestamp mDeliveryDate;
    private String mCustomerID;
    private String mCustomerName;
    private String mCustomerAddress;
    private String mPhoneNumber;
    private String mDeliveryAddress;
    private String mShippingVehicle;
    private float mTax;
    private float mBeforePrice;
    private float mAfterPrivate;
    private float mDiscount;
    private int mOrderStatus;
    private Timestamp mOrderEstablishDate;
    private Timestamp mOrderEditDate;
    private String mCreater;
    private String mEditer;

    @Override
	public String toString() {
		return mCustomerID +" "+ mCustomerName;
	}
    public TakeOrder(){
    	
    }
    
    public TakeOrder(String mID, Timestamp mTakeOrderDate,
			Timestamp mDeliveryDate, String mCustomerID, String mCustomerName,
			String mCustomerAddress, String mPhoneNumber,
			String mDeliveryAddress, String mShippingVehicle, float mTax,
			float mBeforePrice, float mAfterPrivate, float mDiscount,
			int mOrderStatus, Timestamp mOrderEstablishDate,
			Timestamp mOrderEditDate, String mCreater, String mEditer) {
		super();
		this.mID = mID;
		this.mTakeOrderDate = mTakeOrderDate;
		this.mDeliveryDate = mDeliveryDate;
		this.mCustomerID = mCustomerID;
		this.mCustomerName = mCustomerName;
		this.mCustomerAddress = mCustomerAddress;
		this.mPhoneNumber = mPhoneNumber;
		this.mDeliveryAddress = mDeliveryAddress;
		this.mShippingVehicle = mShippingVehicle;
		this.mTax = mTax;
		this.mBeforePrice = mBeforePrice;
		this.mAfterPrivate = mAfterPrivate;
		this.mDiscount = mDiscount;
		this.mOrderStatus = mOrderStatus;
		this.mOrderEstablishDate = mOrderEstablishDate;
		this.mOrderEditDate = mOrderEditDate;
		this.mCreater = mCreater;
		this.mEditer = mEditer;
	}
    
    public int getmSerial() {
        return mSerial;
    }

    public void setmSerial(int mSerial) {
        this.mSerial = mSerial;
    }

    public String getmID() {
        return mID;
    }

    public void setmID(String mID) {
        this.mID = mID;
    }

    public Timestamp getmTakeOrderDate() {
        return mTakeOrderDate;
    }

    public void setmTakeOrderDate(Timestamp mTakeOrderDate) {
        this.mTakeOrderDate = mTakeOrderDate;
    }

    public Timestamp getmDeliveryDate() {
        return mDeliveryDate;
    }

    public void setmDeliveryDate(Timestamp mDeliveryDate) {
        this.mDeliveryDate = mDeliveryDate;
    }

    public String getmCustomerID() {
        return mCustomerID;
    }

    public void setmCustomerID(String mCustomerID) {
        this.mCustomerID = mCustomerID;
    }

    public String getmCustomerName() {
        return mCustomerName;
    }

    public void setmCustomerName(String mCustomerName) {
        this.mCustomerName = mCustomerName;
    }

    public String getmCustomerAddress() {
        return mCustomerAddress;
    }

    public void setmCustomerAddress(String mCustomerAddress) {
        this.mCustomerAddress = mCustomerAddress;
    }

    public String getmPhoneNumber() {
        return mPhoneNumber;
    }

    public void setmPhoneNumber(String mPhoneNumber) {
        this.mPhoneNumber = mPhoneNumber;
    }

    public String getmDeliveryAddress() {
        return mDeliveryAddress;
    }

    public void setmDeliveryAddress(String mDeliveryAddress) {
        this.mDeliveryAddress = mDeliveryAddress;
    }

    public String getmShippingVehicle() {
        return mShippingVehicle;
    }

    public void setmShippingVehicle(String mShippingVehicle) {
        this.mShippingVehicle = mShippingVehicle;
    }

    public float getmTax() {
        return mTax;
    }

    public void setmTax(float mTax) {
        this.mTax = mTax;
    }

    
    public float getmBeforePrice() {
        return mBeforePrice;
    }

    public void setmBeforePrice(float mBeforePrice) {
        this.mBeforePrice = mBeforePrice;
    }

    public float getmAfterPrivate() {
        return mAfterPrivate;
    }

    public void setmAfterPrivate(float mAfterPrivate) {
        this.mAfterPrivate = mAfterPrivate;
    }

    public float getmDiscount() {
        return mDiscount;
    }

    public void setmDiscount(float mDiscount) {
        this.mDiscount = mDiscount;
    }

    public int getmOrderStatus() {
        return mOrderStatus;
    }

    public void setmOrderStatus(int mOrderStatus) {
        this.mOrderStatus = mOrderStatus;
    }

    public Timestamp getmOrderEstablishDate() {
        return mOrderEstablishDate;
    }

    public void setmOrderEstablishDate(Timestamp mOrderEstablishDate) {
        this.mOrderEstablishDate = mOrderEstablishDate;
    }

    public Timestamp getmOrderEditDate() {
        return mOrderEditDate;
    }

    public void setmOrderEditDate(Timestamp mOrderEditDate) {
        this.mOrderEditDate = mOrderEditDate;
    }

    public String getmCreater() {
        return mCreater;
    }

    public void setmCreater(String mCreater) {
        this.mCreater = mCreater;
    }

    public String getmEditer() {
        return mEditer;
    }

    public void setmEditer(String mEditer) {
        this.mEditer = mEditer;
    }
            
}
