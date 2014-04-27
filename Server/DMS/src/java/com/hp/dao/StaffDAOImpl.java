/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.Staff;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class StaffDAOImpl implements StaffDAO{
    
    public List<String> getListUser(String pManager){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<String> courses = null;
        try{
            if(pManager == null)
                courses = session.createQuery("select id from Staff ").list();
            else
                courses = session.createQuery("select id from Staff  where manager ='"+pManager+"'").list(); //where mManager ='"+pUser+"'"
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
            
    public Staff authenticate(String pUsername, String pPassword){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        boolean result = false;
        Staff staff = null;
        try{
            
            String sql = "from Staff where lower(id)= '"+pUsername.toLowerCase()+"' and lower(pw)='"+pPassword.toLowerCase()+"' and status= true ";
            Query query = (Query) session.createQuery(sql);
//            query.setString(0, pUsername.toLowerCase());
//            query.setString(1, pPassword.toLowerCase());

            staff = (Staff)query.uniqueResult();
                        
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return staff;
    }
    
    public int adminAuthenticate(String pUsername){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        boolean result = false;
        Staff staff = null;
        try{
            
            String sql = "from Staff where lower(id)= '"+pUsername.toLowerCase()+"' ";
            Query query = (Query) session.createQuery(sql);
//            query.setString(0, pUsername.toLowerCase());
//            query.setString(1, pPassword.toLowerCase());

            staff = (Staff)query.uniqueResult();
                        
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return staff.getPermission();
    }
    
    public List<Staff> getListStaff(){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Staff> courses = null;
        try{
                courses = session.createQuery("from Staff ").list();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public Staff loadStaff(int pID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        Staff courses = null;
        try{
            //Query query = session.createQuery("from Customer where mMaDoiTuong='"+pCustomer+"'");
            //courses = (Customer)query;
                    
            courses = (Staff)session.get(Staff.class, pID);
        }catch(Exception e){
            e.printStackTrace();
        }
        
        finally {
            session.close();
        }
        
        return courses;
    }
    
    @Override
    public boolean update(Staff pStaff){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.update(pStaff);
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
    
    @Override
    public boolean saveOrUpdate(Staff pStaff){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.save(pStaff);
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
    
    public boolean delete(Staff pStaff){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.delete(pStaff);
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
    
}
