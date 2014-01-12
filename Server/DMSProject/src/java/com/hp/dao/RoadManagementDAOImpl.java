/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.hp.domain.RoadManagement;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class RoadManagementDAOImpl implements RoadManagementDAO{
    
    @SessionTarget
    Session session;
    @TransactionTarget
    Transaction transaction;
    
    @Override
    public List<RoadManagement> getRoad(String pMaKhachHang){
        List<RoadManagement> courses = null;
        
        try{
            courses = session.createQuery("from RoadManagement where mMaKhachHang = '"+pMaKhachHang+"'").list();
//            courses = session.createSQLQuery("select tb_quanlyduongdi.* from tb_quanlyduongdi as road,tb_nhanvien as nv  "
//                    + "where nv.nhanvien_ma_nhan_vien=road.quanlyduongdi_ma_nhan_vien and nv.mMaNhanVien = 'DVH'").addEntity(RoadManagement.class).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return courses;
    }
}
