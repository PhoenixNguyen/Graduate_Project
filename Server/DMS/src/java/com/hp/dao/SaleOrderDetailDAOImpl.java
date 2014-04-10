/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory;
import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.SaleOrder;
import com.hp.domain.SaleOrderDetail;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class SaleOrderDetailDAOImpl implements SaleOrderDetailDAO{
    public boolean saveOrUpdate(SaleOrderDetail pSaleOrder){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        
        transaction = session.beginTransaction();
        try{
            
            session.save(pSaleOrder);
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
    
    public List<SaleOrderDetail> getDetailSaleOrdersList(String pID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<SaleOrderDetail> courses = null;
        try{
                courses = session.createQuery("from SaleOrderDetail where mTakeOrderID='"+pID+"'").list();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
     public SaleOrderDetail getSaleOrderDetail(int pSaleOrderDetail){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        SaleOrderDetail courses = null;
        try{
                courses = (SaleOrderDetail)session.get(SaleOrderDetail.class, pSaleOrderDetail);
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
     
     @Override
    public boolean update(SaleOrderDetail pSaleOrderDetail){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.update(pSaleOrderDetail);
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
    public boolean delete(SaleOrderDetail pSaleOrderDetail){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.delete(pSaleOrderDetail);
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
    public boolean delete(String pID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            Query q = session.createQuery("delete SaleOrderDetail where mTakeOrderID='"+pID+"'");
            q.executeUpdate();
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
