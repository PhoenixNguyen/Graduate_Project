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

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.InfoWindowAdapter;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerClickListener;
import com.google.android.gms.maps.GoogleMap.OnMarkerDragListener;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBounds.Builder;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.hp.rest.RestClient;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.BounceInterpolator;
import android.view.animation.Interpolator;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RadioGroup;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * This shows how to place markers on a map.
 */
public class MarkerActivity extends FragmentActivity
        implements
        OnMarkerClickListener,
        OnInfoWindowClickListener,
        OnMarkerDragListener,
        OnSeekBarChangeListener {
    
    /** Demonstrates customizing the info window and/or its contents. */
    class CustomInfoWindowAdapter implements InfoWindowAdapter {
        private final RadioGroup mOptions;

        // These a both viewgroups containing an ImageView with id "badge" and two TextViews with id
        // "title" and "snippet".
        private final View mWindow;
        private final View mContents;

        CustomInfoWindowAdapter() {
            mWindow = getLayoutInflater().inflate(R.layout.custom_info_window, null);
            mContents = getLayoutInflater().inflate(R.layout.custom_info_contents, null);
            mOptions = (RadioGroup) findViewById(R.id.custom_info_window_options);
        }

        @Override
        public View getInfoWindow(Marker marker) {
            if (mOptions.getCheckedRadioButtonId() != R.id.custom_info_window) {
                // This means that getInfoContents will be called.
                return null;
            }
            //render(marker, mWindow);
            return mWindow;
        }

        @Override
        public View getInfoContents(Marker marker) {
            if (mOptions.getCheckedRadioButtonId() != R.id.custom_info_contents) {
                // This means that the default info contents will be used.
                return null;
            }
            //render(marker, mContents);
            return mContents;
        }

    }

    private GoogleMap mMap;

    private final List<Marker> mMarkerRainbow = new ArrayList<Marker>();

    private TextView mTopText;
    private SeekBar mRotationBar;
    private CheckBox mFlatBox;

    private final Random mRandom = new Random();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.marker_demo);

        mTopText = (TextView) findViewById(R.id.top_text);

        mRotationBar = (SeekBar) findViewById(R.id.rotationSeekBar);
        mRotationBar.setMax(360);
        mRotationBar.setOnSeekBarChangeListener(this);

        mFlatBox = (CheckBox) findViewById(R.id.flat);

        setUpMapIfNeeded();
    }

    @Override
    protected void onResume() {
        super.onResume();
        setUpMapIfNeeded();
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
            }
        }
    }

    private void setUpMap() {
        // Hide the zoom controls as the button panel will cover it.
        mMap.getUiSettings().setZoomControlsEnabled(false);

        // Add lots of markers to the map.
        addMarkersToMap();

        // Setting an info window adapter allows us to change the both the contents and look of the
        // info window.
        mMap.setInfoWindowAdapter(new CustomInfoWindowAdapter());

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

    private void addMarkersToMap() {
    	
    	//Add Markers
    	List<Marker> markerList = new ArrayList<Marker>();
    	for(int i = 0; i< RestClient.customerList.size(); i++){
    		mMap.addMarker(new MarkerOptions()
            .position(new LatLng(RestClient.customerList.get(i).getX(), RestClient.customerList.get(i).getY()))
            .title(RestClient.customerList.get(i).getName())
            .snippet(RestClient.customerList.get(i).getId()+":"+RestClient.customerList.get(i).getDescription())
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
    }

    /** Called when the Reset button is clicked. */
    public void onResetMap(View view) {
        if (!checkReady()) {
            return;
        }
        // Clear the map because we don't want duplicates of the markers.
        mMap.clear();
        addMarkersToMap();
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
    public void onMarkerDragStart(Marker marker) {
        mTopText.setText("onMarkerDragStart");
    }

    @Override
    public void onMarkerDragEnd(Marker marker) {
        mTopText.setText("onMarkerDragEnd");
    }

    @Override
    public void onMarkerDrag(Marker marker) {
        mTopText.setText("onMarkerDrag.  Current Position: " + marker.getPosition());
    }
}
