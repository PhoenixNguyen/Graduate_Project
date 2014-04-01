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

public class Product implements Comparable<Product> {
    
    private int mSerial;
	private String mBarcode;
    private String mProductID;
    private String mProductName;
    private String mBrand;
    private String mOrigin;
    private String mPackingSpecifications;
    private String mQuantification;
	private float mVATTax;
    private float mImportPrices;
    private float mExportPrices;
    private String mProvider;
    private String mDescription;
    private String mProductImage;

    private int mTotal;
    private int mDiscount;
    
    public int getmDiscount() {
		return mDiscount;
	}
	public void setmDiscount(int mDiscount) {
		this.mDiscount = mDiscount;
	}
	public String getmNote() {
		return mNote;
	}
	public void setmNote(String mNote) {
		this.mNote = mNote;
	}

	private String mNote;
    
    public int compareTo(Product a) {
        if ( this.mTotal > a.mTotal )
            return 1;
        else 
            return -1;
//        else {
//             if ( this.timeEnded > a.timeEnded )
//                   return 1;
//             else
//                  return -1;
//         }

     }
	@Override
	public String toString() {
		return mProductID +" " + mProductName;
				
	}


    public Product(int mSerial, String mBarcode, String mProductID,
			String mProductName) {
		super();
		this.mSerial = mSerial;
		this.mBarcode = mBarcode;
		this.mProductID = mProductID;
		this.mProductName = mProductName;
	}

    public Product(){
    	
    }
    
    public int getmTotal() {
		return mTotal;
	}


	public void setmTotal(int mTotal) {
		this.mTotal = mTotal;
	}


    public int getmSerial() {
        return mSerial;
    }

    public void setmSerial(int mSerial) {
        this.mSerial = mSerial;
    }

    public String getmBarcode() {
        return mBarcode;
    }

    public void setmBarcode(String mBarcode) {
        this.mBarcode = mBarcode;
    }

    public String getmProductID() {
        return mProductID;
    }

    public void setmProductID(String mProductID) {
        this.mProductID = mProductID;
    }

    public String getmProductName() {
        return mProductName;
    }

    public void setmProductName(String mProductName) {
        this.mProductName = mProductName;
    }

    public String getmBrand() {
        return mBrand;
    }

    public void setmBrand(String mBrand) {
        this.mBrand = mBrand;
    }

    public String getmOrigin() {
        return mOrigin;
    }

    public void setmOrigin(String mOrigin) {
        this.mOrigin = mOrigin;
    }

    public String getmPackingSpecifications() {
        return mPackingSpecifications;
    }

    public void setmPackingSpecifications(String mPackingSpecifications) {
        this.mPackingSpecifications = mPackingSpecifications;
    }

    public String getmQuantification() {
        return mQuantification;
    }

    public void setmQuantification(String mQuantification) {
        this.mQuantification = mQuantification;
    }

    public float getmVATTax() {
        return mVATTax;
    }

    public void setmVATTax(float mVATTax) {
        this.mVATTax = mVATTax;
    }

    public float getmImportPrices() {
        return mImportPrices;
    }

    public void setmImportPrices(float mImportPrices) {
        this.mImportPrices = mImportPrices;
    }

    public float getmExportPrices() {
        return mExportPrices;
    }

    public void setmExportPrices(float mExportPrices) {
        this.mExportPrices = mExportPrices;
    }

    public String getmProvider() {
        return mProvider;
    }

    public void setmProvider(String mProvider) {
        this.mProvider = mProvider;
    }

    public String getmDescription() {
        return mDescription;
    }

    public void setmDescription(String mDescription) {
        this.mDescription = mDescription;
    }

    public String getmProductImage() {
        return mProductImage;
    }

    public void setmProductImage(String mProductImage) {
        this.mProductImage = mProductImage;
    }
    
}
