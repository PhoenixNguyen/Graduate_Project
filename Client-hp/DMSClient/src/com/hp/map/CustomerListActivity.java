package com.hp.map;

import java.util.Arrays;

import com.hp.order.ProductArrayAdapter;
import com.hp.schedule.ListViewSchedules;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.AdapterView.OnItemClickListener;

public class CustomerListActivity extends Activity{
	public static class CustomArrayAdapter extends ArrayAdapter<DetailsList>{
			
			/**
	         * @param demos An array containing the details of the demos to be displayed.
	         */
	        public CustomArrayAdapter(Context context, DetailsList[] demos) {
	            super(context, R.layout.feature, R.id.title, demos);
	        }
	
	        @Override
	        public View getView(int position, View convertView, ViewGroup parent) {
	            FeatureView featureView;
	            if (convertView instanceof FeatureView) {
	                featureView = (FeatureView) convertView;
	            } else {
	                featureView = new FeatureView(getContext());
	            }
	
	            DetailsList list = getItem(position);
	
	            featureView.setTitleId(list.titleId);
	            featureView.setDescriptionId(list.descriptionId);
	
	            return featureView;
	        }
		}
	
	
	private ListView listView;
	private Context context = this;
	private Button btt;
	private AutoCompleteTextView actv;
	
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.customer_list);
		
		//List view
		listView = (ListView)findViewById(R.id.list);
		listView.setAdapter(new CustomArrayAdapter(this, DetailsListData.CUSTOMER_LIST));
				
		//Auto complete
		String[] language ={"C","C++","Java",".NET","iPhone","Android","ASP.NET","PHP"};
		String[] li = new String[]{};
		
		for(int i = 0; i < DetailsListData.CUSTOMER_LIST.length; i++){
			li = append(li, DetailsListData.CUSTOMER_LIST[i].titleId);
		}
		
		//Creating the instance of ArrayAdapter containing list of language names  
        ArrayAdapter<String> adapter = new ArrayAdapter<String>  
         (this,android.R.layout.select_dialog_item, li);  
        
     //Getting the instance of AutoCompleteTextView  
        actv= (AutoCompleteTextView)findViewById(R.id.autoCompleteTextView1);  
        actv.setThreshold(1);//will start working from first character  
        actv.setAdapter(adapter);//setting the adapter data into the AutoCompleteTextView  
        actv.setTextColor(Color.RED);  
        
        //
        btt = (Button)findViewById(R.id.btt);
        btt.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				
				
				
				for(int i = 0; i < DetailsListData.CUSTOMER_LIST.length; i++){
					String id = DetailsListData.CUSTOMER_LIST[i].titleId;
					System.out.println("__ "+actv.getText().toString() + " " + id);
					if(actv.getText().toString().compareTo(id) == 0){
						System.out.println("pass!");
						
						DetailsList demo = (DetailsList) listView.getAdapter().getItem(i);
				        Intent t = new Intent(context, demo.activityClass);
				        t.putExtra("POSITION_CLICK", id);
				        
				        startActivity(t);
					}
				}
				
			}
		});
		
		
		listView.setOnItemClickListener(new OnItemClickListener()
		{
		     @Override
		     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
		     {
		        DetailsList demo = (DetailsList) listView.getAdapter().getItem(position);
		        Intent t = new Intent(context, demo.activityClass);
		        t.putExtra("POSITION_CLICK", demo.titleId);
		        
		        startActivity(t);
		      }
		});
	}

	@SuppressLint("NewApi")
	static <T> T[] append(T[] arr, T element) {
        final int N = arr.length;
        arr = Arrays.copyOf(arr, N + 1);
        arr[N] = element;
        return arr;
    }
	
//	@Override
//	public boolean onCreateOptionsMenu(Menu menu) {
//		// Inflate the menu; this adds items to the action bar if it is present.
//		getMenuInflater().inflate(R.menu.main, menu);
//		return true;
//	}
//	
//	@Override
//    public boolean onOptionsItemSelected(MenuItem item) {
//        // Handle item selection
//        if (item.getItemId() == R.id.menu_legal) {
//            startActivity(new Intent(this, LegalInfoActivity.class));
//            return true;
//        }
//        return super.onOptionsItemSelected(item);
//    }
//
//    @Override
//    protected void onListItemClick(ListView l, View v, int position, long id) {
//        DetailsList demo = (DetailsList) getListAdapter().getItem(position);
//        Intent t = new Intent(this, demo.activityClass);
//        t.putExtra("POSITION_CLICK", position);
//        
//        startActivity(t);
//    }
}
