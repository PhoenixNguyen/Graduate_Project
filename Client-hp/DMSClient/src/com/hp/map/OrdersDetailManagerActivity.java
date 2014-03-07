package com.hp.map;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.TextureView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.TableRow.LayoutParams;

public class OrdersDetailManagerActivity extends Activity{
	
	private LinearLayout layout;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_detail_manager);
		
		addTable();
	}
	
	public void addTable(){
		layout = (TableLayout)findViewById(R.id.detail_list);
		
		for(int i = 0; i < 10; i++){
			TableRow.LayoutParams lp = new TableRow.LayoutParams(TableRow.LayoutParams.WRAP_CONTENT);
			
			TableLayout tb = new TableLayout(this);
			tb.setLayoutParams(lp);
			
			TableRow tbRow1 = new TableRow(this);
			tbRow1.setLayoutParams(lp);
			
			tbRow1.setWeightSum(10);
			
			TextView id = new TextView(this);
			id.setText("ID " + i);
			id.setTextSize(18);
			id.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 6f));
			
//			int bg= 0;
//			if(i%2 == 0){
//				bg = R.drawable.table_border;
//			}
//			else
//				bg = R.drawable.table_border2;
//			
//			TextView id = new TextView(this);
//			id.setText("ID " + i);
//			id.setTextSize(18);
//			id.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 6f));
//			id.setBackgroundResource(bg);
//			
//			TextView priceTotal = new TextView(this);
//			priceTotal.setText("Giá " + i);
//			priceTotal.setTextSize(18);
//			priceTotal.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 3.5f));
//			priceTotal.setBackgroundResource(bg);
//			
//			ImageButton iconDelete = new ImageButton(this);
//			iconDelete.setImageResource(R.drawable.delete_icon);
//			iconDelete.setBackgroundResource(bg);
//			
//			tbRow.addView(id);
//			tbRow.addView(priceTotal);
//			tbRow.addView(iconDelete);
//			
//			table.addView(tbRow, i);
		}
	}
}
