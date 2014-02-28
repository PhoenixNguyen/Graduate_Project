/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author HP
 */

@Entity
@Table(name="tb_nhacungcap")
public class Provider {
    @Id
    @GeneratedValue
    
    @Column(name="nhacungcap_stt")
    private int mSerial;
    @Column(name="nhacungcap_id")
    private String mID;
    @Column(name="nhacungcap_ten")
    private String mName;
    @Column(name="nhacungcap_dia_chi")
    private String mAddress;
    @Column(name="nhacungcap_dien_thoai")
    private String mPhoneNumber;
    @Column(name="nhacungcap_fax")
    private String mFax;
    @Column(name="nhacungcap_ghi_chu")
    private String mNote;
    
        
    public int getmSerial() {
        return mSerial;
    }

    public void setmSerial(int mSerial) {
        this.mSerial = mSerial;
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

    public String getmAddress() {
        return mAddress;
    }

    public void setmAddress(String mAddress) {
        this.mAddress = mAddress;
    }

    public String getmPhoneNumber() {
        return mPhoneNumber;
    }

    public void setmPhoneNumber(String mPhoneNumber) {
        this.mPhoneNumber = mPhoneNumber;
    }

    public String getmFax() {
        return mFax;
    }

    public void setmFax(String mFax) {
        this.mFax = mFax;
    }

    public String getmNote() {
        return mNote;
    }

    public void setmNote(String mNote) {
        this.mNote = mNote;
    }
    
}
