/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.common.ValidateHandle;
import com.hp.dao.UserDAO;
import com.hp.dao.UserDAOImpl;
import com.hp.domain.User;
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.LOGIN;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author HP
 */
public class SystemManagerAction extends ActionSupport {
    private UserDAO userDAO = new UserDAOImpl();

    User user = new User();

    private List<User> userList = new ArrayList<User>();

    private String new_password;
    private boolean changePWStatus;

    public boolean isChangePWStatus() {
        return changePWStatus;
    }

    public void setChangePWStatus(boolean changePWStatus) {
        this.changePWStatus = changePWStatus;
    }
    
    public String getNew_password() {
        return new_password;
    }

    public void setNew_password(String new_password) {
        this.new_password = new_password;
    }
    
    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }
    
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    public String refresh(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        user = (User)session.getAttribute("USER");
        
        //Authorize
        if(!userDAO.authorize((String)session.getAttribute("user_name"), (String)session.getAttribute("user_password")) || user == null){
            return LOGIN;
        }
        
        
        userList = userDAO.getUserList();
        return SUCCESS;
    }
    
    public String adminDetail(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        user = (User)session.getAttribute("USER");
        
        //Authorize
        if(!userDAO.authorize((String)session.getAttribute("user_name"), (String)session.getAttribute("user_password")) || user == null){
            return LOGIN;
        }
        
        
        String para =  request.getParameter("id_admin");
        
        int id_cus = ValidateHandle.getInteger(para);
        if(id_cus > -1){
            user = userDAO.getUser(id_cus);
            return SUCCESS;
        }
        else
            return INPUT;
    }
    
    public String changePassword(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        user = (User)session.getAttribute("USER");
        
        //Authorize
        if(!userDAO.authorize((String)session.getAttribute("user_name"), (String)session.getAttribute("user_password")) || user == null){
            return LOGIN;
        }
        
        if(new_password == null){
            return INPUT;
        }
        
        changePWStatus = true;
        System.out.println(new_password);
        user.setPw(new_password);
        
        changePWStatus = userDAO.updateUser(user);
        if(changePWStatus){
            session.setAttribute("user_password", new_password);
            session.setAttribute("USER", userDAO.getUser(user.getId()));
            return SUCCESS;
        }
        else
            return INPUT;
    }
    
    
}


