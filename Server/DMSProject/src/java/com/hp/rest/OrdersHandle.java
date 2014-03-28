/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.rest;

import com.hp.dao.InventoryManagerDAO;
import com.hp.dao.InventoryManagerDAOImpl;
import com.hp.dao.InventoryManagerDetailDAO;
import com.hp.dao.InventoryManagerDetailDAOImpl;
import com.hp.dao.ProductDAO;
import com.hp.dao.ProductDAOImpl;
import com.hp.dao.ProviderDAO;
import com.hp.dao.ProviderDAOImpl;
import com.hp.dao.ReturnOrderDAO;
import com.hp.dao.ReturnOrderDAOImpl;
import com.hp.dao.ReturnOrderDetailDAO;
import com.hp.dao.ReturnOrderDetailDAOImpl;
import com.hp.dao.RoadManagementDAO;
import com.hp.dao.RoadManagementDAOImpl;
import com.hp.dao.SaleOrderDAO;
import com.hp.dao.SaleOrderDAOImpl;
import com.hp.dao.SaleOrderDetailDAO;
import com.hp.dao.SaleOrderDetailDAOImpl;
import com.hp.dao.StockDAO;
import com.hp.dao.StockDAOImpl;
import com.hp.dao.TakeOrderDAO;
import com.hp.dao.TakeOrderDAOImpl;
import com.hp.dao.TakeOrderDetailDAO;
import com.hp.dao.TakeOrderDetailDAOImpl;
import com.hp.domain.InventoryManager;
import com.hp.domain.InventoryManagerDetail;
import com.hp.domain.Product;
import com.hp.domain.Provider;
import com.hp.domain.ReturnOrder;
import com.hp.domain.ReturnOrderDetail;
import com.hp.domain.RoadManagement;
import com.hp.domain.SaleOrder;
import com.hp.domain.SaleOrderDetail;
import com.hp.domain.Stock;
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
import org.codehaus.jackson.map.type.TypeFactory;


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
        
        
        ReturnOrder returnOrder = new ReturnOrder();
        ReturnOrderDAO returnOrderDAO = new ReturnOrderDAOImpl();
        ReturnOrderDetailDAO returnOrderDetailDAO = new ReturnOrderDetailDAOImpl();
        SaleOrderDAO saleOrderDAO = new SaleOrderDAOImpl();
        
        //If ReturnOrderDetail exist => update it then return
        ReturnOrderDetail returnOrderDetailExist = 
                returnOrderDetailDAO.getReturnOrderDetail(returnOrderDetail.getmTakeOrderID(), returnOrderDetail.getmLine());
        if( returnOrderDetailExist != null){
            returnOrderDetailExist.setmNumber(returnOrderDetail.getmNumber());
            returnOrderDetailExist.setmPriceTotal(returnOrderDetail.getmPriceTotal());
            
            boolean b = returnOrderDetailDAO.update(returnOrderDetailExist);
            
            return Response.status(200).entity(b+ "").build();
        }
        
        //Save return order
        returnOrder = new ReturnOrder(saleOrderDAO.getSaleOrder(returnOrderDetail.getmTakeOrderID()));
        returnOrderDAO.saveOrUpdate(returnOrder);
                
        //Save detail return order
        
        boolean st = returnOrderDetailDAO.saveOrUpdate(returnOrderDetail);
        if(!st)
            return Response.status(200).entity(st+"").build();
        
        //Update the orderReturn
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
    
    @POST
    @Path("/putStock")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putStock( String pStock ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        Stock stock = new Stock();
        try {
//			File jsonFile = new File(jsonFilePath);
                stock = mapper.readValue(pStock, Stock.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        StockDAO stockDAO = new StockDAOImpl();
        boolean st = false;
        
        st = stockDAO.saveOrUpdate(stock);
       
        
        return Response.status(200).entity(st+"").build();
    }
    @POST
    @Path("/getStock")
    @Consumes(MediaType.APPLICATION_JSON)
    public Stock getStock(String pData) {
        
        StockDAO stockDAO = new StockDAOImpl();
        Stock stock = new Stock();
        stock = stockDAO.getStock(pData);
        
        return stock;
        
    }
    
    @POST
    @Path("/getCustomerProduct")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Product> getCustomerProduct(String pData) { //String pData
        //String pData="ll::ll";
        String[] total = pData.split("::");
        String providerID = total[0];
        String customerID = total[1];
        
        System.out.println("____ " + pData + "___ " );
        
        ProductDAO productDAO = new ProductDAOImpl();
        
        return productDAO.getCustomerProductList(customerID, providerID);//(customerID, providerID);
        
    }
    
    @POST
    @Path("/getCustomerProviderList")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<Provider> getCustomerProviderList(String customerID) { //String customerID
        List<Provider> list = new ArrayList<Provider>();
        
        ProviderDAO providerDAO = new ProviderDAOImpl();
        list = providerDAO.getProvidersList(customerID);
        
        return list;
        
    }
    
    //Update journey
    @POST
    @Path("/putStaffJourney")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putStaffJourney(String pData) { //String customerID
        
       // pair to object
        ObjectMapper mapper = new ObjectMapper();
        RoadManagement roadManagement = new RoadManagement();
        try {
//			File jsonFile = new File(jsonFilePath);
                roadManagement = mapper.readValue(pData, RoadManagement.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        RoadManagementDAO roadManagementDAO = new RoadManagementDAOImpl();
        boolean st = roadManagementDAO.saveOrUpdate(roadManagement);
               
        return Response.status(200).entity(st+"").build();
        
    }
    
    @POST
    @Path("/putInventoryManager")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putInventoryManager( String pInventoryManager ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        InventoryManager inventoryManager = new InventoryManager();
        try {
//			File jsonFile = new File(jsonFilePath);
                inventoryManager = mapper.readValue(pInventoryManager, InventoryManager.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update location
        InventoryManagerDAO inventoryManagerDAO = new InventoryManagerDAOImpl();
        boolean st = inventoryManagerDAO.saveOrUpdate(inventoryManager);
//            String output = pTrack.toString();
            System.out.println("pTakeOrder: " + st +"____ " + pInventoryManager);
            return Response.status(200).entity(st+"").build();
    }
    
    @POST
    @Path("/putInventoryManagerDetail")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putInventoryManagerDetail( String pList ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        List<InventoryManagerDetail> detailList = null;
        try {
//			File jsonFile = new File(jsonFilePath);
                detailList = mapper.readValue(pList
                        , TypeFactory.defaultInstance().constructCollectionType(List.class
                        , InventoryManagerDetail.class));
                //System.out.println(schedulesList.get(0).getmMaKH());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update 
        int count = 0;
        InventoryManagerDetailDAO inventoryManagerDetailDAO = new InventoryManagerDetailDAOImpl();
        for(int i = 0; i< detailList.size(); i++){
            if(inventoryManagerDetailDAO.saveOrUpdate(detailList.get(i)))
                count ++;
            
        }
        System.out.println("pTakeOrderDetail: " + count +"____ " + pList);
        return Response.status(200).entity(count+"").build();
    }
    
}