/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

/**
 *
 * @author HP
 */

public class TakeOrderDetail {
    
    private int mSerial;
    private String mTakeOrderID;
	private int mLine;
    private String mProductID;
    private String mBarcode;
    private String mProductName;
    private float mAfterOrderPrice;
    private float mBeforeOrderPrice;
    private float mTax;
    private float mDiscount;
    private float mPriceTotal;
    private String mStockID;
    private int mNumber;
    private String mUnit;
    private float mExchangeRate;
    
    public TakeOrderDetail(String mTakeOrderID, int mLine, String mProductID,
			String mBarcode, String mProductName, float mAfterOrderPrice,
			float mBeforeOrderPrice, float mTax, float mDiscount,
			float mPriceTotal, String mStockID, int mNumber, String mUnit,
			float mExchangeRate) {
		super();
		this.mTakeOrderID = mTakeOrderID;
		this.mLine = mLine;
		this.mProductID = mProductID;
		this.mBarcode = mBarcode;
		this.mProductName = mProductName;
		this.mAfterOrderPrice = mAfterOrderPrice;
		this.mBeforeOrderPrice = mBeforeOrderPrice;
		this.mTax = mTax;
		this.mDiscount = mDiscount;
		this.mPriceTotal = mPriceTotal;
		this.mStockID = mStockID;
		this.mNumber = mNumber;
		this.mUnit = mUnit;
		this.mExchangeRate = mExchangeRate;
	}

    public TakeOrderDetail(){
    	
    }
    public int getmSerial() {
        return mSerial;
    }

    public void setmSerial(int mSerial) {
        this.mSerial = mSerial;
    }

    public String getmTakeOrderID() {
        return mTakeOrderID;
    }

    public void setmTakeOrderID(String mTakeOrderID) {
        this.mTakeOrderID = mTakeOrderID;
    }

    public int getmLine() {
        return mLine;
    }

    public void setmLine(int mLine) {
        this.mLine = mLine;
    }

    public String getmProductID() {
        return mProductID;
    }

    public void setmProductID(String mProductID) {
        this.mProductID = mProductID;
    }

    public String getmBarcode() {
        return mBarcode;
    }

    public void setmBarcode(String mBarcode) {
        this.mBarcode = mBarcode;
    }

    public String getmProductName() {
        return mProductName;
    }

    public void setmProductName(String mProductName) {
        this.mProductName = mProductName;
    }

    public float getmAfterOrderPrice() {
        return mAfterOrderPrice;
    }

    public void setmAfterOrderPrice(float mAfterOrderPrice) {
        this.mAfterOrderPrice = mAfterOrderPrice;
    }

    public float getmBeforeOrderPrice() {
        return mBeforeOrderPrice;
    }

    public void setmBeforeOrderPrice(float mBeforeOrderPrice) {
        this.mBeforeOrderPrice = mBeforeOrderPrice;
    }

    public float getmTax() {
        return mTax;
    }

    public void setmTax(float mTax) {
        this.mTax = mTax;
    }

    public float getmDiscount() {
        return mDiscount;
    }

    public void setmDiscount(float mDiscount) {
        this.mDiscount = mDiscount;
    }

    public float getmPriceTotal() {
        return mPriceTotal;
    }

    public void setmPriceTotal(float mPriceTotal) {
        this.mPriceTotal = mPriceTotal;
    }

    public String getmStockID() {
        return mStockID;
    }

    public void setmStockID(String mStockID) {
        this.mStockID = mStockID;
    }

    public int getmNumber() {
        return mNumber;
    }

    public void setmNumber(int mNumber) {
        this.mNumber = mNumber;
    }

    public String getmUnit() {
        return mUnit;
    }

    public void setmUnit(String mUnit) {
        this.mUnit = mUnit;
    }

    public float getmExchangeRate() {
        return mExchangeRate;
    }

    public void setmExchangeRate(float mExchangeRate) {
        this.mExchangeRate = mExchangeRate;
    }
    
}
