package com.hp.map;

import java.util.Arrays;

import com.hp.customer.CustomerArrayAdapter;
import com.hp.domain.Customer;
import com.hp.order.ProductArrayAdapter;
import com.hp.rest.Rest;
import com.hp.schedule.ListViewSchedules;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.AdapterView.OnItemClickListener;

public class CustomerListActivity extends Activity{
	
	private ListView listView;
	private Context context = this;
	
	private EditText input_text;
	
	private CustomerArrayAdapter customerAdapter;
	
	@SuppressLint("NewApi")
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.customer_list);
		
		// Set up action bar.
//        final ActionBar actionBar = getActionBar();
//        actionBar.setDisplayShowHomeEnabled(false);
//        actionBar.setDisplayShowTitleEnabled(false);
        
		input_text = (EditText)findViewById(R.id.input_text);
		
		input_text.addTextChangedListener(new TextWatcher() {
			
			@Override
			public void onTextChanged(CharSequence s, int start, int before, int count) {
				// TODO Auto-generated method stub
				customerAdapter.getFilter().filter(s);
			}
			
			@Override
			public void beforeTextChanged(CharSequence s, int start, int count,
					int after) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void afterTextChanged(Editable s) {
				// TODO Auto-generated method stub
				
			}
		});
		
		addListView();
	}

	public void addListView(){
		//List view
		listView = (ListView)findViewById(R.id.list);
		customerAdapter = new CustomerArrayAdapter(context, Rest.customerList);
		listView.setAdapter(customerAdapter);
			
		listView.setOnItemClickListener(new OnItemClickListener()
		{
		     @Override
		     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
		     {
		    	Customer customer = (Customer) listView.getAdapter().getItem(position);
		        Intent t = new Intent(context, CustomerMapActivity.class);
		        t.putExtra("POSITION_CLICK", customer.getmMaDoiTuong());
		        
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
	
	
}
