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
    private Timestamp mDate;
    @Column(name="schedule_trang_thai")
    private boolean mStatus;

    @XmlElement
    public int getMStt() {
        return mStt;
    }

    public void setMStt(int mStt) {
        this.mStt = mStt;
    }

    @XmlElement
    public String getMMaNV() {
        return mMaNV;
    }

    public void setMMaNV(String mMaNV) {
        this.mMaNV = mMaNV;
    }

    @XmlElement
    public String getMMaKH() {
        return mMaKH;
    }

    public void setMMaKH(String mMaKH) {
        this.mMaKH = mMaKH;
    }

    @XmlElement
    public Timestamp getMDate() {
        return mDate;
    }

    public void setMDate(Timestamp mDate) {
        this.mDate = mDate;
    }

    @XmlElement
    public boolean isMStatus() {
        return mStatus;
    }

    public void setMStatus(boolean mStatus) {
        this.mStatus = mStatus;
    }
    
}
