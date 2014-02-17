/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import java.sql.Timestamp;
import java.util.Date;

import com.hp.rest.XmlElement;
import com.hp.rest.XmlRootElement;


//import javax.xml.bind.annotation.XmlElement;
//import javax.xml.bind.annotation.XmlRootElement;


/**
 *
 * @author HP
 */


@XmlRootElement
public class Schedule {
    
    private int mStt;
    private String mMaNV;
    private String mMaKH;
    private Date mDate;
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