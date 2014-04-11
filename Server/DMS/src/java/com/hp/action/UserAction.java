/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

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
    
    public String login(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String username = request.getParameter("user_name");
        String password = request.getParameter("user_password");
        
        session.setAttribute("user_name", username);
        session.setAttribute("user_password", password);
        
        System.out.println("user: " + username + " pass: " + password);
        
        if(username.compareTo("") != 0 && password.compareTo("") != 0){
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
}
