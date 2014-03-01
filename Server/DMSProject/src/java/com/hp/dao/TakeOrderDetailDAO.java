/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.hp.domain.TakeOrderDetail;

/**
 *
 * @author HP
 */
public interface TakeOrderDetailDAO {
    public boolean saveOrUpdate(TakeOrderDetail pTakeOrder);
}
