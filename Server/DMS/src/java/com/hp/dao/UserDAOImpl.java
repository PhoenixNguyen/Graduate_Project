/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class UserDAOImpl implements UserDAO{
    
    public List<String> getListUser(int pPermission){
        List<String> courses = null;
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        try{
            courses = session.createQuery("select id from User where permission = " + pPermission).list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
    
    public boolean authorize(String username, String password){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        boolean status = false;
        User user = null;
        try{
            String sql = "from User where lower(id)='"+username.toLowerCase()+"' and lower(pw)='" + password.toLowerCase() +"' and status = true";
            Query query = session.createQuery(sql);
            
            user = (User)query.uniqueResult();
            
            if(user != null)
                status = true;
            return status;
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return status;
    }
    
    
    
}
