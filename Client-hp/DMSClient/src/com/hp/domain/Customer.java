/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

/**
 *
 * @author HP
 */

public class Customer {
    
    private int mStt;
    private String mMaDoiTuong;
	private String mDoiTuong;
    private String mMaNhanVien;
	private String mTinhThanh;
    private String mTuyenBanHangThu;
    private String mX;    
    private String mDiaChi;
    private String mDienThoai;
    private String mFax;
    private String mGhiChu;
    private double mXCoordinates;
    private double mYCoordinates;

    public Customer(){
    	
    }
    
    public Customer(String mMaDoiTuong, String mDoiTuong, String mMaNhanVien,
			String mTinhThanh, String mTuyenBanHangThu, String mX,
			String mDiaChi, String mDienThoai, String mFax, String mGhiChu) {
		super();
		this.mMaDoiTuong = mMaDoiTuong;
		this.mDoiTuong = mDoiTuong;
		this.mMaNhanVien = mMaNhanVien;
		this.mTinhThanh = mTinhThanh;
		this.mTuyenBanHangThu = mTuyenBanHangThu;
		this.mX = mX;
		this.mDiaChi = mDiaChi;
		this.mDienThoai = mDienThoai;
		this.mFax = mFax;
		this.mGhiChu = mGhiChu;
	}


    public String toString(){
    	return mMaDoiTuong + " " + mDoiTuong;
    }
    

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
    
}
