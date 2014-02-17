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
import com.hp.domain.Track;
import com.hp.rest.Rest;
import com.hp.rest.RestClient;
import com.hp.rest.RestClient.RequestMethod;
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
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.support.v4.app.FragmentActivity;
import android.transition.Scene;
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
    
    private int positionClick;

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
        positionClick = i.getIntExtra("POSITION_CLICK", 0);
        
        customer_name = (TextView) findViewById(R.id.customer_name);
        customer_id = (TextView) findViewById(R.id.customer_id);
        customer_phone = (TextView) findViewById(R.id.customer_phone);
        customer_address = (TextView) findViewById(R.id.customer_address);

        customer_name.setText("Customer Name: "+ RestClient.customerList.get(positionClick).getName());
        customer_id.setText("ID: "+ RestClient.customerList.get(positionClick).getId());
        customer_phone.setText("Phone: "+ RestClient.customerList.get(positionClick).getPhone());
        customer_address.setText("Address: "+ RestClient.customerList.get(positionClick).getAddress());
        
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
                    for(int i = 0; i< RestClient.customerList.size(); i++){
                    		
                    	builder.include(new LatLng(RestClient.customerList.get(i).getX(), RestClient.customerList.get(i).getY()));
                        	
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
            .position(new LatLng(RestClient.customerList.get(positionClick).getX(), RestClient.customerList.get(positionClick).getY()))
            .title(RestClient.customerList.get(positionClick).getName())
            .snippet(RestClient.customerList.get(positionClick).getId()+":"+RestClient.customerList.get(positionClick).getAddress())
            .icon(BitmapDescriptorFactory.defaultMarker(BitmapDescriptorFactory.HUE_AZURE)));
    	}
    	else
	    	for(int i = 0; i< RestClient.customerList.size(); i++){
	    		mMap.addMarker(new MarkerOptions()
	            .position(new LatLng(RestClient.customerList.get(i).getX(), RestClient.customerList.get(i).getY()))
	            .title(RestClient.customerList.get(i).getName())
	            .snippet(RestClient.customerList.get(i).getId()+":"+RestClient.customerList.get(i).getAddress())
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
    	if(mX <= 0.0 || mY <= 0.0)
    		return;
    	
        System.out.println("SEND DEMO LOCATION: _______");
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        
        Track track = new Track(""
        		,RestClient.customerList.get(positionClick).getId()
        		,Timestamp.valueOf(dateFormat.format(date))
        		,mX
        		,mY
        		,"");
        
        ObjectMapper mapper = new ObjectMapper();
        String put = new String();

		try {

			put = mapper.writeValueAsString(track);
			
//			mapper.writeValue(put, track);
			//System.out.println(mapper.writeValueAsString(student));

		} catch (JsonGenerationException ex) {

			ex.printStackTrace();

		} catch (JsonMappingException ex) {

			ex.printStackTrace();

		} catch (IOException ex) {

			ex.printStackTrace();

		}
        ClientConfig clientConfig = new DefaultClientConfig();

		clientConfig.getFeatures().put(
				JSONConfiguration.FEATURE_POJO_MAPPING, Boolean.TRUE);

		Client client = Client.create(clientConfig);

		WebResource webResource = client
				.resource("http://192.168.169.2:8080/DMSProject/webresources/putLocation");

		ClientResponse response = webResource.accept("application/json")
		.type("application/json").post(ClientResponse.class, put);
		
		if (response.getStatus() != 200) {
            throw new RuntimeException("Failed : HTTP error code : "
                    + response.getStatus());
        }
        String output = response.getEntity(String.class);
        System.out.println("Server response .... \n");
        System.out.println(output);

			
		
//		ClientResponse response = webResource.accept("application/json")
//				.type("application/json").get(ClientResponse.class);
//        System.out.println("________________ "+ response.toString());
//        String re = response.getEntity(String.class);
//        System.out.println("________________ "+ re);
//        
//        // pair to object
//        ObjectMapper mapper = new ObjectMapper();
//
//		try {
////			File jsonFile = new File(jsonFilePath);
//			List<Schedule> schedule = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
//					Schedule.class));
//			System.out.println(schedule.get(0).getmMaKH());
//
//		} catch (JsonGenerationException e) {
//
//			e.printStackTrace();
//
//		} catch (JsonMappingException e) {
//
//			e.printStackTrace();
//
//		} catch (IOException e) {
//
//			e.printStackTrace();
//
//		}
        
        
//		Rest.mService.path("webresources").path("getSchedule").accept(MediaType.TEXT_PLAIN).get(ClientResponse.class).getEntity(String.class));
//        
//     // register genson in jersey client
//        ClientConfig cfg = new DefaultClientConfig(GensonJsonConverter.class);
//        Client client = Client.create(cfg);
//        WebResource webResource = client.resource("http://192.168.169.5:8080/DMSProject/webresources/getSchedule");
//
//        // you can map it to a pojo, no need to have a string or map
//        Schedule pojo = webResource
//                        .accept(MediaType.APPLICATION_JSON)
//                        .get(Schedule.class);
//        
//        System.out.println("________________ "+ pojo.getmMaKH());
//        		Rest.mService.path("webresources").path("getSchedule").accept(MediaType.TEXT_PLAIN).get(ClientResponse.class).getEntity(String.class));
//        
//        ClientResponse resp = Rest.mService.path("webresources").path("getSchedule").accept(MediaType.APPLICATION_JSON).get(ClientResponse.class);
////        GenericType<List<Schedule>> gt = new GenericType<List<Schedule>>(){};
////        List<Schedule> list = resp.getEntity(gt);
//        Schedule sc = resp.getEntity(Schedule.class);
//        System.out.println("_______________ "+sc.getmMaNV());
        
////        MultivaluedMap<String, String> params = new MultivaluedMapImpl();
//        GenericType<Collection<Schedule>> gt = new GenericType<Collection<Schedule>>(){};
//		Collection<Schedule> result = Rest.mService.path("webresources").path("getSchedule")
////				.queryParams(params)
//				.accept(MediaType.APPLICATION_XML_TYPE).get(gt);
//	
//		System.out.println("_______________ "+result.toString());
		
//        ClientResponse response2 = Rest.mService.path("webresources").path("getSchedule")
//        			.accept(MediaType.APPLICATION_XML)
//        			.type(MediaType.APPLICATION_XML)
//        			.get(ClientResponse.class, track);
//		
//        ClientResponse response = Rest.mService.path("webresources").path("putJourney")
//    			.accept(MediaType.APPLICATION_XML)
//    			.type(MediaType.APPLICATION_XML)
//    			.post(ClientResponse.class, track);
//        
//        if (response.getStatus() != 200) {
//        	throw new RuntimeException("Failed : HTTP error code : " 
//		                        + response.getStatus());
//		            }
//		 
//        String output = response.getEntity(String.class);
//        System.out.println("Server response .... ______\n");
//		System.out.println(output);

		
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

}
