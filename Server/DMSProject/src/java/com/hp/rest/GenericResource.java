/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.rest;

import com.hp.dao.CustomerDAO;
import com.hp.dao.CustomerDAOImpl;
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.domain.Customer;
import java.util.ArrayList;
import java.util.List;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.GET;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author HP
 */
@Path("generic")
public class GenericResource {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of GenericResource
     */
    public GenericResource() {
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
    
    @Path("/getData")
    @GET
    @Produces("text/plain")
    public String getData(){
        return "Hello HP Great!!";
    }
    
    // This method is called if XML is request
    @Path("/getXml")
    @GET
    @Produces(MediaType.TEXT_XML)
    public String sayXMLHello() {
      return "<?xml version=\"1.0\"?> " + ""
              + "<root>"
                + "<customer id=\"101\"> "
                      + "<name>Tran Manh Hung</name> "
                      + "<loc>101</loc> "
                + "</customer> "
              + "</root> ";
    }

    // This method is called if HTML is request
    @Path("/getHtml")
    @GET
    @Produces(MediaType.TEXT_HTML)
    public String sayHtmlHello() {
      return "<html> " + "<title>" + "Hello Jersey" + "</title>"
          + "<body><h1>" + "Hello Jersey" + "</body></h1>" + "</html> ";
    }
    
    //=============================== GET ==========================================
    // This method is called if XML is request
    @Path("/getCustomer")
    @GET
    @Produces(MediaType.TEXT_XML)
    public String getCustomerToXML(@QueryParam("username") String pUsername,
                                    @QueryParam("password") String pPassword) {
        //Check permission
        StaffDAO staffDAO = new StaffDAOImpl();
        if(pUsername != null && pPassword != null && staffDAO.authenticate(pUsername, pPassword)){
         
            CustomerDAO customerDAO = new CustomerDAOImpl();
            List<Customer> customerList = new ArrayList<Customer>();

            customerList = customerDAO.loadCustomersWithLocations(null, pUsername);
            System.out.println("LIST: " + customerList.get(0).getmMaDoiTuong());
            String xml = "<?xml version=\"1.0\"?> "
                    + "<root>";

            for(int i = 0; i < customerList.size(); i++){
                xml += "<customer id=\""+customerList.get(i).getmMaDoiTuong()+"\"> " 
                            + "<name>"+customerList.get(i).getmDoiTuong()+"</name> " 
                            + "<description>"+customerList.get(i).getmDiaChi()+"</description> " 
                            + "<x>"+customerList.get(i).getmXCoordinates()+"</x>" 
                            + "<y>"+customerList.get(i).getmYCoordinates()+"</y>"
                      + "</customer> ";
            }
             xml += "</root> ";

             return xml;
        }else
            return null;
    }
}
