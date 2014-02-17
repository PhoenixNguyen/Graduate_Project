package com.hp.map;

import java.util.Arrays;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.hp.rest.RestClient.RequestMethod;
import com.hp.rest.Rest;
import com.hp.rest.RestClient;
 
@SuppressLint("NewApi")
@TargetApi(Build.VERSION_CODES.GINGERBREAD)
public class LoginActivity extends Activity {
	
	//String mUrl = "http://192.168.169.7:33554/DMSProject/webresources/getCustomerForStaff";
	String mUrl = "http://masterpro02.hosco.com.vn:8080/DMSProject/webresources/getCustomerForStaff"; 
	//String mUrl = "http://192.168.169.4:33554/DMSProject/webresources/getCustomerForStaff"; 
	EditText mUsername;
	EditText mPassword;
	
    @SuppressLint("NewApi")
	@Override
    public void onCreate(Bundle savedInstanceState) {
    	if (android.os.Build.VERSION.SDK_INT > 9) {
    	    StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
    	    StrictMode.setThreadPolicy(policy);
    	}
        super.onCreate(savedInstanceState);
        // setting default screen to login.xml
        setContentView(R.layout.login);
 
        if(isOnline()){
			System.out.println("Internet access!!____________________");
		}
		else
			System.out.println("NO Internet access!!____________________");
        
        // Connect server
        Rest rest = new Rest("");
		rest.connectWebservices();
		
        TextView registerScreen = (TextView) findViewById(R.id.link_to_register);
        
        mUsername = (EditText)findViewById(R.id.username);
        mPassword = (EditText)findViewById(R.id.password);
        
        Button btnLogin = (Button)findViewById(R.id.btnLogin);
        btnLogin.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				
				//Get username
				String username = mUsername.getText().toString();
				String password = mPassword.getText().toString();
				
				System.out.println("USERNAME___" + username);
				
				//Init Http request
				RestClient client = new RestClient(mUrl);
				client.AddParam("username", username);
				client.AddParam("password", password);
				
				try {
				    client.Execute(RequestMethod.GET);
				} catch (Exception e) {
				    e.printStackTrace();
				}
				
				//Get Response
				String response = client.getResponse();
				System.out.println("RESPONSE 0:____________________________ " + response);
				if(response != null){
					//If invalid return
					if(!client.parseXML(response))
						return;
					
					//Set List customer
					DetailsListData.CUSTOMER_LIST=  new DetailsList[]{
							
					};
					//add element
					for(int i = 0; i < RestClient.customerList.size(); i++){
						DetailsListData.CUSTOMER_LIST = append(DetailsListData.CUSTOMER_LIST, 
								new DetailsList(RestClient.customerList.get(i).getName(),
										RestClient.customerList.get(i).getId() +" : " + 
										RestClient.customerList.get(i).getAddress(),
				                        CustomerMapActivity.class));
					}
					// TODO Auto-generated method stub
					Intent i = new Intent(getApplicationContext(), MainActivity.class);
	            	startActivity(i);
				}
			}
		});
        // Listening to register new account link
        registerScreen.setOnClickListener(new View.OnClickListener() {
 
            public void onClick(View v) {
            	
                // Switching to Register screen
//                Intent i = new Intent(getApplicationContext(), RegisterActivity.class);
//                startActivity(i);
            }
        });
    }
    
    public boolean isOnline() { 
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
		return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
	}
    
    @SuppressLint("NewApi")
	static <T> T[] append(T[] arr, T element) {
        final int N = arr.length;
        arr = Arrays.copyOf(arr, N + 1);
        arr[N] = element;
        return arr;
    }
}