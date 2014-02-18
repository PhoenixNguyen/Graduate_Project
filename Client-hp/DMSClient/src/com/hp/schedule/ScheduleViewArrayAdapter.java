package com.hp.schedule;

import com.hp.map.DetailsList;
import com.hp.map.FeatureView;
import com.hp.map.R;
import com.hp.map.R.layout;
import com.hp.schedule.ListViewSchedules;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class ScheduleViewArrayAdapter extends ArrayAdapter<ListViewSchedules>{
	private final Context context;
	private final ListViewSchedules[] values;
	private final int resource;
	
	
	public ScheduleViewArrayAdapter(Context pContext, int resource, ListViewSchedules[] pValues){
		super(pContext, resource, pValues);
		this.context = pContext;
		this.values = pValues;
		this.resource = resource;
	}
	
	public View getView(int position, View convertView, ViewGroup parent){
		FeatureView featureView;
        if (convertView instanceof FeatureView) {
            featureView = (FeatureView) convertView;
        } else {
            featureView = new FeatureView(getContext());
        }

        

        featureView.setTitleId(values[position].getId());
        featureView.setDescriptionId(values[position].getTime().toString());

        return featureView;
	}
	
}
