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
import com.opensymphony.xwork2.ModelDriven;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author HP
 */
public class SystemManagerAction extends ActionSupport implements ModelDriven{
    public Object getModel(){
        return user;
    }
    
   
    private UserDAO userDAO = new UserDAOImpl();

    User user = new User();

    private List<User> userList = new ArrayList<User>();

    private String new_password;
    private boolean changePWStatus;
    private boolean deleteStatus;
    private boolean selected;

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }
    
    public boolean isDeleteStatus() {
        return deleteStatus;
    }

    public void setDeleteStatus(boolean deleteStatus) {
        this.deleteStatus = deleteStatus;
    }
    
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
    
    public String updateAdmin(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        
        //Authorize
        if(!userDAO.authorize((String)session.getAttribute("user_name"), (String)session.getAttribute("user_password")) || (User)session.getAttribute("USER") == null){
            return LOGIN;
        }
        
        
        changePWStatus = userDAO.updateUser(user);
        if(changePWStatus){
            user = userDAO.getUser(user.getStt());
            return SUCCESS;
        }
        else
            return INPUT;
    }

    public String deleteAdmin(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        
        //Authorize
        if(!userDAO.authorize((String)session.getAttribute("user_name"), (String)session.getAttribute("user_password")) || (User)session.getAttribute("USER") == null){
            return LOGIN;
        }
        
        selected = true;
        deleteStatus = false;
        
        String para =  request.getParameter("id_admin");
        
        int id_cus = ValidateHandle.getInteger(para);
        if(id_cus > -1){
            user = userDAO.getUser(id_cus);
            
            //Do not delete supermanager
            if(user.getPermission() != 1){
                deleteStatus = userDAO.deleteUser(user);
                return SUCCESS;
            }
            else
                return INPUT;
        }
        else
            return INPUT;
        
        
    }
}


