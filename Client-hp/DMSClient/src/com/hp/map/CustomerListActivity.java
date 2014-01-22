package com.hp.map;

import com.hp.map.MainActivity.CustomArrayAdapter;

import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;

public class CustomerListActivity extends ListActivity{
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
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.customer_list);
		
		ListAdapter adapter = new CustomArrayAdapter(this, DetailsListData.CUSTOMER_LIST);

        setListAdapter(adapter);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	
	@Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle item selection
        if (item.getItemId() == R.id.menu_legal) {
            startActivity(new Intent(this, LegalInfoActivity.class));
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onListItemClick(ListView l, View v, int position, long id) {
        DetailsList demo = (DetailsList) getListAdapter().getItem(position);
        Intent t = new Intent(this, demo.activityClass);
        t.putExtra("POSITION_CLICK", position);
        
        startActivity(t);
    }
}
