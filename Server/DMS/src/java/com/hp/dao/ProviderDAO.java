/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.dao;

import com.hp.domain.Provider;
import java.util.List;

/**
 *
 * @author HP
 */
public interface ProviderDAO {
    public List<Provider> getProvidersList();
    public List<String> getProvidersIDList();
    
    public List<Provider> getProvidersList(String customerID);
}