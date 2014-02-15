/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import java.sql.Timestamp;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author HP
 */

@Entity
@Table(name= "tb_schedule")
@XmlRootElement(name = "Schedule")
public class Schedule {
    @Id
    @GeneratedValue
    
    @Column(name="schedule_stt")
    private int mStt;
    @Column(name="schedule_ma_nv")
    private String mMaNV;
    @Column(name="schedule_ma_khach_hang")
    private String mMaKH;
    @Column(name="schedule_date")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date mDate;
    @Column(name="schedule_trang_thai")
    private boolean mStatus;

    @XmlElement
    public int getmStt() {
        return mStt;
    }

    public void setmStt(int mStt) {
        this.mStt = mStt;
    }

    @XmlElement
    public String getmMaNV() {
        return mMaNV;
    }

    public void setmMaNV(String mMaNV) {
        this.mMaNV = mMaNV;
    }

    @XmlElement
    public String getmMaKH() {
        return mMaKH;
    }

    public void setmMaKH(String mMaKH) {
        this.mMaKH = mMaKH;
    }

    @XmlElement
    public Date getmDate() {
        return mDate;
    }

    public void setmDate(Date mDate) {
        this.mDate = mDate;
    }

    @XmlElement
    public boolean ismStatus() {
        return mStatus;
    }

    public void setmStatus(boolean mStatus) {
        this.mStatus = mStatus;
    }
    
}
