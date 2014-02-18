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

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_quanlyduongdi")

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
    
    public RoadManagement(){
        
    }
    
    @Id
    @GeneratedValue
    
    @Column(name="quanlyduongdi_stt")
    public int getmSTT() {
        return mSTT;
    }

    public void setmSTT(int mSTT) {
        this.mSTT = mSTT;
    }

    @Column(name="quanlyduongdi_ma_nhan_vien")
    public String getmMaNhanVien() {
        return mMaNhanVien;
    }

    public void setmMaNhanVien(String mMaNhanVien) {
        this.mMaNhanVien = mMaNhanVien;
    }

    @Column(name="quanlyduongdi_ma_khach_hang")
    public String getmMaKhachHang() {
        return mMaKhachHang;
    }

    public void setmMaKhachHang(String mMaKhachHang) {
        this.mMaKhachHang = mMaKhachHang;
    }

    @Column(name="quanlyduongdi_thoi_gian")
    public Timestamp getmThoiGian() {
        return mThoiGian;
    }

    public void setmThoiGian(Timestamp mThoiGian) {
        this.mThoiGian = mThoiGian;
    }

    @Column(name="quanlyduongdi_vi_do")
    public float getmViDo() {
        return mViDo;
    }

    public void setmViDo(float mViDo) {
        this.mViDo = mViDo;
    }

    @Column(name="quanlyduongdi_kinh_do")
    public float getmKinhdo() {
        return mKinhdo;
    }

    public void setmKinhdo(float mKinhdo) {
        this.mKinhdo = mKinhdo;
    }

    @Column(name="quanlyduongdi_ghi_chu")
    public String getmGhiChu() {
        return mGhiChu;
    }

    public void setmGhiChu(String mGhiChu) {
        this.mGhiChu = mGhiChu;
    }
    
    
}
