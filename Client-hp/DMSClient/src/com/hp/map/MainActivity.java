package com.hp.map;

import com.hp.map.LegalInfoActivity;
import com.hp.map.DetailsList;
import com.hp.map.DetailsListData;
import com.hp.map.FeatureView;
import com.hp.map.R;

import android.os.Bundle;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;

public class MainActivity extends ListActivity {
	
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
		setContentView(R.layout.activity_main);
		
		ListAdapter adapter = new CustomArrayAdapter(this, DetailsListData.MAIN);

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
        startActivity(new Intent(this, demo.activityClass));
    }
    
    @Override
	public void onBackPressed() {
      // end the thread.
      LoginActivity.threadLooper.quit();
      startActivity(new Intent(this, LoginActivity.class));
	    // your code.
	}
}
