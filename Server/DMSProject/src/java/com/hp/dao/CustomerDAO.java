/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.hp.domain.Customer;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public interface CustomerDAO {
    public boolean saveOrUpdate(Customer pCustomer);
    public List<Customer> loadCustomersWithLocations();
    //and hava all sales man of manager
    public List<Customer> loadCustomersWithLocations(String pManagerID, String pStaff);
    //Get List customer to ajax
    public List<String> getListCustomer(String pStaff);
    
    //Set customer location
    public int update(String pID, float pX, float pY);
}
