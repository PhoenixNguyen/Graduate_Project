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
    
}
