package com.hp.map;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class Order_AmountActivity extends Activity {
	
	private Context context = this;
	
	private EditText total_value;
	private EditText document_value;
	private EditText discount_value;
	private EditText tax_value;
	private EditText sum_value;
	private EditText dc2_value;
	private EditText note_value;
	
	public void onCreate(Bundle savedInstanceState){
		super.onCreate(savedInstanceState);
		setContentView(R.layout.amount);
		
		total_value = (EditText)findViewById(R.id.total_value);
		document_value = (EditText)findViewById(R.id.document_value);
		discount_value = (EditText)findViewById(R.id.discount_value);
		tax_value = (EditText)findViewById(R.id.tax_value);
		sum_value = (EditText)findViewById(R.id.sum_value);
		dc2_value = (EditText)findViewById(R.id.dc2_value);
		note_value = (EditText)findViewById(R.id.note_value);
		
		
	}
}
