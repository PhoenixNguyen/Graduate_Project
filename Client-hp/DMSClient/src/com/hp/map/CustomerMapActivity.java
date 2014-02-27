/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.hp.map;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationClient;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerDragListener;
import com.google.android.gms.maps.GoogleMap.OnMyLocationButtonClickListener;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBounds.Builder;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.hp.domain.Schedule;
import com.hp.domain.RoadManagement;
import com.hp.rest.Rest;
import com.owlike.genson.ext.jaxrs.GensonJsonConverter;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;
import com.sun.jersey.api.json.JSONConfiguration;
import com.sun.jersey.core.util.MultivaluedMapImpl;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;import android.location.Location;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.support.v4.app.FragmentActivity;
import android.transition.Scene;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

/**
 * This shows how to place markers on a map.
 */
@TargetApi(Build.VERSION_CODES.GINGERBREAD)
@SuppressLint("NewApi")
public class CustomerMapActivity extends FragmentActivity
        implements
        OnMarkerClickListener,
        OnInfoWindowClickListener,
        OnMarkerDragListener,
        OnSeekBarChangeListener,
        
        ConnectionCallbacks,
        OnConnectionFailedListener,
        LocationListener,
        OnMyLocationButtonClickListener{
    
    private GoogleMap mMap;
    private LocationClient mLocationClient;
    
    private Button initOrder;
    private Context context = this;
    
 // These settings are the same as the settings for the map. They will in fact give you updates
    // at the maximal rates currently possible.
    private static final LocationRequest REQUEST = LocationRequest.create()
            .setInterval(5000)         // 5 seconds
            .setFastestInterval(16)    // 16ms = 60fps
            .setPriority(LocationRequest.PRIORITY_HIGH_ACCURACY);
    
    private final List<Marker> mMarkerRainbow = new ArrayList<Marker>();

    private TextView customer_name, customer_id, customer_phone, customer_address;
    private CheckBox mFlatBox;

    private final Random mRandom = new Random();
    
    private int positionClick = 0;
    private String username;
    
    //current location
    private float mX;
    private float mY;
    
    //private String mUrl = "http://192.168.169.7:33554/DMSProject/webresources/putJourney"; 
    String mUrl = "http://masterpro02.hosco.com.vn:8080/DMSProject/webresources/putJourney"; 
  	//String mUrl = "http://192.168.169.4:33554/DMSProject/webresources/getCustomerForStaff"; 
    
    @TargetApi(Build.VERSION_CODES.GINGERBREAD)
	@SuppressLint("NewApi")
	@Override
    protected void onCreate(Bundle savedInstanceState) {
    	if (android.os.Build.VERSION.SDK_INT > 9) {
    	    StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
    	    StrictMode.setThreadPolicy(policy);
    	}
    	
        super.onCreate(savedInstanceState);
        setContentView(R.layout.customer_map);

        
        
        //Get POSITION
        Intent i = getIntent();
        username  = i.getStringExtra("POSITION_CLICK");
        
        for(int j = 0; j < Rest.customerList.size(); j++){
        	if(username.compareTo(Rest.customerList.get(j).getmMaDoiTuong()) == 0){
        		positionClick = j;
        	}
        }
        
        customer_name = (TextView) findViewById(R.id.customer_name);
        customer_id = (TextView) findViewById(R.id.customer_id);
        customer_phone = (TextView) findViewById(R.id.customer_phone);
        customer_address = (TextView) findViewById(R.id.customer_address);

        customer_name.setText("Customer Name: "+ Rest.customerList.get(positionClick).getmDoiTuong());
        customer_id.setText("ID: "+ Rest.customerList.get(positionClick).getmMaDoiTuong());
        customer_phone.setText("Phone: "+ Rest.customerList.get(positionClick).getmDienThoai());
        customer_address.setText("Address: "+ Rest.customerList.get(positionClick).getmDiaChi());
        
        initOrder = (Button)findViewById(R.id.init_order);
        initOrder.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				startActivity(new Intent(context, Order_TabActivity.class));
			}
		});
        setUpMapIfNeeded();
    }

    @Override
    protected void onResume() {
        super.onResume();
        setUpMapIfNeeded();
        setUpLocationClientIfNeeded();
        mLocationClient.connect();
    }

    @Override
    public void onPause() {
        super.onPause();
        if (mLocationClient != null) {
            mLocationClient.disconnect();
        }
    }

    private void setUpMapIfNeeded() {
        // Do a null check to confirm that we have not already instantiated the map.
        if (mMap == null) {
            // Try to obtain the map from the SupportMapFragment.
            mMap = ((SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map))
                    .getMap();
            // Check if we were successful in obtaining the map.
            if (mMap != null) {
                setUpMap();
             // Check if we were successful in obtaining the map.
                if (mMap != null) {
                    mMap.setMyLocationEnabled(true);
                    mMap.setOnMyLocationButtonClickListener(this);
                }
            }
        }
    } 
    
    //=========================== My Location =======================================
    private void setUpLocationClientIfNeeded() {
        if (mLocationClient == null) {
            mLocationClient = new LocationClient(
                    getApplicationContext(),
                    this,  // ConnectionCallbacks
                    this); // OnConnectionFailedListener
        }
    }
    
    /**
     * Button to get current Location. This demonstrates how to get the current Location as required
     * without needing to register a LocationListener.
     */
    public void showMyLocation(View view) {
        if (mLocationClient != null && mLocationClient.isConnected()) {
            String msg = "Location = " + mLocationClient.getLastLocation();
            Toast.makeText(getApplicationContext(), msg, Toast.LENGTH_SHORT).show();
        }
    }
    
    /**
     * Implementation of {@link LocationListener}.
     */
    @Override
    public void onLocationChanged(Location location) {
        //mMessageView.setText("Location = " + location);
    	mX = (float)location.getLatitude();
    	mY = (float)location.getLongitude();
    }
    
    /**
     * Callback called when connected to GCore. Implementation of {@link ConnectionCallbacks}.
     */
    @Override
    public void onConnected(Bundle connectionHint) {
        mLocationClient.requestLocationUpdates(
                REQUEST,
                this);  // LocationListener
    }

    /**
     * Callback called when disconnected from GCore. Implementation of {@link ConnectionCallbacks}.
     */
    @Override
    public void onDisconnected() {
        // Do nothing
    }

    /**
     * Implementation of {@link OnConnectionFailedListener}.
     */
    @Override
    public void onConnectionFailed(ConnectionResult result) {
        // Do nothing
    }

    @Override
    public boolean onMyLocationButtonClick() {
        Toast.makeText(this, "Updating your location ...", Toast.LENGTH_SHORT).show();
        // Return false so that we don't consume the event and the default behavior still occurs
        // (the camera animates to the user's current position).
        return false;
    }
    
  //=========================== End My Location =======================================
    
    private void setUpMap() {
        // Hide the zoom controls as the button panel will cover it.
        mMap.getUiSettings().setZoomControlsEnabled(false);

        // Add lots of markers to the map.
        addMarkersToMap(1);

        // Set listeners for marker events.  See the bottom of this class for their behavior.
        mMap.setOnMarkerClickListener(this);
        mMap.setOnInfoWindowClickListener(this);
        mMap.setOnMarkerDragListener(this);

        // Pan to see all markers in view.
        // Cannot zoom to bounds until the map has a size.
        final View mapView = getSupportFragmentManager().findFragmentById(R.id.map).getView();
        if (mapView.getViewTreeObserver().isAlive()) {
            mapView.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
                @SuppressWarnings("deprecation") // We use the new method when supported
                @SuppressLint("NewApi") // We check which build version we are using.
                @Override
                public void onGlobalLayout() {
                    Builder builder = new LatLngBounds.Builder();
                    for(int i = 0; i< Rest.customerList.size(); i++){
                    		
                    	builder.include(new LatLng(Rest.customerList.get(i).getmXCoordinates(), Rest.customerList.get(i).getmYCoordinates()));
                        	
                    }
                    
                    LatLngBounds  bounds = builder.build();
                    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.JELLY_BEAN) {
                      mapView.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else {
                      mapView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    mMap.moveCamera(CameraUpdateFactory.newLatLngBounds(bounds, 50));
                }
            });
        }
    }

    //If show only a customer clicked: pView = 1
    //If show all customers: pView = 0
    private void addMarkersToMap(int pView) {
    	
    	//Add Markers
    	if(pView == 1){
    		mMap.addMarker(new MarkerOptions()
            .position(new LatLng(Rest.customerList.get(positionClick).getmXCoordinates(), Rest.customerList.get(positionClick).getmYCoordinates()))
            .title(Rest.customerList.get(positionClick).getmDoiTuong())
            .snippet(Rest.customerList.get(positionClick).getmMaDoiTuong()+":"+Rest.customerList.get(positionClick).getmDiaChi())
            .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_AZURE)));
    	}
    	else
	    	for(int i = 0; i< Rest.customerList.size(); i++){
	    		mMap.addMarker(new MarkerOptions()
	            .position(new LatLng(Rest.customerList.get(i).getmXCoordinates(), Rest.customerList.get(i).getmYCoordinates()))
	            .title(Rest.customerList.get(i).getmDoiTuong())
	            .snippet(Rest.customerList.get(i).getmMaDoiTuong()+":"+Rest.customerList.get(i).getmDiaChi())
	            .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_AZURE)));
	    		            	
	        }

    }

    private boolean checkReady() {
        if (mMap == null) {
            Toast.makeText(this, R.string.map_not_ready, Toast.LENGTH_SHORT).show();
            return false;
        }
        return true;
    }

    /** Called when the Clear button is clicked. */
    public void onClearMap(View view) {
        if (!checkReady()) {
            return;
        }
        mMap.clear();
        // Add a marker to the map.
        addMarkersToMap(1);
    }

    /** Called when the Reset button is clicked. */
    public void onResetMap(View view) {
        if (!checkReady()) {
            return;
        }
        // Clear the map because we don't want duplicates of the markers.
        mMap.clear();
        //Add lots of makers to the map
        addMarkersToMap(0);
    }

    /** Called when the sendDemo button is clicked. */
    public void onSendDemo(View view) {
    	//check network
    	if(isOnline()){
			System.out.println("Internet access!!____________________");
		}
		else{
			System.out.println("NO Internet access!!____________________");
			Toast.makeText(context, "No internet access, please try again later!", Toast.LENGTH_SHORT).show();
			return;
		}
    	
    	if(mX <= 0.0 || mY <= 0.0)
    		return;
    	
        System.out.println("SEND DEMO LOCATION: _______");
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        
        //Post
        RoadManagement track = new RoadManagement(""
        		,Rest.customerList.get(positionClick).getmMaDoiTuong()
        		,Timestamp.valueOf(dateFormat.format(date))
        		,mX
        		,mY
        		,"");
        
        ObjectMapper mapper = new ObjectMapper();
        String locationStr = new String();

		try {

			locationStr = mapper.writeValueAsString(track);
			
		} catch (JsonGenerationException ex) {

			ex.printStackTrace();

		} catch (JsonMappingException ex) {

			ex.printStackTrace();

		} catch (IOException ex) {

			ex.printStackTrace();

		}
       

		ClientResponse response = Rest.mService.path("webresources").path("putLocation").accept("application/json")
		.type("application/json").post(ClientResponse.class, locationStr);
		
//		if (response.getStatus() != 200) {
//            throw new RuntimeException("Failed : HTTP error code : "
//                    + response.getStatus());
//        }
        String output = response.toString();
        
        if ((response.getStatus() == 200) && (response.getEntity(String.class).compareTo("1") == 0)) {
            Toast.makeText(context, "Đã gửi vị trí", Toast.LENGTH_SHORT).show();
            // refresh customers
            DetailsListData.CUSTOMER_LIST = null;
            Rest.customerList.clear();
            
            if(Rest.getCustomersList(Rest.mStaffID) == true){
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
				Intent t = new Intent(context, CustomerMapActivity.class);
		        t.putExtra("POSITION_CLICK", username);
		        
		        startActivity(t);
			}
            
        }else
        	Toast.makeText(context, "Không thể gửi, hãy xem lại kết nối", Toast.LENGTH_SHORT).show();
        
        System.out.println("Server response .... \n");
        System.out.println(output);

		
    }
    
    public enum MIMETypes {
		 
		  APPLICATION_XML("application/xml");
		  
		  private final String name;
		   
		  private MIMETypes(String name) {
		    this.name = name;
		  }
		   
		  public String getName() {
		    return name;
		  }
	}
    
    /** Called when the Reset button is clicked. */
    public void onToggleFlat(View view) {
        if (!checkReady()) {
            return;
        }
        boolean flat = mFlatBox.isChecked();
        for (Marker marker : mMarkerRainbow) {
            marker.setFlat(flat);
        }
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        if (!checkReady()) {
            return;
        }
        float rotation = seekBar.getProgress();
        for (Marker marker : mMarkerRainbow) {
            marker.setRotation(rotation);
        }
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
        // Do nothing.
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        // Do nothing.
    }

    //
    // Marker related listeners.
    //

    @Override
    public boolean onMarkerClick(final Marker marker) {

            // This causes the marker at Adelaide to change color and alpha.
            marker.setIcon(BitmapDescriptorFactory.defaultMarker(mRandom.nextFloat() * 360));
            marker.setAlpha(mRandom.nextFloat());
        
        return false;
    }

    @Override
    public void onInfoWindowClick(Marker marker) {
        Toast.makeText(getBaseContext(), "Click Info Window", Toast.LENGTH_SHORT).show();
    }

	@Override
	public void onMarkerDrag(Marker arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onMarkerDragEnd(Marker arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onMarkerDragStart(Marker arg0) {
		// TODO Auto-generated method stub
		
	}
	
	
	@SuppressLint("NewApi")
	static <T> T[] append(T[] arr, T element) {
        final int N = arr.length;
        arr = Arrays.copyOf(arr, N + 1);
        arr[N] = element;
        return arr;
    }
	
	public boolean isOnline() { 
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE); 
		return cm.getActiveNetworkInfo() != null && cm.getActiveNetworkInfo().isConnectedOrConnecting(); 
	}

}
