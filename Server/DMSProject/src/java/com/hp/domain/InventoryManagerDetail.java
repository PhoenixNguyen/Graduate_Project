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
@Table(name="tb_kiemkhochitiet")

public class InventoryManagerDetail {
    @Id
    @GeneratedValue
    
    @Column(name="kiemkhochitiet_stt")
    private Integer mSerial;
    @Column(name="kiemkhochitiet_ma_hoa_don")
    private String mTakeOrderID;
    @Column(name="kiemkhochitiet_dong")
    private Integer mLine;
    @Column(name="kiemkhochitiet_ma_hang")
    private String mProductID;
    @Column(name="kiemkhochitiet_ma_vach")
    private String mBarcode;
    @Column(name="kiemkhochitiet_ten_san_pham")
    private String mProductName;
    @Column(name="kiemkhochitiet_don_gia_sau_thue", nullable = true)
    private Float mAfterOrderPrice;
    @Column(name="kiemkhochitiet_don_gia_truoc_thue", nullable = true)
    private Float mBeforeOrderPrice;
    @Column(name="kiemkhochitiet_thue", nullable = true)
    private Float mTax;
    @Column(name="kiemkhochitiet_giam_gia" , nullable = true)
    private Float mDiscount;
    @Column(name="kiemkhochitiet_thanh_tien", nullable = true)
    private Float mPriceTotal;
    @Column(name="kiemkhochitiet_ma_kho", nullable = true)
    private String mStockID;
    @Column(name="kiemkhochitiet_so_luong")
    private Integer mNumber;
    @Column(name="kiemkhochitiet_don_vi_tinh")
    private String mUnit;
    @Column(name="kiemkhochitiet_ty_gia", nullable = true)
    private Float mExchangeRate;
    
    public Object[] toArray(){
        return new Object[] {
            mTakeOrderID,
            mLine,
            mProductID,
            mBarcode,
            mProductName,
            mUnit,
            mAfterOrderPrice,
            mBeforeOrderPrice,
            mNumber,
            mTax,
            mExchangeRate,
            mDiscount,
            mPriceTotal,
            mStockID
            
            
            
        };
    }
    
    public Object[] toTitleArray(){
        return new Object[] {
            "Mã hóa đơn",
            "Dòng",
            "Mã sản phẩm",
            "Mã vạch",
            "Tên sản phẩm",
            "Đơn vị",
            "Giá trước thuế",
            "Giá sau thuế",
            "Số lượng",
            "Thuế",
            "Tỷ giá",
            "Giảm giá",
            "Giá tổng",
            "Mã kho"
            
            
            
        };
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

    public Float getmDiscount() {
        return mDiscount;
    }

    public void setmDiscount(Float mDiscount) {
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
