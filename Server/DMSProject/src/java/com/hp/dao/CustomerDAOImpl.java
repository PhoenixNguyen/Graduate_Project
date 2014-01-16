/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.annotations.SessionTarget;
import com.googlecode.s2hibernate.struts2.plugin.annotations.TransactionTarget;
import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.Customer;
import com.hp.domain.Staff;
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */

public class CustomerDAOImpl implements CustomerDAO{
    
    //Add customer  
    @Override
    public boolean saveOrUpdate(Customer pCustomer){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.saveOrUpdate(pCustomer);
            session.getTransaction().commit();
        }catch(HibernateException e){
            transaction.rollback();
            return false;
        }
        finally {
            session.close();
        }
        
        return true;
    }
    
    //Get customers who have location
    @Override
    public List<Customer> loadCustomersWithLocations(){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Customer> courses = null;
        try{
            courses = session.createQuery("from Customer where mXCoordinates is NOT NULL and  mYCoordinates is NOT NULL ").list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
        
    }
    
    public List<Customer> loadCustomersWithLocations(String pManagerID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Customer> courses = null;
        try{
            
            System.out.print(pManagerID);
//            courses = session.createSQLQuery("select cus.* from tb_khachhang as cus, tb_nhanvien as st where "
//                    + "st.nhanvien_ma_nhan_vien = cus.khachhang_ma_dt and st.nhanvien_nguoi_quan_ly = 'kachiusa" //+pManagerID
//                    + "' and cus.khachhang_toa_do_x != null "
//                    + "and  cus.khachhang_toa_do_y != null ").addEntity(Customer.class).list();
            
            
            //            courses = session.createQuery("select cus from Customer as cus, Staff as st where "
//                    + "st.mID = cus.mMaNhanVien and st.mManager = 'kachiusa" //+pManagerID
//                    + "' and cus.mXCoordinates is NOT NULL "
//                    + "and  cus.mYCoordinates is NOT NULL ").list();
            courses = session.createQuery("from Customer where mXCoordinates is NOT NULL and  mYCoordinates is NOT NULL and mMaNhanVien='DVH'").list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    
    
    
}
