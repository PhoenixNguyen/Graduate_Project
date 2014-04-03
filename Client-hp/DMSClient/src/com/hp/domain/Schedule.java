/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

//import javax.xml.bind.annotation.XmlElement;
//import javax.xml.bind.annotation.XmlRootElement;


/**
 *
 * @author HP
 */


public class Schedule {
    
    private int mStt;
    private String mMaNV;
    private String mMaKH;
    private Timestamp mDate;
    private boolean mStatus;

    @SuppressWarnings("deprecation")
	public Schedule(String pMaNV, String pMaKH, Timestamp pDate, boolean pStatus){
    	this.mMaNV = pMaNV;
    	this.mMaKH = pMaKH;
    	this.mStatus = pStatus;
    	    	
    	this.mDate = pDate;
    }
    
    public Schedule(){
    	
    }
    
    public int getmStt() {
        return mStt;
    }

    public void setmStt(int mStt) {
        this.mStt = mStt;
    }

    public String getmMaNV() {
        return mMaNV;
    }

    public void setmMaNV(String mMaNV) {
        this.mMaNV = mMaNV;
    }

    public String getmMaKH() {
        return mMaKH;
    }

    public void setmMaKH(String mMaKH) {
        this.mMaKH = mMaKH;
    }

    public Timestamp getmDate() {
        return mDate;
    }

    public void setmDate(Timestamp mDate) {
        this.mDate = mDate;
    }

    public boolean ismStatus() {
        return mStatus;
    }

    public void setmStatus(boolean mStatus) {
        this.mStatus = mStatus;
    }
    
}
