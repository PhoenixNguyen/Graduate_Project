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
@Table(name="tb_nhanvien")
public class Staff {
    @Id
    @GeneratedValue
    
    @Column(name="nhanvien_stt")
    private int mSTT;

    
    @Column(name="nhanvien_ma_nhan_vien")
    private String mID;
    @Column(name="nhanvien_ho_ten")
    private String mName;
    @Column(name="nhanvien_diachia")
    private String mAdress;
    @Column(name="nhanvien_chuc_vu")
    private String mJob;
    @Column(name="nhanvien_so_dien_thoai")
    private String mPhone;
    @Column(name="nhanvien_ngay_gia_nhap")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date mDate;
    @Column(name="nhanvien_nguoi_quan_ly")
    private String mManager;
    
    public int getmSTT() {
        return mSTT;
    }

    public void setmSTT(int mSTT) {
        this.mSTT = mSTT;
    }
    
    public String getmID() {
        return mID;
    }

    public void setmID(String mID) {
        this.mID = mID;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getmAdress() {
        return mAdress;
    }

    public void setmAdress(String mAdress) {
        this.mAdress = mAdress;
    }

    public String getmJob() {
        return mJob;
    }

    public void setmJob(String mJob) {
        this.mJob = mJob;
    }

    public String getmPhone() {
        return mPhone;
    }

    public void setmPhone(String mPhone) {
        this.mPhone = mPhone;
    }

    public Date getmDate() {
        return mDate;
    }

    public void setmDate(Date mDate) {
        this.mDate = mDate;
    }

    public String getmManager() {
        return mManager;
    }

    public void setmManager(String mManager) {
        this.mManager = mManager;
    }
    
    
}
