/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.hp.rest;

import com.hp.dao.CustomerDAO;
import com.hp.dao.CustomerDAOImpl;
import com.hp.dao.ProductDAO;
import com.hp.dao.ProductDAOImpl;
import com.hp.dao.ProviderDAO;
import com.hp.dao.ProviderDAOImpl;
import com.hp.dao.RoadManagementDAO;
import com.hp.dao.RoadManagementDAOImpl;
import com.hp.dao.ScheduleDAO;
import com.hp.dao.ScheduleDAOImpl;
import com.hp.dao.StaffDAO;
import com.hp.dao.StaffDAOImpl;
import com.hp.dao.TakeOrderDAO;
import com.hp.dao.TakeOrderDAOImpl;
import com.hp.dao.TakeOrderDetailDAO;
import com.hp.dao.TakeOrderDetailDAOImpl;
import com.hp.datahandle.DataConvert;
import com.hp.domain.Customer;
import com.hp.domain.DataInfo;
import com.hp.domain.Product;
import com.hp.domain.Provider;
import com.hp.domain.RoadManagement;
import com.hp.domain.Schedule;
import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import java.io.IOException;

import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.PathParam;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.GET;
import static javax.ws.rs.HttpMethod.POST;
import javax.ws.rs.POST;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Request;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.JSONException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

//import org.glassfish.jersey.media.multipart.FormDataContentDisposition;
//import org.glassfish.jersey.media.multipart.FormDataParam;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

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

            customerList = customerDAO.loadCustomersWithLocations(null, pUsername, null);
            System.out.println("LIST: " + customerList.get(0).getmMaDoiTuong());
            String xml = "<?xml version=\"1.0\"?> "
                    + "<root>";

            for(int i = 0; i < customerList.size(); i++){
                xml += "<customer id=\""+customerList.get(i).getmMaDoiTuong()+"\"> " 
                            + "<name>"+customerList.get(i).getmDoiTuong()+"</name> " 
                            + "<address>"+customerList.get(i).getmDiaChi()+"</address> " 
                            + "<phone>"+customerList.get(i).getmDienThoai()+"</phone> " 
                            + "<x>"+customerList.get(i).getmXCoordinates()+"</x>" 
                            + "<y>"+customerList.get(i).getmYCoordinates()+"</y>"
                            + "<staffid>"+customerList.get(i).getmMaNhanVien()+"</staffid>"
                      + "</customer> ";
            }
             xml += "</root> ";

             return xml;
        }else
            return null;
    }
        
    //Update journey
    @Path("/putJourney")
    @POST
    @Produces(MediaType.TEXT_XML)
    public String updateJourney(@FormParam("data") String str) {
        RoadManagementDAO roadManagementDAO = new RoadManagementDAOImpl();
        //Get current time
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        Calendar cal = Calendar.getInstance();
        System.out.println(dateFormat.format(cal.getTime()));
        
        String pXML = "";
        try {
                pXML = new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (UnsupportedEncodingException e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
        }    
        
        try {
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(new InputSource(new StringReader(pXML)));


            doc.getDocumentElement().normalize();

            System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

            NodeList nList = doc.getElementsByTagName("road");

            System.out.println("----------------------------");

            for (int temp = 0; temp < nList.getLength(); temp++) {
                    //init customer
                    Customer customer = new Customer();

                    Node nNode = nList.item(temp);

                    System.out.println("\nCurrent Element :" + nNode.getNodeName());

                    if (nNode.getNodeType() == Node.ELEMENT_NODE) {

                            Element eElement = (Element) nNode;

                            String customerid = eElement.getAttribute("id");
                            
                            float x = Float.parseFloat(eElement.getElementsByTagName("x").item(0).getTextContent());
                            float y = Float.parseFloat(eElement.getElementsByTagName("y").item(0).getTextContent());
                            String staffid = eElement.getElementsByTagName("staffid").item(0).getTextContent();
                            
                            System.out.println("customer id : " + customerid);
                            System.out.println("staff id : " + staffid);
                            System.out.println("X : " + x);
                            System.out.println("Y : " + y);
                            System.out.println("TIME : " + "");
                            
                            //UPDATE into Database
                            RoadManagement roadManagement = new RoadManagement();
                            roadManagement.setmMaNhanVien(staffid);
                            roadManagement.setmMaKhachHang(customerid);
                            roadManagement.setmViDo(x);
                            roadManagement.setmKinhdo(y);
                            roadManagement.setmThoiGian(Timestamp.valueOf(dateFormat.format(cal.getTime())));
                            
                            roadManagementDAO.saveOrUpdate(roadManagement);
                            
                    }
            }

            return "OK";
        } catch (ParserConfigurationException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "ERROR";
        } catch (SAXException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "ERROR";
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "ERROR";
        }
    }
    
    @Path("/getSchedule")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public List<Schedule> getSchedule(String pTemp){
        String[] total = pTemp.split("::");
        String staff = total[0];
        String date = total[1];
        
        ScheduleDAO scheduleDAO = new ScheduleDAOImpl();
        List<Schedule> scheduleList = new ArrayList<Schedule>();

        scheduleList = scheduleDAO.getScheduleList(staff, date);
        
//        Schedule sc = new Schedule();
//        sc.setmMaKH("fdfd");
//        sc.setmMaNV("1234fdfd");
        return scheduleList;
    }
    
    @POST
    @Path("/putLocation")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putLocation( String pTrack ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        RoadManagement track = new RoadManagement();
        try {
//			File jsonFile = new File(jsonFilePath);
                track = mapper.readValue(pTrack, RoadManagement.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update location
        CustomerDAO customerDAO = new CustomerDAOImpl();
        int st = customerDAO.update(track.getmMaKhachHang(), track.getmViDo(), track.getmKinhdo());
        
//            String output = pTrack.toString();
            System.out.println("____ " + pTrack + "___ " + st);
            return Response.status(200).entity(st+"").build();
    }
    
    @Path("/getCustomersListSchedule")
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public List<Customer> getCustomerToXML(String pStaffDate) {
         
        String[] total = pStaffDate.split("::");
        String staff = total[0];
        String date = total[1];
        
        CustomerDAO customerDAO = new CustomerDAOImpl();
        List<Customer> customerList = new ArrayList<Customer>();

        customerList = customerDAO.getListCustomerSchedule(staff, date);

        return customerList;
    }
    
    @POST
    @Path("/putSchedule")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putSchedule( String pSchedule ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        List<Schedule> schedulesList = null;
        try {
//			File jsonFile = new File(jsonFilePath);
                schedulesList = mapper.readValue(pSchedule, TypeFactory.defaultInstance().constructCollectionType(List.class,
					Schedule.class));
                //System.out.println(schedulesList.get(0).getmMaKH());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update location
        ScheduleDAO scheduleDAO = new ScheduleDAOImpl();
        for(int i = 0; i< schedulesList.size(); i++){
            scheduleDAO.saveOrUpdate(schedulesList.get(i));
        }
            
            return Response.status(200).entity(pSchedule).build();
    }
    
    @POST
    @Path("/getCustomersListStart")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<Customer> getCustomersListStart( String pStaff ) {

        CustomerDAO customerDAO = new CustomerDAOImpl();
        List<Customer> customerList = new ArrayList<Customer>();

        customerList = customerDAO.getListCustomers(pStaff);
        return customerList;
    }
    
    @POST
    @Path("/deleteSchedule")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response deleteSchedule( String pTmp ) {
        String[] total = pTmp.split("::");
        String staff = total[0];
        String date = total[1];
        
        ScheduleDAO scheduleDAO = new ScheduleDAOImpl();
        int st = scheduleDAO.deletechedule(staff, date);
        return Response.status(200).entity("status:"+ st).build();
    }
    
    @GET
    @Path("/getProvidersIDList")
    @Produces(MediaType.APPLICATION_JSON)
    public List<Provider> getProvidersIDList() {
        List<Provider> list = new ArrayList<Provider>();
        
        ProviderDAO providerDAO = new ProviderDAOImpl();
        list = providerDAO.getProvidersList();
        
        return list;
        
    }
    
    @POST
    @Path("/getProductsList")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<Product> getProvidersIDList(String pProvider) {
        List<Product> list = new ArrayList<Product>();
        
        ProductDAO productDAO = new ProductDAOImpl();
        list = productDAO.getProductList(pProvider);
        
        return list;
        
    }
    
    @POST
    @Path("/putTakeOrder")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putTakeOrder( String pTakeOrder ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        TakeOrder takeOrder = new TakeOrder();
        try {
//			File jsonFile = new File(jsonFilePath);
                takeOrder = mapper.readValue(pTakeOrder, TakeOrder.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update location
        TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
        boolean st = takeOrderDAO.saveOrUpdate(takeOrder);
//            String output = pTrack.toString();
            System.out.println("pTakeOrder: " + st +"____ " + pTakeOrder);
            return Response.status(200).entity(st+"").build();
    }
    
    @POST
    @Path("/putOrdersDetailList")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putOrdersDetailList( String pList ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        List<TakeOrderDetail> detailList = null;
        try {
//			File jsonFile = new File(jsonFilePath);
                detailList = mapper.readValue(pList
                        , TypeFactory.defaultInstance().constructCollectionType(List.class
                        , TakeOrderDetail.class));
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
        TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
        for(int i = 0; i< detailList.size(); i++){
            if(takeOrderDetailDAO.saveOrUpdate(detailList.get(i)))
                count ++;
            
        }
        System.out.println("pTakeOrderDetail: " + count +"____ " + pList);
        return Response.status(200).entity(count+"").build();
    }
    
    @POST
    @Path("/getTakeOrderList")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<TakeOrder> getTakeOrderList(String pData) {
        List<TakeOrder> list = new ArrayList<TakeOrder>();
        
        TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
        list = takeOrderDAO.getTakeOrdersList(pData);
        
        return list;
        
    }
    
    @POST
    @Path("/getTakeOrderDetailList")
    @Consumes(MediaType.APPLICATION_JSON)
    public List<TakeOrderDetail> getTakeOrderDetailList(String pData) {
        List<TakeOrderDetail> list = new ArrayList<TakeOrderDetail>();
        
        TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
        list = takeOrderDetailDAO.getDetailTakeOrdersList(pData);
        
        return list;
        
    }
    
    
    @POST
    @Path("/putImage")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response putImage( String pData ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        DataInfo data = new DataInfo();
        try {
//			File jsonFile = new File(jsonFilePath);
                data = mapper.readValue(pData, DataInfo.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        Date today = new Date();
        
        String name = data.getNhanVien() +"-"+ df.format(today) +"-"
                + today.getHours()+"-"+today.getMinutes()+"-"+today.getSeconds() + ".jpg";
        
        String path = ServletActionContext.getServletContext()
                .getRealPath("/customer/" );
        
        //Create new folder
        File file = new File(path + "/" + data.getKhachHang());
	if (!file.exists()) {
		if (file.mkdir()) {
			System.out.println("Directory is created!");
		} else {
			System.out.println("Failed to create directory!");
		}
	}
        
        System.out.println(path+ "/" + data.getKhachHang()+"/"+ name);
        //Save
        saveImage(data.getNoiDung(), (path + "/" + data.getKhachHang()+"/"+ name) );
        
//            String output = pTrack.toString();
            System.out.println("____ " + data.getNhanVien()+ "___ " + data.getKhachHang());
            return Response.status(200).entity("______ Success").build();
    }
    
    public void saveImage(String input, String output) {
        try {           
                byte[] imageByteArray = DataConvert.decodeImage(input);

                // Write a image byte array into file system
                FileOutputStream imageOutFile = new FileOutputStream(output);
                imageOutFile.write(imageByteArray);
                
                imageOutFile.close();

                System.out.println("Image Successfully Manipulated!");
        } catch (FileNotFoundException e) {
            System.out.println("Image not found" + e);
        } catch (IOException ioe) {
            System.out.println("Exception while reading the Image " + ioe);
        }
        
    }
    
    @POST
    @Path("/updateDetailOrder")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateDetailOrder( String pTakeOrder ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        TakeOrderDetail takeOrderDetail = new TakeOrderDetail();
        try {
//			File jsonFile = new File(jsonFilePath);
                takeOrderDetail = mapper.readValue(pTakeOrder, TakeOrderDetail.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update location
        TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
        boolean st = takeOrderDetailDAO.update(takeOrderDetail);
        if(!st)
            return Response.status(200).entity(st+"").build();
        
        //Update the order
        List<TakeOrderDetail> list = new ArrayList<TakeOrderDetail>();
        
        list = takeOrderDetailDAO.getDetailTakeOrdersList(takeOrderDetail.getmTakeOrderID());
        float priceTotal = 0;
        for(int i = 0; i < list.size(); i++){
            priceTotal += list.get(i).getmPriceTotal();
        }
        
        TakeOrder takeOrder = new TakeOrder();
        TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
        
        takeOrder = takeOrderDAO.getTakeOrder(takeOrderDetail.getmTakeOrderID());
        takeOrder.setMAfterPrivate(priceTotal - priceTotal*takeOrder.getMDiscount()/100);
        boolean st2 = takeOrderDAO.update(takeOrder);
//            String output = pTrack.toString();
        System.out.println("____ " + pTakeOrder + "___ " + st);
        return Response.status(200).entity(st2+"").build();
    }
    
    @POST
    @Path("/deleteDetailOrder")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response deleteDetailOrder( String pTakeOrder ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        TakeOrderDetail takeOrderDetail = new TakeOrderDetail();
        try {
//			File jsonFile = new File(jsonFilePath);
                takeOrderDetail = mapper.readValue(pTakeOrder, TakeOrderDetail.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update 
        TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
        boolean st = takeOrderDetailDAO.delete(takeOrderDetail);
        if(!st)
            return Response.status(200).entity(st+"").build();
        
        //Update the order
        List<TakeOrderDetail> list = new ArrayList<TakeOrderDetail>();
        
        list = takeOrderDetailDAO.getDetailTakeOrdersList(takeOrderDetail.getmTakeOrderID());
        float priceTotal = 0;
        for(int i = 0; i < list.size(); i++){
            priceTotal += list.get(i).getmPriceTotal();
        }
        
        TakeOrder takeOrder = new TakeOrder();
        TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
        
        takeOrder = takeOrderDAO.getTakeOrder(takeOrderDetail.getmTakeOrderID());
        takeOrder.setMAfterPrivate(priceTotal);
        boolean st2 = takeOrderDAO.update(takeOrder);
//            String output = pTrack.toString();
        System.out.println("____ " + pTakeOrder + "___ " + st);
        return Response.status(200).entity(st2+"").build();
    }
    
    @POST
    @Path("/deleteOrder")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response deleteOrder( String pTakeOrder ) {

        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        TakeOrder takeOrder = new TakeOrder();
        try {
//			File jsonFile = new File(jsonFilePath);
                takeOrder = mapper.readValue(pTakeOrder, TakeOrder.class);
                //System.out.println(track.getmMaKhachHang());
        } catch (JsonGenerationException e) {
                e.printStackTrace();
        } catch (JsonMappingException e) {
                e.printStackTrace();
        } catch (IOException e) {
                e.printStackTrace();
        }
        
        //Update 
        TakeOrderDetailDAO takeOrderDetailDAO = new TakeOrderDetailDAOImpl();
        boolean st = takeOrderDetailDAO.delete(takeOrder.getMID());
        if(!st)
            return Response.status(200).entity(st+"").build();
        
        //Delete Order
        TakeOrderDAO takeOrderDAO = new TakeOrderDAOImpl();
        boolean st2 = takeOrderDAO.delete(takeOrder);
        
        System.out.println("____ " + pTakeOrder + "___ " + st);
        return Response.status(200).entity(st2+"").build();
    }
}
