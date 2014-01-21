package com.hp.map;

import java.util.Arrays;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import com.hp.rest.RestClient.RequestMethod;
import com.hp.rest.RestClient;
import com.hp.map.CustomerListActivity;
 
public class LoginActivity extends Activity {
	
	String mUrl = "http://192.168.1.104:33554/RestJerseyDemo/webresources/generic/getCustomer";
	EditText mUsername;
	EditText mPassword;
	
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // setting default screen to login.xml
        setContentView(R.layout.login);
 
        TextView registerScreen = (TextView) findViewById(R.id.link_to_register);
        
        mUsername = (EditText)findViewById(R.id.username);
        mPassword = (EditText)findViewById(R.id.password);
        
        Button btnLogin = (Button)findViewById(R.id.btnLogin);
        btnLogin.setOnTouchListener(new OnTouchListener() {
			
			@Override
			public boolean onTouch(View v, MotionEvent event) {
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
				if(response != null){
					client.parseXML();
					System.out.println("RESPONSE:____________________________ " + response);
					
					//Set List customer
					DetailsListData.CUSTOMER_LIST=  new DetailsList[]{
							
					};
					//add element
					for(int i = 0; i < 2; i++){
						DetailsListData.CUSTOMER_LIST = append(DetailsListData.CUSTOMER_LIST, 
								new DetailsList(R.string.map_label,
				                        R.string.map_description,
				                        MapActivity.class));
					}
					// TODO Auto-generated method stub
					Intent i = new Intent(getApplicationContext(), CustomerListActivity.class);
	            	startActivity(i);
				}
				return false;
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
    
    @SuppressLint("NewApi")
	static <T> T[] append(T[] arr, T element) {
        final int N = arr.length;
        arr = Arrays.copyOf(arr, N + 1);
        arr[N] = element;
        return arr;
    }
}