package com.hp.order_manager;

import java.util.ArrayList;
import java.util.List;

import com.hp.domain.TakeOrder;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

public class OrdersManagerArrayAdapter extends ArrayAdapter<TakeOrder>{
	private final Context context;
	private final List<TakeOrder> values;
	private final int resource;
	
	public OrdersManagerArrayAdapter(Context pContext, int resource, List<TakeOrder> pValues){
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

        if(position%2 == 0){
	        //getResources().getColor(R.color.mycolor)
	        featureView.setBackgroundColor(Color.parseColor("#FFFF99"));
        }
        else
        	featureView.setBackgroundColor(Color.parseColor("#CCFF99"));

        featureView.setTitleId(values.get(position).getmID());
        featureView.setDescriptionId(values.get(position).getmCustomerName());
        featureView.setValue(values.get(position).getmBeforePrice()+"");

        
        return featureView;
	}
	
}
