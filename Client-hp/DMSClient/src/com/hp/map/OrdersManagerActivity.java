package com.hp.map;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.TableRow.LayoutParams;

public class OrdersManagerActivity extends Activity implements OnClickListener{
	
	private TableLayout table;
	private TextView id[] ;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_manager);
		
		addRow();
	}
	
	public void addRow(){
		table = (TableLayout)findViewById(R.id.display_table);
		
		id = new TextView[10];
		
		for(int i = 0; i < 10; i++){
			TableRow tbRow = new TableRow(this);
			TableRow.LayoutParams lp = new TableRow.LayoutParams(TableRow.LayoutParams.WRAP_CONTENT);
			
			tbRow.setLayoutParams(lp);
			//tbRow.setBackgroundColor(Color.parseColor("#b0b0b0"));
			//tbRow.setBackgroundResource(R.drawable.table_border);
			tbRow.setWeightSum(10);
			int bg= 0;
			if(i%2 == 0){
				bg = R.drawable.table_border;
			}
			else
				bg = R.drawable.table_border2;
			
			id[i] = new TextView(this);
			id[i].setText("ID " + i);
			id[i].setTextSize(18);
			id[i].setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 6f));
			id[i].setBackgroundResource(bg);
			
			id[i].setOnClickListener(this);
			
			TextView priceTotal = new TextView(this);
			priceTotal.setText("Giá " + i);
			priceTotal.setTextSize(18);
			priceTotal.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 3.5f));
			priceTotal.setBackgroundResource(bg);
			
			ImageButton iconDelete = new ImageButton(this);
			iconDelete.setImageResource(R.drawable.delete_icon);
			iconDelete.setBackgroundResource(bg);
			
			tbRow.addView(id[i]);
			tbRow.addView(priceTotal);
			tbRow.addView(iconDelete);
			
			table.addView(tbRow, i);
		}
	}
	
	public void onClick(View v){
		for(int i= 0; i< 10; i++)
			if(v == id[i]){
				System.out.println("click: " + i + " " + id[i].getText().toString());
				Intent intent = new Intent(getApplicationContext(), OrdersDetailManagerActivity.class);
				intent.putExtra("order_id", id[i].getText().toString());
				
				startActivity(intent);
			}
	}
}
