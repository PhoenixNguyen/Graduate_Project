/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hp.action;

import com.hp.dao.CustomerDAO;
import com.hp.dao.CustomerDAOImpl;
import com.hp.dao.RoadManagementDAO;
import com.hp.dao.RoadManagementDAOImpl;
import com.hp.domain.RoadManagement;
import com.hp.domain.Customer;
import com.hp.excelhandle.GetData;
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
public class ShowMapAction extends ActionSupport{
    
    
    private List<Customer> listCustomer = new ArrayList();

    //Get Road for each customer
    private RoadManagementDAO mRoadManagementDAO = new RoadManagementDAOImpl();
    private List<RoadManagement> listRoad = new ArrayList();

    private CustomerDAO customerDAO = new CustomerDAOImpl();
    
    public List<RoadManagement> getListRoad() {
        return listRoad;
    }

    public void setListRoad(List<RoadManagement> listRoad) {
        this.listRoad = listRoad;
    }
    
    public List<Customer> getListCustomer() {
        return listCustomer;
    }

    public void setListCustomer(List<Customer> listCustomer) {
        this.listCustomer = listCustomer;
    }
            
    public String showMap(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        listCustomer = customerDAO.loadCustomersWithLocations();
        System.out.print("Load Customer into map !!!!!!!!!!!!!!!!!!!!!!");
        
        return SUCCESS;
    }
    
    public String getRoad(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession(true);
        
        String customerID = request.getParameter("customer");
        if(!customerID.isEmpty())
            listRoad = mRoadManagementDAO.getRoad(customerID);
        
        //System.out.print("Load Road !!!!!!!!!!!!!!!!!!!!!!" + listRoad.size());
        return SUCCESS;
    }
}
