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
import java.util.List;
import org.hibernate.HibernateException;
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
            
            session.saveOrUpdate(pTakeOrder);
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
}
