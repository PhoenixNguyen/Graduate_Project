package com.hp.rest;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.widget.EditText;
import android.widget.Toast;

import com.hp.domain.Staff;
import com.hp.map.LoginActivity;
import com.hp.map.ProfileActivity;
import com.hp.rest.CustomerAPI.GetCustomerListTask;
import com.sun.jersey.api.client.ClientResponse;

public class UserAPI {
	public static class AuthenticateUserTask extends AsyncTask<Void,Void,String>
    {
		Context context;
		String username;
		String password;
		LoginActivity activity;
		
		
    	ProgressDialog dialog;
    	
    	public AuthenticateUserTask(Context context, String username, String password,
    			LoginActivity activity){
    		
    		this.context = context;
    		this.username = username;
    		
    		this.password = password;
    		this.activity = activity;
    	}
    	
    	
    	protected void onPreExecute() {
    		dialog = ProgressDialog.show(context, "",
  				  "Đang đăng nhập", true);
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
							
	
			// Connect server
	        new Rest("").connectWebservices();
	        
			System.out.println("USERNAME___" + username);
			//Init Http request
			System.out.println("__ " + password);
			
			
			// Getting
			ClientResponse response = Rest.mService.path("webresources")
					.path("getStaff").accept("application/json")
					.type("application/json").post(ClientResponse.class, username +"::" + password);
			System.out.println("________________ " + response.toString());

			if (response.getStatus() != 200) {

				return "nodata";
			} else {

				String re = response.getEntity(String.class);
				System.out.println("________________ " + re);

				// Convert
				if (convertStringToObject(re))
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
            	
            	GetCustomerListTask getData = new GetCustomerListTask(context, "getCustomersListStart", Rest.mStaff.getId());
            	getData.execute();
            	//System.out.println(" ++ :: "+ getData.customerList.get(0).getMaDoiTuong());
            	
				//Run thread to do backgroud send location
				activity.doBackground();
				// TODO Auto-generated method stub
				Intent i = new Intent(activity.getApplicationContext(), ProfileActivity.class);
				activity.startActivity(i);
	        	//new ThreatRealtime("hello").start();
	        	dialog.dismiss();
            }
            else
            	if (result.equals("nointernet")){
            		Toast.makeText(context, "Không có kết nối mạng, mở 3G hoặc Wifi để tiếp tục!", Toast.LENGTH_SHORT).show();
            	}
           else
           {       
        	   dialog.dismiss();					
        	   Toast.makeText(context, "Sai tên đăng nhập hoặc mật khẩu", Toast.LENGTH_SHORT).show();
				
           }
        }   
        
        public boolean convertStringToObject(String str){
        	ObjectMapper mapper = new ObjectMapper();
            
            try {
            	Rest.mStaff = mapper.readValue(str, Staff.class);
    			
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
            
            if(Rest.mStaff != null)
            	return true;
            else
            	return false;
        }
    } 
}
