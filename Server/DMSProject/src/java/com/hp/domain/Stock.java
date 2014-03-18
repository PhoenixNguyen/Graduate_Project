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
@Table(name="tb_kho")
public class Stock {
    
    @Id
    @GeneratedValue
    
    @Column(name="kho_stt")
    private int mSerial;
    @Column(name="kho_ma_san_pham")
    private String mStockID;
    @Column(name="kho_ten_san_pham")
    private String mName;
    @Column(name="kho_gia")
    private Float mPrice;
    @Column(name="kho_ton_dau")
    private Float mBeginningInventory;
    @Column(name="kho_nhap")
    private Float mInput;
    @Column(name="kho_ton_cuoi")
    private Float mLastInventory;
    @Column(name="kho_ban_ra")
    private Float mBanRa;
    @Column(name="kho_order")
    private Float mOrder;
    @Column(name="kho_duyet")
    private Float mDuyet;
    @Column(name="kho_ton_tong_kho")
    private Float mTotalInventory;
    @Column(name="kho_ghi_chu")
    private String mNote;

    public int getmSerial() {
        return mSerial;
    }

    public void setmSerial(int mSerial) {
        this.mSerial = mSerial;
    }

    public String getmStockID() {
        return mStockID;
    }

    public void setmStockID(String mStockID) {
        this.mStockID = mStockID;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String name) {
        this.mName = name;
    }

    public Float getmPrice() {
        return mPrice;
    }

    public void setmPrice(Float mPrice) {
        this.mPrice = mPrice;
    }

    public Float getmBeginningInventory() {
        return mBeginningInventory;
    }

    public void setmBeginningInventory(Float mBeginningInventory) {
        this.mBeginningInventory = mBeginningInventory;
    }

    public Float getmInput() {
        return mInput;
    }

    public void setmInput(Float mInput) {
        this.mInput = mInput;
    }

    public Float getmLastInventory() {
        return mLastInventory;
    }

    public void setmLastInventory(Float mLastInventory) {
        this.mLastInventory = mLastInventory;
    }

    public Float getmBanRa() {
        return mBanRa;
    }

    public void setmBanRa(Float mBanRa) {
        this.mBanRa = mBanRa;
    }

    public Float getmOrder() {
        return mOrder;
    }

    public void setmOrder(Float mOrder) {
        this.mOrder = mOrder;
    }

    public Float getmDuyet() {
        return mDuyet;
    }

    public void setmDuyet(Float mDuyet) {
        this.mDuyet = mDuyet;
    }

    public Float getmTotalInventory() {
        return mTotalInventory;
    }

    public void setmTotalInventory(Float mTotalInventory) {
        this.mTotalInventory = mTotalInventory;
    }

    public String getmNote() {
        return mNote;
    }

    public void setmNote(String mNote) {
        this.mNote = mNote;
    }
    
}
