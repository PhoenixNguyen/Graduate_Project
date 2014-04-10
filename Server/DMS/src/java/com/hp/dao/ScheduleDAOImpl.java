/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import static com.googlecode.s2hibernate.struts2.plugin.util.HibernateSessionFactory.getSessionFactory;
import com.hp.domain.Customer;
import com.hp.domain.RoadManagement;
import com.hp.domain.Schedule;
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
public class ScheduleDAOImpl implements ScheduleDAO{
    
    @Override
    public boolean saveOrUpdate(Schedule pSchedule){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        try{
            
            session.saveOrUpdate(pSchedule);
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
    public List<Schedule> getScheduleList(String pMaNV, String pDate){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Schedule> courses = null;
        Query query = null;
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date date = sdf.parse(pDate);
            String str = "from Schedule where lower(mMaNV)='"+pMaNV.toLowerCase()+"' and mDate BETWEEN '"
                    + sdf.format(date) +"' and DATEADD(dd, 1, '"+sdf.format(date) +"') "
                    + "order by mDate ";
            
            courses = session.createQuery(str).list();
//            query.setString(0, pMaNV);
//            query.setDate(1, pDate);
            
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
        
    }
    
    public int deletechedule(String pID, String pDate){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        int status = 0;
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = sdf.parse(pDate);
            
            String str = "delete Schedule where  mMaKH='"+pID+ "' and "
                    + " mDate='"+sdf.format(date)+"'" ;
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
    
    @Override
    public List<Schedule> getSchedulesList(){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Schedule> courses = null;
        try{
            courses = session.createQuery("from Schedule order by mDate").list();
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
        
    }
    
    public List<Schedule> getSchedulesList(String pManagerID, String pStaff, String pDate, String pToDate){
        Session session = getSessionFactory().openSession();
        Transaction transaction;
        transaction = session.beginTransaction();
        
        List<Schedule> courses = null;
        
        try{
            String datefinal="";
            String toDatefinal="";
            System.out.println(" DATE: " + pDate); 
            if(pDate != null && pDate.compareTo("")!= 0 && pToDate.compareTo("")!= 0){
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
                SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
                
                Date date = sdf.parse(pDate);
                datefinal = sdf2.format(date);
                
                Date toDate = sdf.parse(pToDate);
                toDatefinal = sdf2.format(toDate);
                System.out.println(" DATECONVERT: " + datefinal + " toDatefinal " + toDatefinal);
            }
            
            System.out.print(pManagerID);           
            
            if(pStaff != null)
            {
                if(datefinal.compareTo("") == 0)
                    courses = session.createQuery("from Schedule where mMaNV='"+pStaff+"' order by mDate").list();
                else
                    courses = session.createQuery("from Schedule where mMaNV='"+pStaff+"' and cast (mDate as date) BETWEEN '"+datefinal+"' and '" +toDatefinal+"'  order by mDate").list();
                
                return courses;
            }
            else 
            if(pManagerID != null){
                if(datefinal.compareTo("") == 0)
                    courses = session.createQuery("select sc from Schedule as sc, Staff as st where "
                        + "st.mID = sc.mMaNV and st.mManager = '" +pManagerID +"'"
                        + " order by sc.mDate").list();
                else
                courses = session.createQuery("select sc from Schedule as sc, Staff as st where "
                        + "st.mID = sc.mMaNV and st.mManager = '" +pManagerID +"'"
                        + " and cast (sc.mDate as date) BETWEEN '"+datefinal+"' and '" +toDatefinal+"' order by sc.mDate").list();
                return courses;
            }
            else{
                if(datefinal.compareTo("") == 0)
                    courses = session.createQuery("from Schedule  order by mDate").list();
                else
                    courses = session.createQuery("from Schedule where cast (mDate as date) BETWEEN '"+datefinal+"' and '" +toDatefinal+"'  order by mDate").list();
                return courses;
            }
          
        }catch(Exception e){
            e.printStackTrace();
        }
        finally {
            session.close();
        }
        
        return courses;
    }
}
