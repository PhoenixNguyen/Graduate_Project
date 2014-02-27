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
        mUsername.setText("eufood.");
        mPassword = (EditText)findViewById(R.id.password);
        
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
					//Set List customer
					DetailsListData.CUSTOMER_LIST=  new DetailsList[]{
							
					};
					
					//add element
					for(int i = 0; i < Rest.customerList.size(); i++){
						DetailsListData.CUSTOMER_LIST = append(DetailsListData.CUSTOMER_LIST, 
								new DetailsList(Rest.customerList.get(i).getmMaDoiTuong(),
										Rest.customerList.get(i).getmDoiTuong() +" : " + 
												Rest.customerList.get(i).getmDiaChi(),
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