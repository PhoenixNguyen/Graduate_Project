package com.hp.map;

import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.hp.rest.Rest;
 
@SuppressLint("NewApi")
@TargetApi(Build.VERSION_CODES.GINGERBREAD)
public class LoginActivity extends Activity {
	
	//String mUrl = "http://192.168.169.7:33554/DMSProject/webresources/getCustomerForStaff";
	String mUrl = "http://masterpro02.hosco.com.vn:8080/DMSProject/webresources/getCustomerForStaff"; 
	//String mUrl = "http://192.168.169.4:33554/DMSProject/webresources/getCustomerForStaff"; 
	EditText mUsername;
	EditText mPassword;
	
	private Context context = this;
	
	
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
         
        TextView registerScreen = (TextView) findViewById(R.id.link_to_register);
        
        mUsername = (EditText)findViewById(R.id.username);
        mUsername.setText("ba_dinh");
        mPassword = (EditText)findViewById(R.id.password);
        mPassword.setText("123456");
        
        Button btnLogin = (Button)findViewById(R.id.btnLogin);
        btnLogin.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// Check the internet
				if(isOnline()){
					System.out.println("Internet access!!____________________");
				}
				else{
					System.out.println("NO Internet access!!____________________");
					Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
					return;
				}
				
				// Connect server
		        new Rest("").connectWebservices();
				
				//Get username
				String username = mUsername.getText().toString();
				String password = mPassword.getText().toString();
				
				System.out.println("USERNAME___" + username);
				
				//Init Http request
				System.out.println("__ " + password);
				if(password.compareTo("123456") != 0){
					Toast.makeText(context, "Tên đăng nhập và mật khẩu không hợp lệ!", Toast.LENGTH_SHORT).show();
				}
				else
				if(Rest.getCustomersList(username) == true){

					// TODO Auto-generated method stub
					Intent i = new Intent(getApplicationContext(), MainActivity.class);
	            	startActivity(i);
	            	//new ThreatRealtime("hello").start();
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
        
        
//       
//        //Create Thread
//        Thread toRun = new Thread()
//        {
//               public void run()
//               {
//            	   
////            	   int i =0;
////               	while(i >= 0){
////               		
////                   
////                       try {
////                           sleep(5000);
////                           i++;
////                       } catch (InterruptedException e) {}
////                   }
//            	   
//            	   GPSTracker gps = new GPSTracker(LoginActivity .this);
//                   // check if GPS enabled    
//                  if(gps.canGetLocation()){
//
//                      double latitude = gps.getLatitude();
//                      double longitude = gps.getLongitude();
//                      //Toast.makeText(getApplicationContext(), "Your Location is - \nLat: " + latitude + "\nLong: " + longitude, Toast.LENGTH_LONG).show();
//                      System.out.println("latitude: " + latitude + " longitude: " + longitude);
//                  }else{
//                      // can't get location
//                      // GPS or Network is not enabled
//                      // Ask user to enable GPS/network in settings
//                      gps.showSettingsAlert();
//                  }
//                  
//                   System.out.println("DONE! " + getName());
//               }
//        };
//        toRun.start();
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