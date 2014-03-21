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
import org.hibernate.validator.Length;
import org.hibernate.validator.NotEmpty;
import org.hibernate.validator.Pattern;
import org.hibernate.validator.Valid;

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
    private Integer mSTT;

    @NotEmpty(message = "Mã Nhân viên không được trống")
    @Pattern(regex="[A-Za-z0-9\\.]+",message="Mã Nhân viên chỉ chứa a-z, A-Z, 0-9, .")
    @Length(min = 3 , max = 255 ,message= "Mã Nhân viên phải có độ dài 3-255 ký tự")
    @Column(name="nhanvien_ma_nhan_vien")
    @Valid
    private String mID;
    
    @NotEmpty(message = "Mật khẩu không được trống")
    @Pattern(regex="[A-Za-z0-9\\.]+",message="Mật khẩu chỉ chứa a-z, A-Z, 0-9, .")
    @Length(min = 3 , max = 255 ,message= "Mật khẩu phải có độ dài 3-255 ký tự")
    @Valid
    @Column(name="nhanvien_mat_khau")
    private String mPW;

    @Column(name="nhanvien_ho_ten")
    private String mName;
    @Column(name="nhanvien_dia_chi")
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
    @Column(name="nhanvien_trang_thai")
    private boolean mStatus;
    
    public Integer getmSTT() {
        return mSTT;
    }

    public void setmSTT(Integer mSTT) {
        this.mSTT = mSTT;
    }
    
    public String getmID() {
        return mID;
    }

    public void setmID(String mID) {
        this.mID = mID;
    }
    
    public String getmPW() {
        return mPW;
    }

    public void setmPW(String mPW) {
        this.mPW = mPW;
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
    
    public boolean ismStatus() {
        return mStatus;
    }

    public void setmStatus(boolean mStatus) {
        this.mStatus = mStatus;
    }
    
}
