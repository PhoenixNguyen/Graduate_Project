package com.hp.order_manager;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Filter;

public class OrdersManagerDetailArrayAdapter extends ArrayAdapter<TakeOrderDetail>{
	private final Context context;
	private List<TakeOrderDetail> values;
	private final int resource;
	
	private ArrayList<TakeOrderDetail> originalList;
	   
	public OrdersManagerDetailArrayAdapter(Context pContext, int resource, List<TakeOrderDetail> pValues){
		super(pContext, resource, pValues);
		this.context = pContext;
		this.values = pValues;
		this.resource = resource;
		
		this.originalList = new ArrayList<TakeOrderDetail>();
	    this.originalList.addAll(pValues);
	}
	
	public View getView(int position, View convertView, ViewGroup parent){
		FeatureViewDetail featureView;
        if (convertView instanceof FeatureViewDetail) {
            featureView = (FeatureViewDetail) convertView;
        } else {
            featureView = new FeatureViewDetail(getContext());
        }

        if(position%2 == 0){
	        //getResources().getColor(R.color.mycolor)
	        featureView.setBackgroundColor(Color.parseColor("#FFFF99"));
        }
        else
        	featureView.setBackgroundColor(Color.parseColor("#CCFF99"));

        featureView.setName(values.get(position).getmProductName());
        featureView.setId(values.get(position).getmProductID());
        featureView.setNumber(values.get(position).getmNumber() + " x " + 
        		(values.get(position).getmAfterOrderPrice() - values.get(position).getmAfterOrderPrice() * 
        		values.get(position).getmDiscount() / 100));
        featureView.setValue((new BigDecimal(values.get(position).getmPriceTotal())).toString()); 
        
        featureView.setOriginalPrice(values.get(position).getmAfterOrderPrice()+"");
        featureView.setDiscount(values.get(position).getmDiscount() + "");
        
        return featureView;
	}
	
	
	
	
}
