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
import org.codehaus.jackson.annotate.JsonIgnoreProperties;
import org.hibernate.validator.Length;
import org.hibernate.validator.NotEmpty;
import org.hibernate.validator.Pattern;
import org.hibernate.validator.Valid;

/**
 *
 * @author HP
 */
@Entity
@Table(name="tb_sanpham")
@JsonIgnoreProperties(ignoreUnknown = true)
public class Product {
    
    private Integer mSerial;
    
//    @Valid
    private String mProductID;
    private String mBarcode;
    private String mProductName;
    private String mBrand;
    private String mOrigin;
    private String mPackingSpecifications;
    private String mQuantification;
    private Float mVATTax;
    private Float mImportPrices;
    private Float mExportPrices;
    private String mProvider;
    private String mDescription;
    private String mProductImage;

    @Id
    @GeneratedValue
    
    @Column(name="sanpham_stt")
    public Integer getmSerial() {
        return mSerial;
    }

    public void setmSerial(Integer mSerial) {
        this.mSerial = mSerial;
    }

    @Column(name="sanpham_ma_vach")
    public String getmBarcode() {
        return mBarcode;
    }

    public void setmBarcode(String mBarcode) {
        this.mBarcode = mBarcode;
    }

    @NotEmpty(message = "Mã sản phẩm không được trống")
    @Pattern(regex="[A-Za-z0-9\\._]+",message="Mã sản phẩm chỉ chứa a-z, A-Z, 0-9, ., _")
    @Length(min = 3 , max = 255 ,message= "Mã sản phẩm phải có độ dài 3-255 ký tự")
    @Column(name="sanpham_ma_san_pham")
    public String getmProductID() {
        return mProductID;
    }

    public void setmProductID(String mProductID) {
        this.mProductID = mProductID;
    }

    @Column(name="sanpham_ten_hang_hoa")
    public String getmProductName() {
        return mProductName;
    }

    public void setmProductName(String mProductName) {
        this.mProductName = mProductName;
    }

    @Column(name="sanpham_thuong_hieu")
    public String getmBrand() {
        return mBrand;
    }

    public void setmBrand(String mBrand) {
        this.mBrand = mBrand;
    }

    @Column(name="sanpham_xuat_xu")
    public String getmOrigin() {
        return mOrigin;
    }

    public void setmOrigin(String mOrigin) {
        this.mOrigin = mOrigin;
    }

    @Column(name="sanpham_quy_cach_packing")
    public String getmPackingSpecifications() {
        return mPackingSpecifications;
    }

    public void setmPackingSpecifications(String mPackingSpecifications) {
        this.mPackingSpecifications = mPackingSpecifications;
    }

    @Column(name="sanpham_dinh_luong")
    public String getmQuantification() {
        return mQuantification;
    }

    public void setmQuantification(String mQuantification) {
        this.mQuantification = mQuantification;
    }

    @Column(name="sanpham_thue")
    public Float getmVATTax() {
        return mVATTax;
    }

    public void setmVATTax(Float mVATTax) {
        this.mVATTax = mVATTax;
    }

    @Column(name="sanpham_gia_nhap")
    public Float getmImportPrices() {
        return mImportPrices;
    }

    public void setmImportPrices(Float mImportPrices) {
        this.mImportPrices = mImportPrices;
    }

    @Column(name="sanpham_gia_ban")
    public Float getmExportPrices() {
        return mExportPrices;
    }

    public void setmExportPrices(Float mExportPrices) {
        this.mExportPrices = mExportPrices;
    }

    @Column(name="sanpham_nha_cung_cap")
    public String getmProvider() {
        return mProvider;
    }

    public void setmProvider(String mProvider) {
        this.mProvider = mProvider;
    }

    @Column(name="sanpham_mo_ta")
    public String getmDescription() {
        return mDescription;
    }

    public void setmDescription(String mDescription) {
        this.mDescription = mDescription;
    }

    @Column(name="sanpham_anh_san_pham")
    public String getmProductImage() {
        return mProductImage;
    }

    public void setmProductImage(String mProductImage) {
        this.mProductImage = mProductImage;
    }
    
}
