package com.hp.sale_order;

import com.hp.domain.Schedule;
import com.hp.map.DetailsList;
import com.hp.map.FeatureView;
import com.hp.map.R;
import com.hp.map.R.layout;
import com.hp.map.Schedule_CalendarActivity;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class DialogArrayAdapter extends ArrayAdapter<String>{
	private final Context context;
	private final String[] values;
	private final int resource;
	
	public DialogArrayAdapter(Context pContext, int resource, String[] pValues){
		super(pContext, resource, pValues);
		//Reset list
//		Schedule_CalendarActivity.mTakeCustomersList.clear();
		
		this.context = pContext;
		this.values = pValues;
		this.resource = resource;
	}
	
	public View getView(int position, View convertView, ViewGroup parent){
		DialogFeatureView featureView;
        if (convertView instanceof DialogFeatureView) {
            featureView = (DialogFeatureView) convertView;
        } else {
            featureView = new DialogFeatureView(getContext());
        }

        

        featureView.setTitleId(values[position]);

        return featureView;
	}
	
}
