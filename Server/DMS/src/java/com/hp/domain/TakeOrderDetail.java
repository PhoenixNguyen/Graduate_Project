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

    public int getMPromotionalProductMount() {
        return mPromotionalProductMount;
    }

    public void setMPromotionalProductMount(int mPromotionalProductMount) {
        this.mPromotionalProductMount = mPromotionalProductMount;
    }
    
    public String getMNote() {
        return mNote;
    }

    public void setMNote(String mNote) {
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
    public Integer getMSerial() {
        return mSerial;
    }

    public void setMSerial(Integer mSerial) {
        this.mSerial = mSerial;
    }

    public String getMTakeOrderID() {
        return mTakeOrderID;
    }

    public void setMTakeOrderID(String mTakeOrderID) {
        this.mTakeOrderID = mTakeOrderID;
    }

    public Integer getMLine() {
        return mLine;
    }

    public void setMLine(Integer mLine) {
        this.mLine = mLine;
    }

    public String getMProductID() {
        return mProductID;
    }

    public void setMProductID(String mProductID) {
        this.mProductID = mProductID;
    }

    public String getMBarcode() {
        return mBarcode;
    }

    public void setMBarcode(String mBarcode) {
        this.mBarcode = mBarcode;
    }

    public String getMProductName() {
        return mProductName;
    }

    public void setMProductName(String mProductName) {
        this.mProductName = mProductName;
    }

    public Float getMAfterOrderPrice() {
        return mAfterOrderPrice;
    }

    public void setMAfterOrderPrice(Float mAfterOrderPrice) {
        this.mAfterOrderPrice = mAfterOrderPrice;
    }

    public Float getMBeforeOrderPrice() {
        return mBeforeOrderPrice;
    }

    public void setMBeforeOrderPrice(Float mBeforeOrderPrice) {
        this.mBeforeOrderPrice = mBeforeOrderPrice;
    }

    public Float getMTax() {
        return mTax;
    }

    public void setMTax(Float mTax) {
        this.mTax = mTax;
    }

    public Integer getMDiscount() {
        return mDiscount;
    }

    public void setMDiscount(Integer mDiscount) {
        this.mDiscount = mDiscount;
    }

    public Float getMPriceTotal() {
        return mPriceTotal;
    }

    public void setMPriceTotal(Float mPriceTotal) {
        this.mPriceTotal = mPriceTotal;
    }

    public String getMStockID() {
        return mStockID;
    }

    public void setMStockID(String mStockID) {
        this.mStockID = mStockID;
    }

    public Integer getMNumber() {
        return mNumber;
    }

    public void setMNumber(Integer mNumber) {
        this.mNumber = mNumber;
    }

    public String getMUnit() {
        return mUnit;
    }

    public void setMUnit(String mUnit) {
        this.mUnit = mUnit;
    }

    public Float getMExchangeRate() {
        return mExchangeRate;
    }

    public void setMExchangeRate(Float mExchangeRate) {
        this.mExchangeRate = mExchangeRate;
    }
    
}
