/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.dao.AnnouncementDAO;
import com.hp.dao.AnnouncementDAOImpl;
import com.hp.dao.UserDAO;
import com.hp.dao.UserDAOImpl;
import com.hp.domain.Announcement;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author HP
 */
public class UserAction extends ActionSupport{
    
    private UserDAO userDAO = new UserDAOImpl();
    private AnnouncementDAO announcementDAO = new AnnouncementDAOImpl();
    
    private Announcement announcement = new Announcement();

    public Announcement getAnnouncement() {
        return announcement;
    }

    public void setAnnouncement(Announcement announcement) {
        this.announcement = announcement;
    }
    
    public String login(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String username = request.getParameter("user_name");
        String password = request.getParameter("user_password");
        
        session.setAttribute("user_name", username);
        session.setAttribute("user_password", password);
        
        
        System.out.println("user: " + username + " pass: " + password);
        
        if(userDAO.authorize((String)session.getAttribute("user_name"), (String)session.getAttribute("user_password"))){
            announcement = announcementDAO.getAnnouncement();
            
            session.setAttribute("announcement", announcement);
            session.setAttribute("authorized", true);
            session.setAttribute("USER", userDAO.getUser(username));
            return SUCCESS;
        }
        else
            return INPUT;
    }
    
    public String loginStatus(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        if(session.getAttribute("user_name") != null && session.getAttribute("user_password") != null)
        
            return SUCCESS;
        else
            return INPUT;
    }
    
    public String logout(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        session.setAttribute("user_name", null);
        session.setAttribute("user_password", null);
        session.setAttribute("authorized", false);
        session.setAttribute("USER", null);
        
        return SUCCESS;
    }
}
