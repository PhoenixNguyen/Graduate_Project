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
import org.hibernate.validator.Min;

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
    private Integer mSerial;
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
    private Integer mOrderStatus;
    @Column(name="hoadondathang_ngay_tao_hoa_don")
    private Timestamp mOrderEstablishDate;
    @Column(name="hoadondathang_ngay_sua_hoa_don")
    private Timestamp mOrderEditDate;
    @Column(name="hoadondathang_nguoi_tao")
    private String mCreater;
    @Column(name="hoadondathang_nguoi_sua")
    private String mEditer;
    @Column(name="hoadondathang_ghi_chu")
    private String mNote;

    
    public String getMNote() {
        return mNote;
    }

    public void setMNote(String mNote) {
        this.mNote = mNote;
    }
    
    public Object[] toArray(){
        return new Object[]{
            mID,
            mTakeOrderDate,
            mDeliveryDate,
            mCustomerID,
            mCustomerName,
            mCustomerAddress,
            mPhoneNumber,
            mDeliveryAddress,
            mShippingVehicle,
            mTax,
            mBeforePrice,
            mAfterPrivate,
            mDiscount,
            mOrderStatus,
            mOrderEstablishDate,
            mOrderEditDate,
            mCreater,
            mEditer
        };
    }
    public Object[] toTitleArray(){
        return new Object[]{
            "Mã hóa đơn",
            "Ngày tạo",
            "Ngày giao",
            "Mã khách hàng",
            "Tên khách hàng",
            "Địa chỉ",
            "Số điện thoại",
            "Địa chỉ giao",
            "Phương tiện",
            "Thuế",
            "Giá trước thuế",
            "Giá sau thuế",
            "Giảm giá",
            "Trạng thái",
            "Ngày lập",
            "Ngày sửa",
            "Người tạo",
            "Người sửa"
        };
    }
    public TakeOrder(){
        
    }
    public Integer getMSerial() {
        return mSerial;
    }

    public void setMSerial(Integer mSerial) {
        this.mSerial = mSerial;
    }

    public String getMID() {
        return mID;
    }

    public void setMID(String mID) {
        this.mID = mID;
    }

    public Timestamp getMTakeOrderDate() {
        return mTakeOrderDate;
    }

    public void setMTakeOrderDate(Timestamp mTakeOrderDate) {
        this.mTakeOrderDate = mTakeOrderDate;
    }

    public Timestamp getMDeliveryDate() {
        return mDeliveryDate;
    }

    public void setMDeliveryDate(Timestamp mDeliveryDate) {
        this.mDeliveryDate = mDeliveryDate;
    }

    public String getMCustomerID() {
        return mCustomerID;
    }

    public void setMCustomerID(String mCustomerID) {
        this.mCustomerID = mCustomerID;
    }

    public String getMCustomerName() {
        return mCustomerName;
    }

    public void setMCustomerName(String mCustomerName) {
        this.mCustomerName = mCustomerName;
    }

    public String getMCustomerAddress() {
        return mCustomerAddress;
    }

    public void setMCustomerAddress(String mCustomerAddress) {
        this.mCustomerAddress = mCustomerAddress;
    }

    public String getMPhoneNumber() {
        return mPhoneNumber;
    }

    public void setMPhoneNumber(String mPhoneNumber) {
        this.mPhoneNumber = mPhoneNumber;
    }

    public String getMDeliveryAddress() {
        return mDeliveryAddress;
    }

    public void setMDeliveryAddress(String mDeliveryAddress) {
        this.mDeliveryAddress = mDeliveryAddress;
    }

    public String getMShippingVehicle() {
        return mShippingVehicle;
    }

    public void setMShippingVehicle(String mShippingVehicle) {
        this.mShippingVehicle = mShippingVehicle;
    }

    public Float getMTax() {
        return mTax;
    }

    public void setMTax(Float mTax) {
        this.mTax = mTax;
    }

    
    public Float getMBeforePrice() {
        return mBeforePrice;
    }

    public void setMBeforePrice(Float mBeforePrice) {
        this.mBeforePrice = mBeforePrice;
    }

    public Float getMAfterPrivate() {
        return mAfterPrivate;
    }

    public void setMAfterPrivate(Float mAfterPrivate) {
        this.mAfterPrivate = mAfterPrivate;
    }

    public Float getMDiscount() {
        if(mDiscount <=0)
            mDiscount =0F;
        return mDiscount;
    }

    public void setMDiscount(Float mDiscount) {
        this.mDiscount = mDiscount;
    }

    public Integer getMOrderStatus() {
        return mOrderStatus;
    }

    public void setMOrderStatus(Integer mOrderStatus) {
        this.mOrderStatus = mOrderStatus;
    }

    public Timestamp getMOrderEstablishDate() {
        return mOrderEstablishDate;
    }

    public void setMOrderEstablishDate(Timestamp mOrderEstablishDate) {
        this.mOrderEstablishDate = mOrderEstablishDate;
    }

    public Timestamp getMOrderEditDate() {
        return mOrderEditDate;
    }

    public void setMOrderEditDate(Timestamp mOrderEditDate) {
        this.mOrderEditDate = mOrderEditDate;
    }

    public String getMCreater() {
        return mCreater;
    }

    public void setMCreater(String mCreater) {
        this.mCreater = mCreater;
    }

    public String getMEditer() {
        return mEditer;
    }

    public void setMEditer(String mEditer) {
        this.mEditer = mEditer;
    }
            
}
