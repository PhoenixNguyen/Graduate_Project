/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

/**
 *
 * @author HP
 */
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.dao.UserDAO;
import com.hp.dao.UserDAOImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Prabhakar
 */
public class HelloWorld  {

    private UserDAO userDAO = new UserDAOImpl();    
    private StaffDAO staffDAO = new StaffDAOImpl();
    private List<String> stateList= new ArrayList<String>();
    private List<String> regnList= new ArrayList<String>();

    private String stateId;
    public String getStateId()
    {
    return this.stateId;
    }
    public void setStateId(String stateId)
    {
    this.stateId=stateId;
    }
    public List<String> getStateList() {
        return stateList;
    }

    public void setStateList(List<String> stateList) {
        this.stateList = stateList;
    }
     public void setRegnList(List<String> regnList) {
        this.regnList = regnList;
    }
    public List<String> getRegnList() {
        return regnList;
    }

    public String execute() throws Exception {

        stateList=userDAO.getListUser(1);//
        if(stateId !=null)
          {
         regnList=staffDAO.getListUser(stateId);
          }

        //setMessage(getText(MESSAGE));
        return "success";
    }

    /**
     * Provide default valuie for Message property.
     */

}
