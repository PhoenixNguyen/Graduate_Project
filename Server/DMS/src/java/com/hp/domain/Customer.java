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
    
    private int mStt;
    private String mTinhThanh;
    private String mTuyenBanHangThu;
    private String mMaNhanVien;
    private String mX;
    private String mMaDoiTuong;
    private String mDoiTuong;
    
    private String mDiaChi;
    private String mDienThoai;
    private String mFax;
    private String mGhiChu;
    
    private Double mXCoordinates;
    private Double mYCoordinates;

    @Id
    @GeneratedValue
    
    @Column(name="khachhang_stt")
    public int getmStt() {
        return mStt;
    }

    public void setmStt(int mStt) {
        this.mStt = mStt;
    }

    @Column(name="khachhang_tinh_thanh")
    public String getmTinhThanh() {
        return mTinhThanh;
    }

    public void setmTinhThanh(String mTinhThanh) {
        this.mTinhThanh = mTinhThanh;
    }
    @Column(name="khachhang_tuyen_ban_hang_thu")
    public String getmTuyenBanHangThu() {
        return mTuyenBanHangThu;
    }

    public void setmTuyenBanHangThu(String mTuyenBanHangThu) {
        this.mTuyenBanHangThu = mTuyenBanHangThu;
    }
    @Column(name="khachhang_ma_nv")
    public String getmMaNhanVien() {
        return mMaNhanVien;
    }

    public void setmMaNhanVien(String mMaNhanVien) {
        this.mMaNhanVien = mMaNhanVien;
    }
    @Column(name="khachhang_x")
    public String getmX() {
        return mX;
    }

    public void setmX(String mX) {
        this.mX = mX;
    }
    
    @NotEmpty(message = "Mã khách hàng không được trống")
//    @Pattern(regex="[A-Za-z0-9\\._]+",message="Mã khách hàng chỉ chứa a-z, A-Z, 0-9, .")
//    @Length(min = 3 , max = 255 ,message= "Mã khách hàng phải có độ dài 3-255 ký tự")
    @Column(name="khachhang_ma_dt")
    @Valid
    public String getmMaDoiTuong() {
        return mMaDoiTuong;
    }

    public void setmMaDoiTuong(String mMaDoiTuong) {
        this.mMaDoiTuong = mMaDoiTuong;
    }
    

    @Column(name="khachhang_doi_tuong")
    public String getmDoiTuong() {
        return mDoiTuong;
    }

    public void setmDoiTuong(String mDoiTuong) {
        this.mDoiTuong = mDoiTuong;
    }
    
    @Column(name="khachhang_diachi")
    public String getmDiaChi() {
        return mDiaChi;
    }

    public void setmDiaChi(String mDiaChi) {
        this.mDiaChi = mDiaChi;
    }
    @Column(name="khachhang_dien_thoai")
    public String getmDienThoai() {
        return mDienThoai;
    }

    public void setmDienThoai(String mDienThoai) {
        this.mDienThoai = mDienThoai;
    }
    @Column(name="khachhang_fax")
    public String getmFax() {
        return mFax;
    }

    public void setmFax(String mFax) {
        this.mFax = mFax;
    }
    @Column(name="khachhang_ghi_chu")
    public String getmGhiChu() {
        return mGhiChu;
    }

    public void setmGhiChu(String mGhiChu) {
        this.mGhiChu = mGhiChu;
    }
    @Column(name="khachhang_toa_do_x")         
    public Double getmXCoordinates() {
        return mXCoordinates;
    }

    public void setmXCoordinates(Double mXCoordinates) {
        this.mXCoordinates = mXCoordinates;
    }
    @Column(name="khachhang_toa_do_y")
    public Double getmYCoordinates() {
        return mYCoordinates;
    }

    public void setmYCoordinates(Double mYCoordinates) {
        this.mYCoordinates = mYCoordinates;
    }
    
    public Customer(){
        
    }
}
