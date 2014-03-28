package com.hp.rest;

import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import android.content.Context;
import android.net.ConnectivityManager;

import com.hp.domain.Customer;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.spi.service.ServiceFinder;

public class Rest {

	public static List<Customer> customerList =  new ArrayList<Customer>();
	public static String mStaffID = new String();
	
	public Rest(String pUrl){
		
	}
	
	public static WebResource mService;
	public static void connectWebservices(){
		ServiceFinder.setIteratorProvider(new AndroidServiceIteratorProvider());

		ClientConfig config = new DefaultClientConfig();
	    Client client = Client.create(config);
	    mService = client.resource(getBaseURI());
	    // Fluent interfaces
	    System.out.println(mService.path("webresources").path("getData").accept(MediaType.TEXT_PLAIN).get(ClientResponse.class).toString());
	    // Get plain text
	    System.out.println("________________ "+
	    		mService.path("webresources").path("getData").accept(MediaType.TEXT_PLAIN).get(String.class));
	    
	    
	    // Get XML
	    //System.out.println(service.path("webresources").path("getData").accept(MediaType.TEXT_XML).get(String.class));
	    // The HTML
	    //System.out.println(service.path("webresources").path("getData").accept(MediaType.TEXT_HTML).get(String.class));
	}
	
	private static URI getBaseURI() {
	    return UriBuilder.fromUri("http://192.168.169.2:8080/DMSProject").build();
	    //return UriBuilder.fromUri("http://masterpro02.hosco.com.vn:8081/DMSProject").build();
		//return UriBuilder.fromUri("http://192.168.169.2:31234/DMSProject").build();
	  }
	
	public static boolean getCustomersList(String pStaff){
		ClientResponse response = Rest.mService.path("webresources").path("getCustomersListStart")
				.accept("application/json")
				.type("application/json").post(ClientResponse.class, pStaff);
        System.out.println("________________ "+ response.toString());
        
        if(response.getStatus() != 200){
        	
        	return false;
        }
        
        mStaffID = pStaff;
        String re = response.getEntity(String.class);
        System.out.println("________________ "+ re);
        
        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        //List<Customer> customer = null;
		try {
//			File jsonFile = new File(jsonFilePath);
			customerList = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
					Customer.class));
			//System.out.println("++++++++++++++ mdt "+customerList.get(0).getmMaDoiTuong());
		} catch (JsonGenerationException e) {
			e.printStackTrace();
			return false;
		} catch (JsonMappingException e) {
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}
		
		return !customerList.isEmpty();
	}
		    
}
