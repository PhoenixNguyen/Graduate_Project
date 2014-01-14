/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hp.action;

import com.hp.dao.CustomerDAO;
import com.hp.dao.CustomerDAOImpl;
import com.hp.dao.RoadManagementDAO;
import com.hp.dao.RoadManagementDAOImpl;
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.dao.UserDAO;
import com.hp.dao.UserDAOImpl;
import com.hp.domain.RoadManagement;
import com.hp.domain.Customer;
import com.hp.domain.User;
import com.hp.excelhandle.GetData;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
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
    
    private String data = "Afghanistan, Zimbabwe, India, United States, Germany, China, Israel";

    
    private UserDAO userDAO = new UserDAOImpl();
    private List<String> userListGiamDoc = new ArrayList<String>();
    private User user = new User();
    
    private StaffDAO staffDAO = new StaffDAOImpl();
    private List<String> userListStaff = new ArrayList<String>();

    public List<String> getUserListStaff() {
        return userListStaff;
    }

    public void setUserListStaff(List<String> userListStaff) {
        this.userListStaff = userListStaff;
    }
    
    public List<String> getUserListGiamDoc() {
        return userListGiamDoc;
    }

    public void setUserListGiamDoc(List<String> userListGiamDoc) {
        this.userListGiamDoc = userListGiamDoc;
    }
    
    public List<String> getCountries() {
        return countries;
    }

    public void setCountries(List<String> countries) {
        this.countries = countries;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    private List<String> countries;
    private String country;
    
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
        
        //Lay ve giam doc
        userListGiamDoc = userDAO.getListUser(2);
        
        //Lay ve nhan vien cua giam doc
        userListStaff = staffDAO.getListUser("kachiusa");
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
    
    public String ajaxDemo(){
        countries = new ArrayList<String>();
        StringTokenizer st = new StringTokenizer(data, ",");
 
        while (st.hasMoreTokens()) {
            countries.add(st.nextToken().trim());
        }
        return SUCCESS;
    }
    
    public String filterViewLocations(){
        //get list giam doc permission = 2
        userListGiamDoc = userDAO.getListUser(2);
        return SUCCESS;
    }
}
