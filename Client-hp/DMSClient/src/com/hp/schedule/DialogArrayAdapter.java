package com.hp.schedule;

import com.hp.domain.Customer;

import android.app.ListActivity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class DialogArrayAdapter extends ArrayAdapter<Customer>{
	private final Context context;
	private final Customer[] values;
	private final int resource;
	
	public DialogArrayAdapter(Context pContext, int resource, Customer[] pValues){
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

        

        featureView.setCustomer(values[position]);

        return featureView;
	}
	
}
