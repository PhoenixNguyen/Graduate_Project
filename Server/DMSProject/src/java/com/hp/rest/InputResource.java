/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.rest;

import com.hp.dao.CustomerDAO;
import com.hp.dao.CustomerDAOImpl;
import com.hp.domain.Customer;
import java.io.IOException;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
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
 *
 * @author HP
 */

@Path("input")
public class InputResource {
    @Context
    private UriInfo context;

    /**
     * Creates a new instance of OrdersHandle
     */
    public InputResource() {
    }

    /**
     * Retrieves representation of an instance of com.hp.rest.GenericResource
     * @return an instance of java.lang.String
     */
    @Path("/vd")
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String getXml() {
        return "Hello";
    }
    
    @POST
    @Path("/insertCustomer")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response insertCustomer(String pData) { //String customerID
        
       // pair to object
        ObjectMapper mapper = new ObjectMapper();
        Customer customer = new Customer();
        try {
//			File jsonFile = new File(jsonFilePath);
                customer = mapper.readValue(pData, Customer.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        CustomerDAO customerDAO = new CustomerDAOImpl();
        boolean st = customerDAO.saveOrUpdate(customer);
        System.out.println("____ " + st + "___ " );       
        return Response.status(200).entity(st+"").build();
        
    }
    
    @POST
    @Path("/updateCustomer")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateCustomer(String pData) { //String customerID
        
       // pair to object
        ObjectMapper mapper = new ObjectMapper();
        Customer customer = new Customer();
        try {
//			File jsonFile = new File(jsonFilePath);
                customer = mapper.readValue(pData, Customer.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        CustomerDAO customerDAO = new CustomerDAOImpl();
        boolean st = customerDAO.update(customer);
        System.out.println("____ " + st + "___ " );       
        return Response.status(200).entity(st+"").build();
        
    }
    
    @POST
    @Path("/deleteCustomer")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response deleteCustomer(String pData) { //String customerID
        
       // pair to object
        ObjectMapper mapper = new ObjectMapper();
        Customer customer = new Customer();
        try {
//			File jsonFile = new File(jsonFilePath);
                customer = mapper.readValue(pData, Customer.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        CustomerDAO customerDAO = new CustomerDAOImpl();
        boolean st = customerDAO.delete(customer);
        System.out.println("____ " + st + "___ " );       
        return Response.status(200).entity(st+"").build();
        
    }
}
