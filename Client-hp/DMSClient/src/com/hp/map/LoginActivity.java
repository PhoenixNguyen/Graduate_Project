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
import android.os.Looper;
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
	
	EditText mUsername;
	EditText mPassword;
	
	private Context context = this;
	
	private Thread thread = new ThreadClass();
    private static Looper threadLooper = null;
    
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
        
       
        // Begin the location reading thread.
        thread.start();

        // do UI stuff in here
        // never sleep in UI thread.  Example only.
        try {
            Thread.sleep(0);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

//        // end the thread.
//        threadLooper.quit();
//        // quit the activity
//        this.finish();
        //getLocation();
        
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
    
    private class ThreadClass extends Thread {
        @Override
        public void run() {
            Looper.prepare();

            LocationManager locationManager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
            MyLocationListener locListen = new MyLocationListener();
            locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 20000, 0, locListen);

            threadLooper = Looper.myLooper();

            Looper.loop();  // loop until "quit()" is called.

            // remove the update listener to prevent the locationManager from calling it.
            locationManager.removeUpdates(locListen);
        }
    }

    private class MyLocationListener implements LocationListener {      
        @Override
        public void onLocationChanged(Location location) {
        	if(location!= null && location.getLatitude()> 0)
        		System.out.println("latitude20: " + location.getLatitude() + " longitude20: " + location.getLongitude());
            /* Do very intensive work here */
        }

        @Override
        public void onProviderDisabled(String provider) {
        }

        @Override
        public void onProviderEnabled(String provider) {
        }

        @Override
        public void onStatusChanged(String provider, int status, Bundle extras) {
            }
    }
    
   
}