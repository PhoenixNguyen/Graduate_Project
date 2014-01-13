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
import java.util.ArrayList;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.HibernateException;
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
}
