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

package com.hp.schedule;

import com.hp.map.R;
import com.hp.map.Schedule_CalendarActivity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * A widget that describes an activity that demonstrates a feature.
 */
public final class DialogFeatureView extends FrameLayout {

	private Context context;
    /**
     * Constructs a feature view by inflating layout/feature.xml.
     */
    public DialogFeatureView(Context context) {
        super(context);
        this.context = context;
        
        LayoutInflater layoutInflater =
                (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        layoutInflater.inflate(R.layout.schedule_dialog_feature, this);
    }

    /**
     * Set the resource id of the title of the demo.
     *
     * @param titleId the resource id of the title of the demo
     */
    public synchronized void setTitleId(String titleId) {
    	CheckBox chkBox = (CheckBox) (findViewById(R.id.cb_customer));
    	chkBox.setText(titleId);
    	chkBox.setOnClickListener(new OnClickListener() {
        	 
      	  @Override
      	  public void onClick(View v) {
                      //is chkIos checked?
      		if (((CheckBox) v).isChecked()) {
      			//Do something
      			Toast.makeText(context,
      		 	   "Checked!", Toast.LENGTH_SHORT).show();
      		}
       
      	  }
      	});
    }

    
}
