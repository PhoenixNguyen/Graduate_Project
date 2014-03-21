/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory;
import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.Product;
import com.hp.domain.Staff;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class ProductDAOImpl implements ProductDAO{
    public List<Product> getProductList(String pProvider){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Product> courses = null;
        try{
            courses = session.createQuery("from Product where mProvider='" +pProvider+"'" ).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    
    }
    
    public List<Product> getProductList(){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Product> courses = null;
        try{
            courses = session.createQuery("from Product " ).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    
    }
    
    public List<Product> getCustomerProductList(String pCustomerID){
        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Product> courses = null;
        try{
            courses = session.createQuery("from Product as p where p.mBarcode IN "
                    + "(select distinct sod.mBarcode "
                    + " from SaleOrderDetail as sod, SaleOrder as so"
                    + " where so.mID = sod.mTakeOrderID "
                    + " and so.mCustomerID='"+pCustomerID+"')" ).list(); //and so.mCustomerID='"+pCustomerID+"'
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    
    }
    
    public Product loadProduct(int pID){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        Product courses = null;
        try{
            //Query query = session.createQuery("from Customer where mMaDoiTuong='"+pCustomer+"'");
            //courses = (Customer)query;
                    
            courses = (Product)session.get(Product.class, pID);
        }catch(Exception e){
            e.printStackTrace();
        }
        
        finally {
            session.close();
        }
        
        return courses;
    }
    
    @Override
    public boolean update(Product pProduct){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.update(pProduct);
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
    public boolean saveOrUpdate(Product pProduct){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.saveOrUpdate(pProduct);
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
