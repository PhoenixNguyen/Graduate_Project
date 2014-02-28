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
@Table(name="tb_khachhang")
public class Product {
    @Id
    @GeneratedValue
    
    @Column(name="sanpham_stt")
    private int mSerial;
    @Column(name="sanpham_ma_vach")
    private String mBarcode;
    @Column(name="sanpham_ma_san_pham")
    private String mProductID;
    @Column(name="sanpham_ten_hang_hoa")
    private String mProductName;
    @Column(name="sanpham_thuong_hieu")
    private String mBrand;
    @Column(name="sanpham_xuat_xu")
    private String mOrigin;
    @Column(name="sanpham_quy_cach_packing")
    private String mPackingSpecifications;
    @Column(name="sanpham_dinh_luong")
    private String mQuantification;
    @Column(name="sanpham_thue")
    private float mVATTax;
    @Column(name="sanpham_gia_nhap")
    private float mImportPrices;
    @Column(name="sanpham_gia_ban")
    private float mExportPrices;
    @Column(name="sanpham_nha_cung_cap")
    private String mProvider;
    @Column(name="sanpham_mo_ta")
    private String mDescription;
    @Column(name="sanpham_anh_san_pham")
    private String mProductImage;

    public int getmSerial() {
        return mSerial;
    }

    public void setmSerial(int mSerial) {
        this.mSerial = mSerial;
    }

    public String getmBarcode() {
        return mBarcode;
    }

    public void setmBarcode(String mBarcode) {
        this.mBarcode = mBarcode;
    }

    public String getmProductID() {
        return mProductID;
    }

    public void setmProductID(String mProductID) {
        this.mProductID = mProductID;
    }

    public String getmProductName() {
        return mProductName;
    }

    public void setmProductName(String mProductName) {
        this.mProductName = mProductName;
    }

    public String getmBrand() {
        return mBrand;
    }

    public void setmBrand(String mBrand) {
        this.mBrand = mBrand;
    }

    public String getmOrigin() {
        return mOrigin;
    }

    public void setmOrigin(String mOrigin) {
        this.mOrigin = mOrigin;
    }

    public String getmPackingSpecifications() {
        return mPackingSpecifications;
    }

    public void setmPackingSpecifications(String mPackingSpecifications) {
        this.mPackingSpecifications = mPackingSpecifications;
    }

    public String getmQuantification() {
        return mQuantification;
    }

    public void setmQuantification(String mQuantification) {
        this.mQuantification = mQuantification;
    }

    public float getmVATTax() {
        return mVATTax;
    }

    public void setmVATTax(float mVATTax) {
        this.mVATTax = mVATTax;
    }

    public float getmImportPrices() {
        return mImportPrices;
    }

    public void setmImportPrices(float mImportPrices) {
        this.mImportPrices = mImportPrices;
    }

    public float getmExportPrices() {
        return mExportPrices;
    }

    public void setmExportPrices(float mExportPrices) {
        this.mExportPrices = mExportPrices;
    }

    public String getmProvider() {
        return mProvider;
    }

    public void setmProvider(String mProvider) {
        this.mProvider = mProvider;
    }

    public String getmDescription() {
        return mDescription;
    }

    public void setmDescription(String mDescription) {
        this.mDescription = mDescription;
    }

    public String getmProductImage() {
        return mProductImage;
    }

    public void setmProductImage(String mProductImage) {
        this.mProductImage = mProductImage;
    }
    
}
