/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.hp.domain.CustomerImage;

/**
 *
 * @author HP
 */
public interface CustomerImageDAO {
    public boolean saveOrUpdate(CustomerImage pCustomerImage);
}