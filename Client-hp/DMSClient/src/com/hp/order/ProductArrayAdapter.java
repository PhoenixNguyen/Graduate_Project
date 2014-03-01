package com.hp.order;

import java.util.ArrayList;
import java.util.List;

import com.hp.domain.Product;
import com.hp.map.DetailsList;
import com.hp.map.FeatureView;
import com.hp.map.R;
import com.hp.map.R.layout;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

public class ProductArrayAdapter extends ArrayAdapter<Product>{
	private final Context context;
	private final List<Product> values;
	private final int resource;
	
	public ProductArrayAdapter(Context pContext, int resource, List<Product> pValues){
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

        

        featureView.setTitleId(values.get(position).getmProductID());
        featureView.setDescriptionId(values.get(position).getmProductName());

        return featureView;
	}
	
}
