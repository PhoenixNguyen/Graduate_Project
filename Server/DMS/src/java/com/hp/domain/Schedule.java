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
public class Schedule {
    @Id
    @GeneratedValue
    
    @Column(name="schedule_stt")
    private int stt;

    @Column(name="schedule_ma_nv")
    private String maNV;
    @Column(name="schedule_ma_khach_hang")
    private String maKH;
    @Column(name="schedule_date")
    private Timestamp time;
    @Column(name="schedule_trang_thai")
    private boolean status;

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp date) {
        this.time = date;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
