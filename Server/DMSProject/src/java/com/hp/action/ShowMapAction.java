/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hp.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
/**
 *
 * @author HP
 */
public class ShowMapAction extends ActionSupport{
    
    public String showMap(){
        
        System.out.print("TEST Framework!!!!!!!!!!!!!!!!!!!!!!");
        
        return SUCCESS;
    }
}
