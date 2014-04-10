/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * variabe in Object compatable with TakeOrderDetail
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
@Table(name="tb_chitietdonbanhang")

public class SaleOrderDetail {
    @Id
    @GeneratedValue
    
    @Column(name="chitietdonbanhang_stt")
    private Integer mSerial;
    @Column(name="chitietdonbanhang_ma_hoa_don")
    private String mTakeOrderID;
    @Column(name="chitietdonbanhang_dong")
    private Integer mLine;
    @Column(name="chitietdonbanhang_ma_hang")
    private String mProductID;
    @Column(name="chitietdonbanhang_ma_vach")
    private String mBarcode;
    @Column(name="chitietdonbanhang_ten_san_pham")
    private String mProductName;
    @Column(name="chitietdonbanhang_don_gia_sau_thue", nullable = true)
    private Float mAfterOrderPrice;
    @Column(name="chitietdonbanhang_don_gia_truoc_thue", nullable = true)
    private Float mBeforeOrderPrice;
    @Column(name="chitietdonbanhang_thue", nullable = true)
    private Float mTax;
    @Column(name="chitietdonbanhang_giam_gia" , nullable = true)
    private Integer mDiscount;
    @Column(name="chitietdonbanhang_thanh_tien", nullable = true)
    private Float mPriceTotal;
    @Column(name="chitietdonbanhang_ma_kho", nullable = true)
    private String mStockID;
    @Column(name="chitietdonbanhang_so_luong")
    private Integer mNumber;
    @Column(name="chitietdonbanhang_don_vi_tinh")
    private String mUnit;
    @Column(name="chitietdonbanhang_ty_gia", nullable = true)
    private Float mExchangeRate;
    @Column(name="chitietdonbanhang_ghi_chu")
    private String mNote;
    @Column(name="chitietdonbanhang_hang_khuyen_mai")
    private int mPromotionalProductMount;

    public int getmPromotionalProductMount() {
        return mPromotionalProductMount;
    }

    public void setmPromotionalProductMount(int mPromotionalProductMount) {
        this.mPromotionalProductMount = mPromotionalProductMount;
    }
    
    public String getmNote() {
        return mNote;
    }

    public void setmNote(String mNote) {
        this.mNote = mNote;
    }
    
    public SaleOrderDetail(String mTakeOrderID, Integer mLine, String mProductID, String mBarcode, 
            String mProductName, Float mAfterOrderPrice, Float mBeforeOrderPrice, Float mTax, 
            Integer mDiscount, Float mPriceTotal, String mStockID, Integer mNumber, String mUnit, Float mExchangeRate) {
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
    
    public SaleOrderDetail(TakeOrderDetail pTakeOrderDetail){
        this.mTakeOrderID = pTakeOrderDetail.getmTakeOrderID();
        this.mLine = pTakeOrderDetail.getmLine();
        this.mProductID = pTakeOrderDetail.getmProductID();
        this.mBarcode = pTakeOrderDetail.getmBarcode();
        this.mProductName = pTakeOrderDetail.getmProductName();
        this.mAfterOrderPrice = pTakeOrderDetail.getmAfterOrderPrice();
        this.mBeforeOrderPrice = pTakeOrderDetail.getmBeforeOrderPrice();
        this.mTax = pTakeOrderDetail.getmTax();
        this.mDiscount = pTakeOrderDetail.getmDiscount();
        this.mPriceTotal = pTakeOrderDetail.getmPriceTotal();
        this.mStockID = pTakeOrderDetail.getmStockID();
        this.mNumber = pTakeOrderDetail.getmNumber();
        this.mUnit = pTakeOrderDetail.getmUnit();
        this.mExchangeRate = pTakeOrderDetail.getmExchangeRate();
    }
    public SaleOrderDetail(){
        
    }
    public Integer getmSerial() {
        return mSerial;
    }

    public void setmSerial(Integer mSerial) {
        this.mSerial = mSerial;
    }

    public String getmTakeOrderID() {
        return mTakeOrderID;
    }

    public void setmTakeOrderID(String mTakeOrderID) {
        this.mTakeOrderID = mTakeOrderID;
    }

    public Integer getmLine() {
        return mLine;
    }

    public void setmLine(Integer mLine) {
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

    public Float getmAfterOrderPrice() {
        return mAfterOrderPrice;
    }

    public void setmAfterOrderPrice(Float mAfterOrderPrice) {
        this.mAfterOrderPrice = mAfterOrderPrice;
    }

    public Float getmBeforeOrderPrice() {
        return mBeforeOrderPrice;
    }

    public void setmBeforeOrderPrice(Float mBeforeOrderPrice) {
        this.mBeforeOrderPrice = mBeforeOrderPrice;
    }

    public Float getmTax() {
        return mTax;
    }

    public void setmTax(Float mTax) {
        this.mTax = mTax;
    }

    public Integer getmDiscount() {
        return mDiscount;
    }

    public void setmDiscount(Integer mDiscount) {
        this.mDiscount = mDiscount;
    }

    public Float getmPriceTotal() {
        return mPriceTotal;
    }

    public void setmPriceTotal(Float mPriceTotal) {
        this.mPriceTotal = mPriceTotal;
    }

    public String getmStockID() {
        return mStockID;
    }

    public void setmStockID(String mStockID) {
        this.mStockID = mStockID;
    }

    public Integer getmNumber() {
        return mNumber;
    }

    public void setmNumber(Integer mNumber) {
        this.mNumber = mNumber;
    }

    public String getmUnit() {
        return mUnit;
    }

    public void setmUnit(String mUnit) {
        this.mUnit = mUnit;
    }

    public Float getmExchangeRate() {
        return mExchangeRate;
    }

    public void setmExchangeRate(Float mExchangeRate) {
        this.mExchangeRate = mExchangeRate;
    }
    
}
