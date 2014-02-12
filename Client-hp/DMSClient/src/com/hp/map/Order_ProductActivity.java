package com.hp.map;

import java.util.ArrayList;
import java.util.List;

import com.hp.order.*;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

public class Order_ProductActivity extends Activity{
	private ListView listView;
	
	static final String[] PRODUCT = 
			new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
							"Apple", "Avocado"};
	
	private Spinner spinner;
	final Context context = this;
	
	private Button product;
	private Button amount;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.product);
		
		listView = (ListView)findViewById(R.id.list_view_product);
		listView.setAdapter(new ProductArrayAdapter(this, android.R.layout.simple_list_item_1, PRODUCT));
		
		listView.setOnItemClickListener(new OnItemClickListener()
		{
		     @Override
		     public void onItemClick(AdapterView<?> a, View v,int position, long id) 
		     {
		    	 String selectedValue = (String) listView.getAdapter().getItem(position);
		    	 
		          //Toast.makeText(getBaseContext(), "Click", Toast.LENGTH_LONG).show();
		    	// custom dialog
					final Dialog dialog = new Dialog(context);
					dialog.setContentView(R.layout.order_product_dialog);
					dialog.setTitle("Số lượng");
		 
					// set the custom dialog components - text, image and button
					TextView text = (TextView) dialog.findViewById(R.id.text);
					text.setText("Tên sản phẩm: "+selectedValue);

					TextView price = (TextView) dialog.findViewById(R.id.price);
					price.setText("Giá sản phẩm: "+position);
					
					Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
					// if button is clicked, close the custom dialog
					dialogButton.setOnClickListener(new OnClickListener() {
						@Override
						public void onClick(View v) {
							dialog.dismiss();
						}
					});
		 
					dialog.show();
		      }
		});

		//spiner
		addItemsOnSpinner();
		addListenerOnSpinnerItemSelection();
		
		/// Switch view
		product = (Button)findViewById(R.id.product_button);
		amount = (Button)findViewById(R.id.amount_button);
		product.setSelected(true);
		
		product.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				setContentView(R.layout.product);
			}
		});
		amount.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View arg0) {
				// TODO Auto-generated method stub
				setContentView(R.layout.amount);
				
				//startActivity(new Intent(context, Order_AmountActivity.class));
			}
		});
	}
	
	protected void onListItemClick(ListView l, View v, int position, long id){
		//get selected items
		String selectedValue = (String) listView.getAdapter().getItem(position);
		Toast.makeText(this, selectedValue, Toast.LENGTH_SHORT).show();
	}
	
	//............... start spiner ........................
	// add items into spinner dynamically
	  public void addItemsOnSpinner() {
	 
		spinner = (Spinner) findViewById(R.id.class_id);
		List<String> list = new ArrayList<String>();
		list.add("fruit");
		list.add("mobile os");
		ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(this,
			android.R.layout.simple_spinner_item, list);
		dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
		spinner.setAdapter(dataAdapter);
	  }
	 
	  
	  public void addListenerOnSpinnerItemSelection() {
			spinner = (Spinner) findViewById(R.id.class_id);
			spinner.setOnItemSelectedListener(new CustomOnItemSelectedListener(this, listView));
		  }
	  ////////////////////// finish spiner ///////////////////////////////////
}
