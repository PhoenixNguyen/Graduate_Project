package com.hp.domain;

import java.sql.Timestamp;

public class RoadManagement {

	private int mSTT;
	private String mMaNhanVien;
	private String mMaKhachHang;
    private Timestamp mThoiGian;
    private float mViDo;
    private float mKinhdo;
    private String mGhiChu;
    
    public RoadManagement(String pMaNhanVien, String pMaKhachHang, Timestamp pThoiGian, 
    		float pViDo, float pKinhdo, String pGhiChu){
    	this.mMaNhanVien = pMaNhanVien;
    	this.mMaKhachHang = pMaKhachHang;
    	this.mThoiGian = pThoiGian;
    	this.mViDo = pViDo;
    	this.mKinhdo = pKinhdo;
    	this.mGhiChu = pGhiChu;
    }
    
	public int getmSTT() {
		return mSTT;
	}

	public void setmSTT(int mSTT) {
		this.mSTT = mSTT;
	}
	
    public String getmMaNhanVien() {
		return mMaNhanVien;
	}
	public void setmMaNhanVien(String mMaNhanVien) {
		this.mMaNhanVien = mMaNhanVien;
	}
	public String getmMaKhachHang() {
		return mMaKhachHang;
	}
	public void setmMaKhachHang(String mMaKhachHang) {
		this.mMaKhachHang = mMaKhachHang;
	}
	public Timestamp getmThoiGian() {
		return mThoiGian;
	}
	public void setmThoiGian(Timestamp mThoiGian) {
		this.mThoiGian = mThoiGian;
	}
	public float getmViDo() {
		return mViDo;
	}
	public void setmViDo(float mViDo) {
		this.mViDo = mViDo;
	}
	public float getmKinhdo() {
		return mKinhdo;
	}
	public void setmKinhdo(float mKinhdo) {
		this.mKinhdo = mKinhdo;
	}
	public String getmGhiChu() {
		return mGhiChu;
	}
	public void setmGhiChu(String mGhiChu) {
		this.mGhiChu = mGhiChu;
	}
	
	
}
