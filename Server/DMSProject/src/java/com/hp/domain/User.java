/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author HP
 */

@Entity
@Table(name="tb_user")
public class User {
    @Id
    @GeneratedValue
    
    @Column(name="user_stt")
    private int mStt;
    @Column(name="user_id")
    private String mID;
    @Column(name="user_chuc_danh")
    private String mChucDanh;
    @Column(name="user_ho_ten")
    private String mHoTen;
    @Column(name="user_email")
    private String mEmail;
    @Column(name="user_so_dien_thoai")
    private String mSDT;
    @Column(name="user_dia_chi")
    private String mDiaChi;
    @Column(name="user_ghi_chu")
    private String mGhiChu;
    @Column(name="user_ngay_tham_gia")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date mNgayThamGia;
    @Column(name="user_permission")
    private int mPermission;
    @Column(name="user_status")
    private boolean mStatus;

    public int getmStt() {
        return mStt;
    }

    public void setmStt(int mStt) {
        this.mStt = mStt;
    }

    public String getmID() {
        return mID;
    }

    public void setmID(String mID) {
        this.mID = mID;
    }

    public String getmChucDanh() {
        return mChucDanh;
    }

    public void setmChucDanh(String mChucDanh) {
        this.mChucDanh = mChucDanh;
    }

    public String getmHoTen() {
        return mHoTen;
    }

    public void setmHoTen(String mHoTen) {
        this.mHoTen = mHoTen;
    }

    public String getmEmail() {
        return mEmail;
    }

    public void setmEmail(String mEmail) {
        this.mEmail = mEmail;
    }

    public String getmSDT() {
        return mSDT;
    }

    public void setmSDT(String mSDT) {
        this.mSDT = mSDT;
    }

    public String getmDiaChi() {
        return mDiaChi;
    }

    public void setmDiaChi(String mDiaChi) {
        this.mDiaChi = mDiaChi;
    }

    public String getmGhiChu() {
        return mGhiChu;
    }

    public void setmGhiChu(String mGhiChu) {
        this.mGhiChu = mGhiChu;
    }

    public Date getmNgayThamGia() {
        return mNgayThamGia;
    }

    public void setmNgayThamGia(Date mNgayThamGia) {
        this.mNgayThamGia = mNgayThamGia;
    }

    public int getmPermission() {
        return mPermission;
    }

    public void setmPermission(int mPermission) {
        this.mPermission = mPermission;
    }

    public boolean ismStatus() {
        return mStatus;
    }

    public void setmStatus(boolean mStatus) {
        this.mStatus = mStatus;
    }
    
    
    
    
    
    
    
    
    
    
    
}
