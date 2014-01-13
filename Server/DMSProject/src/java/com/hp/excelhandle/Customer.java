/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.excelhandle;

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
    @Column(name="khachhang_ma_dt")
    private String mMaDoiTuong;
    @Column(name="khachhang_doi_tuong")
    private String mDoiTuong;
    @Column(name="khachhang_no_dky")
    private double mNoDKy;
    @Column(name="khachhang_co_dky")
    private double mCoDKy;
    @Column(name="khachhang_no_tky")
    private double mNoTKy;
    @Column(name="khachhang_tien_ban")
    private double mTienBan;
    @Column(name="khachhang_co_tky")
    private double mCoTKy;
    @Column(name="khachhang_ck_gg")
    private double mCKGG;
    @Column(name="khachhang_nhap_lai")
    private double mNhapLai;
    @Column(name="khachhang_no_cky")
    private double mNoCKy;
    @Column(name="khachhang_co_cky")
    private double mCoCKy;
    @Column(name="khachhang_doanh_thu")
    private double mDoanhThu;
    @Column(name="khachhang_ti_le_no_thu")
    private double mPhanTramNoChiaThu;
    @Column(name="khachhang_no_toi_da")
    private double mNoToiDa;
    @Column(name="khachhang_dai_dien")
    private String mDaiDien;
    @Column(name="khachhang_diachi")
    private String mDiaChi;
    @Column(name="khachhang_dien_thoai")
    private String mDienThoai;
    @Column(name="khachhang_fax")
    private String mFax;
    @Column(name="khachhang_ghi_chu")
    private String mGhiChu;
    
    @Column(name="khachhang_toa_do_x")         
    private double mXCoordinates;
    @Column(name="khachhang_toa_do_y")
    private double mYCoordinates;

    
    public int getmStt() {
        return mStt;
    }

    public void setmStt(int mStt) {
        this.mStt = mStt;
    }

    public String getmTinhThanh() {
        return mTinhThanh;
    }

    public void setmTinhThanh(String mTinhThanh) {
        this.mTinhThanh = mTinhThanh;
    }

    public String getmTuyenBanHangThu() {
        return mTuyenBanHangThu;
    }

    public void setmTuyenBanHangThu(String mTuyenBanHangThu) {
        this.mTuyenBanHangThu = mTuyenBanHangThu;
    }

    public String getmMaNhanVien() {
        return mMaNhanVien;
    }

    public void setmMaNhanVien(String mMaNhanVien) {
        this.mMaNhanVien = mMaNhanVien;
    }

    public String getmX() {
        return mX;
    }

    public void setmX(String mX) {
        this.mX = mX;
    }

    public String getmMaDoiTuong() {
        return mMaDoiTuong;
    }

    public void setmMaDoiTuong(String mMaDoiTuong) {
        this.mMaDoiTuong = mMaDoiTuong;
    }

    public String getmDoiTuong() {
        return mDoiTuong;
    }

    public void setmDoiTuong(String mDoiTuong) {
        this.mDoiTuong = mDoiTuong;
    }

    public double getmNoDKy() {
        return mNoDKy;
    }

    public void setmNoDKy(double mNoDKy) {
        this.mNoDKy = mNoDKy;
    }

    public double getmCoDKy() {
        return mCoDKy;
    }

    public void setmCoDKy(double mCoDKy) {
        this.mCoDKy = mCoDKy;
    }

    public double getmNoTKy() {
        return mNoTKy;
    }

    public void setmNoTKy(double mNoTKy) {
        this.mNoTKy = mNoTKy;
    }

    public double getmTienBan() {
        return mTienBan;
    }

    public void setmTienBan(double mTienBan) {
        this.mTienBan = mTienBan;
    }

    public double getmCoTKy() {
        return mCoTKy;
    }

    public void setmCoTKy(double mCoTKy) {
        this.mCoTKy = mCoTKy;
    }

    public double getmCKGG() {
        return mCKGG;
    }

    public void setmCKGG(double mCKGG) {
        this.mCKGG = mCKGG;
    }

    public double getmNhapLai() {
        return mNhapLai;
    }

    public void setmNhapLai(double mNhapLai) {
        this.mNhapLai = mNhapLai;
    }

    public double getmNoCKy() {
        return mNoCKy;
    }

    public void setmNoCKy(double mNoCKy) {
        this.mNoCKy = mNoCKy;
    }

    public double getmCoCKy() {
        return mCoCKy;
    }

    public void setmCoCKy(double mCoCKy) {
        this.mCoCKy = mCoCKy;
    }

    public double getmDoanhThu() {
        return mDoanhThu;
    }

    public void setmDoanhThu(double mDoanhThu) {
        this.mDoanhThu = mDoanhThu;
    }

    public double getmPhanTramNoChiaThu() {
        return mPhanTramNoChiaThu;
    }

    public void setmPhanTramNoChiaThu(double mPhanTramNoChiaThu) {
        this.mPhanTramNoChiaThu = mPhanTramNoChiaThu;
    }

    public double getmNoToiDa() {
        return mNoToiDa;
    }

    public void setmNoToiDa(double mNoToiDa) {
        this.mNoToiDa = mNoToiDa;
    }

    public String getmDaiDien() {
        return mDaiDien;
    }

    public void setmDaiDien(String mDaiDien) {
        this.mDaiDien = mDaiDien;
    }

    public String getmDiaChi() {
        return mDiaChi;
    }

    public void setmDiaChi(String mDiaChi) {
        this.mDiaChi = mDiaChi;
    }

    public String getmDienThoai() {
        return mDienThoai;
    }

    public void setmDienThoai(String mDienThoai) {
        this.mDienThoai = mDienThoai;
    }

    public String getmFax() {
        return mFax;
    }

    public void setmFax(String mFax) {
        this.mFax = mFax;
    }

    public String getmGhiChu() {
        return mGhiChu;
    }

    public void setmGhiChu(String mGhiChu) {
        this.mGhiChu = mGhiChu;
    }

    public double getmXCoordinates() {
        return mXCoordinates;
    }

    public void setmXCoordinates(double mXCoordinates) {
        this.mXCoordinates = mXCoordinates;
    }

    public double getmYCoordinates() {
        return mYCoordinates;
    }

    public void setmYCoordinates(double mYCoordinates) {
        this.mYCoordinates = mYCoordinates;
    }
    
    public Customer(){
        
    }
}
