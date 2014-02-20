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
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
    
    public List<Customer> loadCustomersWithLocations(String pManagerID, String pStaff, String pCustomer){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Customer> courses = null;
        List<Customer> courses2 = null;
        List<Customer> courses3 = null;
        try{
            
            System.out.print(pManagerID);    
            if(pCustomer == null){
                if(pStaff == null)
                    courses = session.createQuery("select cus from Customer as cus, Staff as st where "
                            + "st.mID = cus.mMaNhanVien and st.mManager = '" +pManagerID
                            + "' and cus.mXCoordinates is NOT NULL "
                            + "and  cus.mYCoordinates is NOT NULL ").list();
                else
                    courses = session.createQuery("from Customer where mMaNhanVien='"+pStaff+"'").list();
            }
            else
                courses = session.createQuery("from Customer where mMaDoiTuong='"+pCustomer+"'").list();
          
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    //Get List customer to ajax
    public List<String> getListCustomer(String pStaff){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<String> courses = null;
        try{
            if(pStaff == null)
                courses = session.createQuery("select mMaDoiTuong from Customer where mXCoordinates is NOT NULL and  mYCoordinates is NOT NULL ").list();
            else
                courses = session.createQuery("select mMaDoiTuong from Customer where mXCoordinates is NOT NULL "
                        + " and  mYCoordinates is NOT NULL and mMaNhanVien='"+pStaff+"'").list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    //Update customer location
    @Override
    public int update(String pID, float pX, float pY){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        int status = 0;
        try{
            String str = "update Customer set mXCoordinates ="+pX+ " "
                    + ", mYCoordinates="+pY+" where mMaDoiTuong='"+pID+ "'" ;
            Query query = session.createQuery(str);
            status = query.executeUpdate();
            session.getTransaction().commit();
        }catch(Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        finally {
            session.close();
        }
        
        return status;
        
    }
    
    //list customer for schedule
    public List<Customer> getListCustomerSchedule(String pStaff, String pDate){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Customer> courses = null;
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date date = sdf.parse(pDate);
            String str = "select cus1.* from tb_khachhang as cus1 where lower(cus1.khachhang_ma_nv)='"+pStaff.toLowerCase()+"' "
                    + " Except "
                    + "(select cus.* from tb_khachhang as cus, tb_schedule as sc "
                    + "where cus.khachhang_ma_dt = sc.schedule_ma_khach_hang "
                    + "and lower(cus.khachhang_ma_nv)='"+pStaff.toLowerCase()+"' "
                    + "and sc.schedule_date BETWEEN '"
                    + sdf.format(date) +"' and DATEADD(dd, 1, '"+sdf.format(date) +"') )";
                    
            
            courses = session.createSQLQuery(str).addEntity(Customer.class).list();
    
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public List<Customer> loadCustomersWithLocationsForSchedule(){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Customer> courses = null;
        try{
            courses = session.createQuery("select cus from Customer as cus, Schedule as sc "
                    + "where cus.mMaDoiTuong = sc.mMaKH "
                    + "and cus.mXCoordinates is NOT NULL and  cus.mYCoordinates is NOT NULL ").list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
        
    }
    
    public List<Customer> loadCustomersWithLocationsForSchedule(String pManagerID, String pStaff){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Customer> courses = null;
        List<Customer> courses2 = null;
        List<Customer> courses3 = null;
        try{
            
            System.out.print(pManagerID);           
            if(pStaff == null)
                courses = session.createQuery("select cus from Customer as cus,Staff as st, Schedule as sc where "
                        + "cus.mMaDoiTuong = sc.mMaKH "
                        + "and st.mID = cus.mMaNhanVien and st.mManager = '" +pManagerID
                        + "' and cus.mXCoordinates is NOT NULL "
                        + "and  cus.mYCoordinates is NOT NULL ").list();
            else
                courses = session.createQuery("from Customer where mMaNhanVien='"+pStaff+"'").list();
          
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    @Override
    public List<Customer> loadCustomersDetail(String pCustomer){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Customer> courses = null;
        try{
            courses = session.createQuery("from Customer where mMaDoiTuong='"+pCustomer+"'").list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
        
    }
}
