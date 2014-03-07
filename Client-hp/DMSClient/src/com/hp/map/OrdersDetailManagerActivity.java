package com.hp.map;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable.Orientation;
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
		layout = (LinearLayout)findViewById(R.id.detail_list);
		
		for(int i = 0; i < 10; i++){
			
			int bg= 0;
			if(i%2 == 0){
				bg = R.drawable.table_border;
			}
			else
				bg = R.drawable.table_border2;
			
			TableRow.LayoutParams lp = new TableRow.LayoutParams(TableRow.LayoutParams.WRAP_CONTENT);
			
			TableLayout tb = new TableLayout(this);
			tb.setLayoutParams(lp);
			tb.setOrientation(TableLayout.VERTICAL);
			tb.setBackgroundResource(bg);
			
			//NEW ROW
			TableRow tbRow1 = new TableRow(this);
			tbRow1.setLayoutParams(lp);
			
			tbRow1.setWeightSum(10);
			
			TextView id = new TextView(this);
			id.setText("Sản phẩm " + i);
			id.setTextSize(18);
			id.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 9f));
			
			ImageButton iconDelete = new ImageButton(this);
			iconDelete.setImageResource(R.drawable.delete_icon);
			
			//ADD
			tbRow1.addView(id);
			tbRow1.addView(iconDelete);
			
			//NEW ROW
			TableRow tbRow2 = new TableRow(this);
			tbRow2.setLayoutParams(lp);
			tbRow2.setWeightSum(10);
			
			TextView count = new TextView(this);
			count.setText("Số lượng ");
			count.setTextSize(18);
			count.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 9f));
			
			ImageButton iconEdit = new ImageButton(this);
			iconEdit.setImageResource(R.drawable.edit_icon);
			
			//ADD
			tbRow2.addView(count);
			tbRow2.addView(iconEdit);
			
			//NEW ROW
			TableRow tbRow3 = new TableRow(this);
			tbRow3.setLayoutParams(lp);
			tbRow3.setWeightSum(10);
			
			TextView price = new TextView(this);
			price.setText("Thành tiền " + i);
			price.setTextSize(18);
			price.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 9f));
			
			
			
			//ADD
			tbRow3.addView(price);
			
			tb.addView(tbRow1, 0);
			tb.addView(tbRow2, 1);
			tb.addView(tbRow3, 2);
			layout.addView(tb);
			
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
