/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author HP
 */

@Entity
@Table(name="tb_chitietdondathang")

public class TakeOrderDetail {
    @Id
    @GeneratedValue
    
    @Column(name="chitietdondathang_stt")
    private int mSerial;
    @Column(name="chitietdondathang_ma_hoa_don")
    private String mTakeOrderID;
    @Column(name="chitietdondathang_dong")
    private int mLine;
    @Column(name="chitietdondathang_ma_hang")
    private String mProductID;
    @Column(name="chitietdondathang_ma_vach")
    private String mBarcode;
    @Column(name="chitietdondathang_ten_san_pham")
    private String mProductName;
    @Column(name="chitietdondathang_don_gia_sau_thue")
    private float mAfterOrderPrice;
    @Column(name="chitietdondathang_don_gia_truoc_thue")
    private float mBeforeOrderPrice;
    @Column(name="chitietdondathang_thue")
    private float mTax;
    @Column(name="chitietdondathang_giam_gia")
    private float mDiscount;
    @Column(name="chitietdondathang_thanh_tien")
    private float mPriceTotal;
    @Column(name="chitietdondathang_ma_kho")
    private String mStockID;
    @Column(name="chitietdondathang_so_luong")
    private int mNumber;
    @Column(name="chitietdondathang_don_vi_tinh")
    private String mUnit;
    @Column(name="chitietdondathang_ty_gia")
    private float mExchangeRate;
    
    
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
