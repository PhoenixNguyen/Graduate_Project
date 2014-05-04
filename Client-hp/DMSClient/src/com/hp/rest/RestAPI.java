package com.hp.rest;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;

import com.hp.domain.Customer;
import com.sun.jersey.api.client.ClientResponse;

public class RestAPI {

	public static List<Customer> customerList;
	
	public static class GetCustomerListTask extends AsyncTask<Void,Void,String>
    {
		Context context;
		String method;
		String staff;
				
		
		
		public GetCustomerListTask(Context context, String method, String staff){
			this.context = context;
			this.method = method;
			this.staff = staff;
		}
		
    	ProgressDialog dialog;
    	protected void onPreExecute() {
    		dialog = ProgressDialog.show(context, "",
  				  "Đang tải ... ", true);
		}
    	
        protected String doInBackground(Void... params)
        {
            //do something  
			if(CheckingInternet.isOnline()){
				System.out.println("Internet access!!____________________");
			}
			else{
				dialog.dismiss();									
				System.out.println("NO Internet access!!____________________");
								
				return "nointernet";
				
			}
			
			//Getting
			ClientResponse response = Rest.mService.path("webresources").path(method)
					.accept("application/json")
					.type("application/json").post(ClientResponse.class, staff);
	        System.out.println("________________ "+ response.toString());
	        
	        if(response.getStatus() != 200){
	        	
	        	return "nodata";
	        }
	        else{
	        
		        String re = response.getEntity(String.class);
		        System.out.println("________________ "+ re);
		        
		        //Convert
		        if(ConvertStringToObjectList(re))		        
		        	return "success";
		        else
		        	return "nodata";
	        }
			// =====================================================================================
	    
        }

        protected void onPostExecute(String result)
        {
            if (result.equals("success")){
                //do something
            	
	        	dialog.dismiss();
            }
            else
            	if (result.equals("nointernet")){
            		Toast.makeText(context, "Không có kết nối mạng, mở 3G hoặc Wifi để tiếp tục!", Toast.LENGTH_SHORT).show();
            	}
        	else
            	if (result.equals("nodata")){
            		Toast.makeText(context, "Không có dữ liệu!", Toast.LENGTH_SHORT).show();
            	}
           else
           {       
        	   dialog.dismiss();					
        	   Toast.makeText(context, "", Toast.LENGTH_SHORT).show();
				
           }
        } 
        
        public boolean  ConvertStringToObjectList(String input){
    		// pair to object
            ObjectMapper mapper = new ObjectMapper();
            
    		try {
    			customerList = mapper.readValue(input, TypeFactory.defaultInstance().constructCollectionType(List.class,
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
    		
    		return true;
    	}
        
        
    }   
	
}
