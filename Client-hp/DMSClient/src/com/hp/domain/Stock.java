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

public class Stock {
   
    private int mSerial;
    private String mStockID;
    private String mName;
    private float mPrice;
    private float mBeginningInventory;
    private float mInput;
    private float mLastInventory;
    private float mBanRa;
    private float mOrder;
    private float mDuyet;
    private float mTotalInventory;
    private String mNote;
    
    private String mProductID;

    public String getmProductID() {
        return mProductID;
    }

    public void setmProductID(String mProductID) {
        this.mProductID = mProductID;
    }
    public Stock(String mStockID, String mProductID, String mName, float mPrice,
			float mBeginningInventory, float mInput, float mLastInventory,
			float mBanRa, float mOrder, float mDuyet, float mTotalInventory,
			String mNote) {
		super();
		this.mStockID = mStockID;
		this.mProductID = mProductID;
		this.mName = mName;
		this.mPrice = mPrice;
		this.mBeginningInventory = mBeginningInventory;
		this.mInput = mInput;
		this.mLastInventory = mLastInventory;
		this.mBanRa = mBanRa;
		this.mOrder = mOrder;
		this.mDuyet = mDuyet;
		this.mTotalInventory = mTotalInventory;
		this.mNote = mNote;
	}

    public Stock(){
    	
    }
    public int getmSerial() {
        return mSerial;
    }

    public void setmSerial(int mSerial) {
        this.mSerial = mSerial;
    }

    public String getmStockID() {
        return mStockID;
    }

    public void setmStockID(String mStockID) {
        this.mStockID = mStockID;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String name) {
        this.mName = name;
    }

    public float getmPrice() {
        return mPrice;
    }

    public void setmPrice(float mPrice) {
        this.mPrice = mPrice;
    }

    public float getmBeginningInventory() {
        return mBeginningInventory;
    }

    public void setmBeginningInventory(float mBeginningInventory) {
        this.mBeginningInventory = mBeginningInventory;
    }

    public float getmInput() {
        return mInput;
    }

    public void setmInput(float mInput) {
        this.mInput = mInput;
    }

    public float getmLastInventory() {
        return mLastInventory;
    }

    public void setmLastInventory(float mLastInventory) {
        this.mLastInventory = mLastInventory;
    }

    public float getmBanRa() {
        return mBanRa;
    }

    public void setmBanRa(float mBanRa) {
        this.mBanRa = mBanRa;
    }

    public float getmOrder() {
        return mOrder;
    }

    public void setmOrder(float mOrder) {
        this.mOrder = mOrder;
    }

    public float getmDuyet() {
        return mDuyet;
    }

    public void setmDuyet(float mDuyet) {
        this.mDuyet = mDuyet;
    }

    public float getmTotalInventory() {
        return mTotalInventory;
    }

    public void setmTotalInventory(float mTotalInventory) {
        this.mTotalInventory = mTotalInventory;
    }

    public String getmNote() {
        return mNote;
    }

    public void setmNote(String mNote) {
        this.mNote = mNote;
    }
    
}
