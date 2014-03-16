/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * variabe in Object compatable with TakeOrder
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
@Table(name="tb_hoadonbanhang")
public class SaleOrder {
    
    @Id
    @GeneratedValue
    
    @Column(name="hoadonbanhang_stt")
    private Integer mSerial;
    @Column(name="hoadonbanhang_ma_hoa_don")
    private String mID;
    @Column(name="hoadonbanhang_ngay_ban_hang")
    private Timestamp mTakeOrderDate;
    @Column(name="hoadonbanhang_ngay_giao_hang_du_kien")
    private Timestamp mDeliveryDate;
    @Column(name="hoadonbanhang_ma_khach_hang")
    private String mCustomerID;
    @Column(name="hoadonbanhang_ten_khach_hang")
    private String mCustomerName;
    @Column(name="hoadonbanhang_dia_chi")
    private String mCustomerAddress;
    @Column(name="hoadonbanhang_so_dien_thoai")
    private String mPhoneNumber;
    @Column(name="hoadonbanhang_dia_chi_giao_hang")
    private String mDeliveryAddress;
    @Column(name="hoadonbanhang_hinh_thuc_van_chuyen")
    private String mShippingVehicle;
    @Column(name="hoadonbanhang_thue" , nullable = true)
    private Float mTax;
    @Column(name="hoadonbanhang_tien_truoc_thue")
    private Float mBeforePrice;
    @Column(name="hoadonbanhang_tien_sau_thue")
    private Float mAfterPrivate;
    @Column(name="hoadonbanhang_giam_gia")
    private Float mDiscount;
    @Column(name="hoadonbanhang_trang_thai_don_hang")
    private Integer mOrderStatus;
    @Column(name="hoadonbanhang_ngay_tao_hoa_don")
    private Timestamp mOrderEstablishDate;
    @Column(name="hoadonbanhang_ngay_sua_hoa_don")
    private Timestamp mOrderEditDate;
    @Column(name="hoadonbanhang_nguoi_tao")
    private String mCreater;
    @Column(name="hoadonbanhang_nguoi_sua")
    private String mEditer;

    public SaleOrder(String mID, Timestamp mTakeOrderDate, Timestamp mDeliveryDate, String mCustomerID, String mCustomerName, String mCustomerAddress, String mPhoneNumber, String mDeliveryAddress, String mShippingVehicle, Float mTax, Float mBeforePrice, Float mAfterPrivate, Float mDiscount, Integer mOrderStatus, Timestamp mOrderEstablishDate, Timestamp mOrderEditDate, String mCreater, String mEditer) {
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

    public SaleOrder(){
        
    }
    
    public SaleOrder(TakeOrder pTakeOrder){
        this.mID = pTakeOrder.getmID();
        this.mTakeOrderDate = pTakeOrder.getmTakeOrderDate();
        this.mDeliveryDate = pTakeOrder.getmDeliveryDate();
        this.mCustomerID = pTakeOrder.getmCustomerID();
        this.mCustomerName = pTakeOrder.getmCustomerName();
        this.mCustomerAddress = pTakeOrder.getmCustomerAddress();
        this.mPhoneNumber = pTakeOrder.getmPhoneNumber();
        this.mDeliveryAddress = pTakeOrder.getmDeliveryAddress();
        this.mShippingVehicle = pTakeOrder.getmShippingVehicle();
        this.mTax = pTakeOrder.getmTax();
        this.mBeforePrice = pTakeOrder.getmBeforePrice();
        this.mAfterPrivate = pTakeOrder.getmAfterPrivate();
        this.mDiscount = pTakeOrder.getmDiscount();
        this.mOrderStatus = pTakeOrder.getmOrderStatus();
        this.mOrderEstablishDate = pTakeOrder.getmOrderEstablishDate();
        this.mOrderEditDate = pTakeOrder.getmOrderEditDate();
        this.mCreater = pTakeOrder.getmCreater();
        this.mEditer = pTakeOrder.getmEditer();
    }
    public Integer getmSerial() {
        return mSerial;
    }

    public void setmSerial(Integer mSerial) {
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

    public Integer getmOrderStatus() {
        return mOrderStatus;
    }

    public void setmOrderStatus(Integer mOrderStatus) {
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
