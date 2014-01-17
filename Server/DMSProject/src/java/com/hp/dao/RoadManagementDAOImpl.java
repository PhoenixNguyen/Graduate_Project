/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import com.hp.domain.RoadManagement;
import java.util.ArrayList;
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
    public List<List<RoadManagement>> getRoad(String pGiamDoc, String pNhanVien, String pMaKhachHang){
        List<List<RoadManagement>> result = new ArrayList<List<RoadManagement>>();
        try{
            if(pGiamDoc != null){
                //Lay danh sach ID khach hang cua giam doc
                List<String> khachhang = null;
                khachhang = session.createQuery("select kh.mMaDoiTuong "
                        + "from Customer kh, Staff nv "
                        + "where nv.mManager ='"+pGiamDoc+"' "
                        + "and nv.mID = kh.mMaNhanVien ").list();
                for(int i= 0; i < khachhang.size(); i++){
                    List<RoadManagement> tmp = new ArrayList<RoadManagement>();
                    tmp = session.createQuery("from RoadManagement where mMaKhachHang='"+khachhang.get(i)+"'").list();
                    
                    if(tmp.size() > 0)
                        result.add(tmp);
                }
                
            }
            else if(pNhanVien != null){

                //Lay danh sach ID khach hang cua giam doc
                List<String> khachhang = null;
                khachhang = session.createQuery("select mMaDoiTuong "
                        + "from Customer where mMaNhanVien='"+pNhanVien+"'").list();
                for(int i= 0; i < khachhang.size(); i++){
                    List<RoadManagement> tmp = new ArrayList<RoadManagement>();
                    tmp = session.createQuery("from RoadManagement where mMaKhachHang='"+khachhang.get(i)+"'").list();
                    
                    if(tmp.size() > 0)
                        result.add(tmp);
                }
            }
            else if(pMaKhachHang != null){

                List<RoadManagement> tmp = new ArrayList<RoadManagement>();
                 tmp = session.createQuery("from RoadManagement where mMaKhachHang = '"+pMaKhachHang+"'").list();
                 if(tmp != null)
                     result.add(tmp);
            }
            else{

                //Lay danh sach ID khach hang cua giam doc
                List<String> khachhang = null;
                khachhang = session.createQuery("select mMaDoiTuong "
                        + "from Customer ").list();
                for(int i= 0; i < khachhang.size(); i++){
                    List<RoadManagement> tmp = new ArrayList<RoadManagement>();
                    tmp = session.createQuery("from RoadManagement where mMaKhachHang='"+khachhang.get(i)+"'").list();
                    
                    if(tmp.size() > 0)
                        result.add(tmp);
                }
            }
//            courses = session.createSQLQuery("select tb_quanlyduongdi.* from tb_quanlyduongdi as road,tb_nhanvien as nv  "
//                    + "where nv.nhanvien_ma_nhan_vien=road.quanlyduongdi_ma_nhan_vien and nv.mMaNhanVien = 'DVH'").addEntity(RoadManagement.class).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return result;
    }
}
