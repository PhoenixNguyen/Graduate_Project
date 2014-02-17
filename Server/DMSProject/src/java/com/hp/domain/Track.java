package com.hp.domain;

import java.sql.Timestamp;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "Track")
public class Track {
	private String mMaNhanVien;
	private String mMaKhachHang;
    private Timestamp mThoiGian;
    private float mViDo;
    private float mKinhdo;
    private String mGhiChu;
    
    public Track(String pMaNhanVien, String pMaKhachHang, Timestamp pThoiGian, 
    		float pViDo, float pKinhdo, String pGhiChu){
    	this.mMaNhanVien = pMaNhanVien;
    	this.mMaKhachHang = pMaKhachHang;
    	this.mThoiGian = pThoiGian;
    	this.mViDo = pViDo;
    	this.mKinhdo = pKinhdo;
    	this.mGhiChu = pGhiChu;
    }
    
    @XmlElement
    public String getmMaNhanVien() {
		return mMaNhanVien;
	}
    public void setmMaNhanVien(String mMaNhanVien) {
            this.mMaNhanVien = mMaNhanVien;
    }
    
    @XmlElement
    public String getmMaKhachHang() {
            return mMaKhachHang;
    }
    public void setmMaKhachHang(String mMaKhachHang) {
            this.mMaKhachHang = mMaKhachHang;
    }
    
    @XmlElement
    public Timestamp getmThoiGian() {
            return mThoiGian;
    }
    public void setmThoiGian(Timestamp mThoiGian) {
            this.mThoiGian = mThoiGian;
    }
    
    @XmlElement
    public float getmViDo() {
            return mViDo;
    }
    public void setmViDo(float mViDo) {
            this.mViDo = mViDo;
    }
    
    @XmlElement
    public float getmKinhdo() {
            return mKinhdo;
    }
    public void setmKinhdo(float mKinhdo) {
            this.mKinhdo = mKinhdo;
    }
    
    @XmlElement
    public String getmGhiChu() {
            return mGhiChu;
    }
    public void setmGhiChu(String mGhiChu) {
            this.mGhiChu = mGhiChu;
    }
	
	
}
