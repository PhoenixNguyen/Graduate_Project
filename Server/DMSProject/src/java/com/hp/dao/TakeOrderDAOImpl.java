/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory;
import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.Staff;
import com.hp.domain.TakeOrder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class TakeOrderDAOImpl implements TakeOrderDAO{
    public boolean saveOrUpdate(TakeOrder pTakeOrder){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        
        transaction = session.beginTransaction();
        try{
            
            session.save(pTakeOrder);
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
    
    public List<TakeOrder> getTakeOrdersList(){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<TakeOrder> courses = null;
        try{
                courses = session.createQuery("from TakeOrder ").list();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public List<TakeOrder> getTakeOrdersList(String pStaff){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<TakeOrder> courses = null;
        try{
                courses = session.createQuery("from TakeOrder where mCreater='"+pStaff+"' order by mTakeOrderDate desc").list();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public List<TakeOrder> getTakeOrdersList(String pStaff, String pFrom, String pTo){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<TakeOrder> courses = null;
        try{
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
                SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                
                Date from = sdf.parse(pFrom);
                Date to = sdf.parse(pTo);
            
                courses = session.createQuery("from TakeOrder where mCreater='"+pStaff+"'" 
                                                + " and mTakeOrderDate BETWEEN '" +sdf2.format(from)+ "' "
                                                + " and '" +sdf2.format(to)+"'").list();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public TakeOrder getTakeOrder(int pTakeOrder){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        TakeOrder courses = null;
        try{
                courses = (TakeOrder)session.get(TakeOrder.class, pTakeOrder);
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public TakeOrder getTakeOrder(String pID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        TakeOrder courses = null;
        try{
            //Query q = session.createQuery("from TakeOrder where mID='"+pID+"'");
            Query q = session.createSQLQuery("select * from tb_hoadondathang where hoadondathang_ma_hoa_don='"+pID+"'")
                    .addEntity(TakeOrder.class);
            
            if(q.list() == null)
                return null;
            
             courses = (TakeOrder)q.list().get(0);
            //courses = (TakeOrder)session.get(TakeOrder.class, pID);
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    @Override
    public boolean update(TakeOrder pTakeOrder){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.update(pTakeOrder);
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
    public boolean delete(TakeOrder pTakeOrder){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.delete(pTakeOrder);
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
