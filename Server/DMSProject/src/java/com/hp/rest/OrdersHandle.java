/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.rest;

import com.hp.dao.ReturnOrderDAO;
import com.hp.dao.ReturnOrderDAOImpl;
import com.hp.dao.ReturnOrderDetailDAO;
import com.hp.dao.ReturnOrderDetailDAOImpl;
import com.hp.dao.SaleOrderDAO;
import com.hp.dao.SaleOrderDAOImpl;
import com.hp.dao.SaleOrderDetailDAO;
import com.hp.dao.SaleOrderDetailDAOImpl;
import com.hp.dao.TakeOrderDAO;
import com.hp.dao.TakeOrderDAOImpl;
import com.hp.dao.TakeOrderDetailDAO;
import com.hp.dao.TakeOrderDetailDAOImpl;
import com.hp.domain.ReturnOrder;
import com.hp.domain.ReturnOrderDetail;
import com.hp.domain.SaleOrder;
import com.hp.domain.SaleOrderDetail;
import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;


/**
 * REST Web Service
 *
 * @author HP
 */
@Path("order")
public class OrdersHandle {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of GenericResource
     */
    public OrdersHandle() {
    }

    /**
     * Retrieves representation of an instance of com.hp.rest.GenericResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("application/xml")
    public String getXml() {
        //TODO return proper representation object
        throw new UnsupportedOperationException();
    }

    /**
     * PUT method for updating or creating an instance of GenericResource
     * @param content representation for the resource
     * @return an HTTP response with content of the updated or created resource.
     */
    @PUT
    @Consumes("application/xml")
    public void putXml(String content) {
    }
    
    //__________________________________________________________________________
    @Path("/hello")
    // This method is called if TEXT_PLAIN is request
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String sayPlainTextHello() {
      return "Hello Jersey";
    }
    
    @Path("/getOrderData")
    @GET
    @Produces("text/plain")
    public String getOrderData(){
        return "Hello order HP Great!!";
    }
    
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    @POST
    @Path("/putSaleOrder")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putSaleOrder( String pTakeOrder ) {
        
        TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
        SaleOrder saleOrder = new SaleOrder(takeOrderDAO.getTakeOrder(pTakeOrder));
        
        SaleOrderDAO saleOrderDAO = new SaleOrderDAOImpl();
        boolean status1 = saleOrderDAO.saveOrUpdate(saleOrder);
        
        if(status1){
            TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
            List<TakeOrderDetail> list = new ArrayList<TakeOrderDetail>();
            list = takeOrderDetailDAO.getDetailTakeOrdersList(pTakeOrder);
            
            for(int i = 0; i < list.size(); i++){
                SaleOrderDetail saleOrderDetail = new SaleOrderDetail(list.get(i));
                SaleOrderDetailDAO saleOrderDetailDAO = new SaleOrderDetailDAOImpl();
                
                saleOrderDetailDAO.saveOrUpdate(saleOrderDetail);
            }
            
        }
        return Response.status(200).entity(status1+"").build();
    }
    
    @POST
    @Path("/getSaleOrderList")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<SaleOrder> getTakeOrderList(String pData) {
        List<SaleOrder> list = new ArrayList<SaleOrder>();
        
        SaleOrderDAO saleOrderDAO = new SaleOrderDAOImpl();
        list = saleOrderDAO.getSaleOrdersList(pData);
        
        return list;
        
    }
    
    @POST
    @Path("/getSaleOrderDetailList")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<SaleOrderDetail> getSaleOrderDetailList(String pData) {
        List<SaleOrderDetail> list = new ArrayList<SaleOrderDetail>();
        
        SaleOrderDetailDAO saleOrderDetailDAO = new SaleOrderDetailDAOImpl();
        list = saleOrderDetailDAO.getDetailSaleOrdersList(pData);
        
        return list;
        
    }
    
    @POST
    @Path("/putDetailReturnOrder")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putDetailReturnOrder( String pReturnOrder ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        ReturnOrderDetail returnOrderDetail = new ReturnOrderDetail();
        try {
//			File jsonFile = new File(jsonFilePath);
                returnOrderDetail = mapper.readValue(pReturnOrder, ReturnOrderDetail.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Save return order
        ReturnOrder returnOrder = new ReturnOrder();
        ReturnOrderDAO returnOrderDAO = new ReturnOrderDAOImpl();
        
        //SaleOrder saleOrder = new SaleOrder();
        SaleOrderDAO saleOrderDAO = new SaleOrderDAOImpl();
        
        returnOrder = new ReturnOrder(saleOrderDAO.getSaleOrder(returnOrderDetail.getmTakeOrderID()));
        returnOrderDAO.saveOrUpdate(returnOrder);
                
        //Update detail return order
        ReturnOrderDetailDAO returnOrderDetailDAO = new ReturnOrderDetailDAOImpl();
        boolean st = returnOrderDetailDAO.saveOrUpdate(returnOrderDetail);
        if(!st)
            return Response.status(200).entity(st+"").build();
        
        //Update the order
        List<ReturnOrderDetail> list = new ArrayList<ReturnOrderDetail>();
        
        list = returnOrderDetailDAO.getDetailReturnOrdersList(returnOrderDetail.getmTakeOrderID());
        float priceTotal = 0;
        for(int i = 0; i < list.size(); i++){
            priceTotal += list.get(i).getmPriceTotal();
        }
        
        
        
        returnOrder = returnOrderDAO.getReturnOrder(returnOrderDetail.getmTakeOrderID());
        returnOrder.setmAfterPrivate(priceTotal);
        boolean st2 = returnOrderDAO.update(returnOrder);
//            String output = pTrack.toString();
        System.out.println("____ " + pReturnOrder + "___ " + st);
        return Response.status(200).entity(st2+"").build();
    }
    
    @POST
    @Path("/getReturnOrderDetailList")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<ReturnOrderDetail> getReturnOrderDetailList(String pData) {
        List<ReturnOrderDetail> list = new ArrayList<ReturnOrderDetail>();
        
        ReturnOrderDetailDAO returnOrderDetailDAO = new ReturnOrderDetailDAOImpl();
        list = returnOrderDetailDAO.getDetailReturnOrdersList(pData);
        
        return list;
        
    }
}