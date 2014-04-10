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
    private Integer mSerial;
    @Column(name="chitietdondathang_ma_hoa_don")
    private String mTakeOrderID;
    @Column(name="chitietdondathang_dong")
    private Integer mLine;
    @Column(name="chitietdondathang_ma_hang")
    private String mProductID;
    @Column(name="chitietdondathang_ma_vach")
    private String mBarcode;
    @Column(name="chitietdondathang_ten_san_pham")
    private String mProductName;
    @Column(name="chitietdondathang_don_gia_sau_thue", nullable = true)
    private Float mAfterOrderPrice;
    @Column(name="chitietdondathang_don_gia_truoc_thue", nullable = true)
    private Float mBeforeOrderPrice;
    @Column(name="chitietdondathang_thue", nullable = true)
    private Float mTax;
    @Column(name="chitietdondathang_giam_gia" , nullable = true)
    private Integer mDiscount;
    @Column(name="chitietdondathang_thanh_tien", nullable = true)
    private Float mPriceTotal;
    @Column(name="chitietdondathang_ma_kho", nullable = true)
    private String mStockID;
    @Column(name="chitietdondathang_so_luong")
    private Integer mNumber;
    @Column(name="chitietdondathang_don_vi_tinh")
    private String mUnit;
    @Column(name="chitietdondathang_ty_gia", nullable = true)
    private Float mExchangeRate;
    @Column(name="chitietdondathang_ghi_chu")
    private String mNote;
    @Column(name="chitietdondathang_hang_khuyen_mai")
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