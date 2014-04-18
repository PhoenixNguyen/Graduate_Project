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
import org.hibernate.annotations.Type;
import org.hibernate.validator.Length;
import org.hibernate.validator.Max;
import org.hibernate.validator.Min;
import org.hibernate.validator.NotEmpty;
import org.hibernate.validator.Pattern;
import org.hibernate.validator.Valid;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tb_khachhang")

public class Customer {
    @Id
    @GeneratedValue
    
    @Column(name="khachhang_stt")
    private int mStt;
    @Column(name="khachhang_tinh_thanh")
    private String mTinhThanh;
    @Column(name="khachhang_tuyen_ban_hang_thu")
    private String mTuyenBanHangThu;
    @Column(name="khachhang_ma_nv")
    private String mMaNhanVien;
    @Column(name="khachhang_x")
    private String mX;
      
    @NotEmpty(message = "Mã khách hàng không được trống")
//    @Pattern(regex="[A-Za-z0-9\\._]+",message="Mã khách hàng chỉ chứa a-z, A-Z, 0-9, .")
//    @Length(min = 3 , max = 255 ,message= "Mã khách hàng phải có độ dài 3-255 ký tự")
    @Column(name="khachhang_ma_dt")
    @Valid
    private String mMaDoiTuong;
    @Column(name="khachhang_doi_tuong")
    private String mDoiTuong;
    
    @Column(name="khachhang_diachi")
    private String mDiaChi;
    @Column(name="khachhang_dien_thoai")
    private String mDienThoai;
    @Column(name="khachhang_fax")
    private String mFax;
    @Column(name="khachhang_ghi_chu")
    private String mGhiChu;
    
    @Column(name="khachhang_toa_do_x")
    private Double mXCoordinates;
    @Column(name="khachhang_toa_do_y")
    private Double mYCoordinates;

    
    public int getMStt() {
        return mStt;
    }

    public void setMStt(int mStt) {
        this.mStt = mStt;
    }

    public String getMTinhThanh() {
        return mTinhThanh;
    }

    public void setMTinhThanh(String mTinhThanh) {
        this.mTinhThanh = mTinhThanh;
    }
    public String getMTuyenBanHangThu() {
        return mTuyenBanHangThu;
    }

    public void setMTuyenBanHangThu(String mTuyenBanHangThu) {
        this.mTuyenBanHangThu = mTuyenBanHangThu;
    }
    public String getMMaNhanVien() {
        return mMaNhanVien;
    }

    public void setMMaNhanVien(String mMaNhanVien) {
        this.mMaNhanVien = mMaNhanVien;
    }
    public String getMX() {
        return mX;
    }

    public void setMX(String mX) {
        this.mX = mX;
    }
  
    public String getMMaDoiTuong() {
        return mMaDoiTuong;
    }

    public void setMMaDoiTuong(String mMaDoiTuong) {
        this.mMaDoiTuong = mMaDoiTuong;
    }
    

    public String getMDoiTuong() {
        return mDoiTuong;
    }

    public void setMDoiTuong(String mDoiTuong) {
        this.mDoiTuong = mDoiTuong;
    }
    
    public String getMDiaChi() {
        return mDiaChi;
    }

    public void setMDiaChi(String mDiaChi) {
        this.mDiaChi = mDiaChi;
    }
    
    public String getMDienThoai() {
        return mDienThoai;
    }

    public void setMDienThoai(String mDienThoai) {
        this.mDienThoai = mDienThoai;
    }
    
    public String getMFax() {
        return mFax;
    }

    public void setMFax(String mFax) {
        this.mFax = mFax;
    }
    
    public String getMGhiChu() {
        return mGhiChu;
    }

    public void setMGhiChu(String mGhiChu) {
        this.mGhiChu = mGhiChu;
    }
             
    public Double getMXCoordinates() {
        return mXCoordinates;
    }

    public void setMXCoordinates(Double mXCoordinates) {
        this.mXCoordinates = mXCoordinates;
    }
    
    public Double getMYCoordinates() {
        return mYCoordinates;
    }

    public void setMYCoordinates(Double mYCoordinates) {
        this.mYCoordinates = mYCoordinates;
    }
    
    public Customer(){
        
    }
}
