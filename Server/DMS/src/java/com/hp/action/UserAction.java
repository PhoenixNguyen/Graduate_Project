/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.dao.UserDAO;
import com.hp.dao.UserDAOImpl;
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
    
    public String login(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String username = request.getParameter("user_name");
        String password = request.getParameter("user_password");
        
        session.setAttribute("user_name", username);
        session.setAttribute("user_password", password);
        
        
        System.out.println("user: " + username + " pass: " + password);
        
        if(userDAO.authorize((String)session.getAttribute("user_name"), (String)session.getAttribute("user_password"))){
            session.setAttribute("authorized", true);
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
        
        return SUCCESS;
    }
}
