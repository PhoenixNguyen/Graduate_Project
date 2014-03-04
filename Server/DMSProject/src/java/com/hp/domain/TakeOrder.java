/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import java.sql.Timestamp;
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
@Table(name="tb_hoadondathang")
public class TakeOrder {
    
    @Id
    @GeneratedValue
    
    @Column(name="hoadondathang_stt")
    private int mSerial;
    @Column(name="hoadondathang_ma_hoa_don")
    private String mID;
    @Column(name="hoadondathang_ngay_dat_hang")
    private Timestamp mTakeOrderDate;
    @Column(name="hoadondathang_ngay_giao_hang_du_kien")
    private Timestamp mDeliveryDate;
    @Column(name="hoadondathang_ma_khach_hang")
    private String mCustomerID;
    @Column(name="hoadondathang_ten_khach_hang")
    private String mCustomerName;
    @Column(name="hoadondathang_dia_chi")
    private String mCustomerAddress;
    @Column(name="hoadondathang_so_dien_thoai")
    private String mPhoneNumber;
    @Column(name="hoadondathang_dia_chi_giao_hang")
    private String mDeliveryAddress;
    @Column(name="hoadondathang_hinh_thuc_van_chuyen")
    private String mShippingVehicle;
    @Column(name="hoadondathang_thue")
    private Float mTax;
    @Column(name="hoadondathang_tien_truoc_thue")
    private Float mBeforePrice;
    @Column(name="hoadondathang_tien_sau_thue")
    private Float mAfterPrivate;
    @Column(name="hoadondathang_giam_gia")
    private Float mDiscount;
    @Column(name="hoadondathang_trang_thai_don_hang")
    private int mOrderStatus;
    @Column(name="hoadondathang_ngay_tao_hoa_don")
    private Timestamp mOrderEstablishDate;
    @Column(name="hoadondathang_ngay_sua_hoa_don")
    private Timestamp mOrderEditDate;
    @Column(name="hoadondathang_nguoi_tao")
    private String mCreater;
    @Column(name="hoadondathang_nguoi_sua")
    private String mEditer;

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

    public Float getmTax() {
        return mTax;
    }

    public void setmTax(Float mTax) {
        this.mTax = mTax;
    }

    
    public Float getmBeforePrice() {
        return mBeforePrice;
    }

    public void setmBeforePrice(Float mBeforePrice) {
        this.mBeforePrice = mBeforePrice;
    }

    public Float getmAfterPrivate() {
        return mAfterPrivate;
    }

    public void setmAfterPrivate(Float mAfterPrivate) {
        this.mAfterPrivate = mAfterPrivate;
    }

    public Float getmDiscount() {
        return mDiscount;
    }

    public void setmDiscount(Float mDiscount) {
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
