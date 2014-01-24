/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author HP
 */
public class StaffDAOImpl implements StaffDAO{
    
    public List<String> getListUser(String pUser){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<String> courses = null;
        try{
            if(pUser == null)
                courses = session.createQuery("select mID from Staff ").list();
            else
                courses = session.createQuery("select mID from Staff  where mManager ='"+pUser+"'").list(); //where mManager ='"+pUser+"'"
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
            
    public boolean authenticate(String pUsername, String pPassword){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        boolean result = false;
        try{
            
            String sql = "from Staff where lower(mID)= '"+pUsername.toLowerCase()+"' and lower(mPW)='"+pPassword.toLowerCase()+"' and mStatus= true ";
            Query query = (Query) session.createQuery(sql);
//            query.setString(0, pUsername.toLowerCase());
//            query.setString(1, pPassword.toLowerCase());

            if(query.uniqueResult() != null)
                result = true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return result;
    }
}
