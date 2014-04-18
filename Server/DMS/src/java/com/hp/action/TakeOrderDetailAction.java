/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.action;

import com.hp.common.ValidateHandle;
import com.hp.dao.TakeOrderDAO;
import com.hp.dao.TakeOrderDAOImpl;
import com.hp.dao.TakeOrderDetailDAO;
import com.hp.dao.TakeOrderDetailDAOImpl;
import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;
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
public class TakeOrderDetailAction extends ActionSupport implements ModelDriven{
    private TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
    private TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
    
    private List<TakeOrder> takeOrdersList = new ArrayList<TakeOrder>();
    private List<TakeOrderDetail> detailTakeOrdersList = new ArrayList<TakeOrderDetail>();

    public TakeOrderDetail takeOrderDetail = new TakeOrderDetail();

    public TakeOrderDetail getTakeOrderDetail() {
        return takeOrderDetail;
    }

    public void setTakeOrderDetail(TakeOrderDetail takeOrderDetail) {
        this.takeOrderDetail = takeOrderDetail;
    }

    
    @Override
    public Object getModel() {
        return takeOrderDetail;
    }
    
    
    public List<TakeOrder> getTakeOrdersList() {
        return takeOrdersList;
    }

    public void setTakeOrdersList(List<TakeOrder> takeOrdersList) {
        this.takeOrdersList = takeOrdersList;
    }

    public List<TakeOrderDetail> getDetailTakeOrdersList() {
        return detailTakeOrdersList;
    }

    public void setDetailTakeOrdersList(List<TakeOrderDetail> detailTakeOrdersList) {
        this.detailTakeOrdersList = detailTakeOrdersList;
    }
    
    public String loadTakeOrders(){
        takeOrdersList = takeOrderDAO.getTakeOrdersList();
        return SUCCESS;
    }
    
    public String loadTakeOrdersDetail(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String order_id = request.getParameter("id_takeorder");
        System.out.println(order_id);
        
        if(order_id == null)
            return INPUT;
        
        detailTakeOrdersList = takeOrderDetailDAO.getDetailTakeOrdersList(order_id);
        takeOrdersList = takeOrderDAO.getTakeOrdersList();
        return SUCCESS;
    }
    
    public String editTakeOrderDetail(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        HttpSession session = request.getSession();
        
        String para =  request.getParameter("id_to_d");
        
        int id_pdct = ValidateHandle.getInteger(para);
        if(id_pdct > -1){
            takeOrderDetail = takeOrderDetailDAO.getTakeOrderDetail(id_pdct);
            return SUCCESS;
        }
        else 
            return INPUT;
        
//        String order_id = request.getParameter("id_take_order_detail");
//        System.out.println(order_id);
//        int st;
//        if(order_id ==null){
//            return INPUT;
//        }
//        st = Integer.parseInt(order_id);
//        takeOrderDetail = takeOrderDetailDAO.getTakeOrderDetail(st);
        
//        return SUCCESS;
    }
    
    public String updateTakeOrderDetail(){
        System.out.println("OKto " + takeOrderDetail.getMProductID());
        //takeOrder.setmEditer("0");
        
        takeOrderDetail.setMPriceTotal((takeOrderDetail.getMBeforeOrderPrice() - 
                takeOrderDetail.getMBeforeOrderPrice()* takeOrderDetail.getMDiscount()/100) * takeOrderDetail.getMNumber());
        
        boolean status = takeOrderDetailDAO.update(takeOrderDetail);
        System.out.println(status);
        
        //UPdate TakeOrder
        List<TakeOrderDetail> list = new ArrayList<TakeOrderDetail>();
        
        list = takeOrderDetailDAO.getDetailTakeOrdersList(takeOrderDetail.getMTakeOrderID());
        float priceTotal = 0;
        for(int i = 0; i < list.size(); i++){
            priceTotal += list.get(i).getMPriceTotal();
        }
        
        TakeOrder takeOrder = new TakeOrder();
        TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
        
        takeOrder = takeOrderDAO.getTakeOrder(takeOrderDetail.getMTakeOrderID());
        takeOrder.setMAfterPrivate(priceTotal - priceTotal*takeOrder.getMDiscount()/100);
        boolean st2 = takeOrderDAO.update(takeOrder);
        
        if(status){
            
            return SUCCESS;
        }
        else
            return INPUT;
        //takeOrdersList = takeOrderDAO.getTakeOrdersList();
        
        
    }
    
}
