/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory;
import com.hp.domain.Provider;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class ProviderDAOImpl implements ProviderDAO{
    public List<Provider> getProvidersList(){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Provider> courses = null;
        try{
            courses = session.createQuery("from Provider " ).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public List<Provider> getProvidersList(String customerID){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Provider> courses = null;
        try{
            courses = session.createQuery("select distinct per "
                    + "from Provider as per, Product as pct, SaleOrder as so, SaleOrderDetail as sod "
                    + "where per.mID = pct.mProvider and "
                    + " so.mID = sod.mTakeOrderID and "
                    + " pct.mProductID = sod.mBarcode and "
                    + " so.mCustomerID='"+customerID+"'" ).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public List<String> getProvidersIDList(){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<String> courses = null;
        try{
            courses = session.createQuery("select mID from Provider " ).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
}
