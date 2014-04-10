/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.hp.domain.Staff;
import java.util.List;

/**
 *
 * @author HP
 */
public interface StaffDAO {
    //Get list staff co nguoi quan ly = pUser
    public List<String> getListUser(String pUser);
    //authenticate staff
    public boolean authenticate(String pUsername, String pPassword);
    
    //getList staff objects
    public List<Staff> getListStaff();
    public Staff loadStaff(int pID);
    public boolean update(Staff pStaff);
    public boolean saveOrUpdate(Staff pStaff);
            
}