package com.hp.map;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.os.Bundle;
import android.view.TextureView;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.TableRow.LayoutParams;

public class OrdersDetailManagerActivity extends Activity{
	
	private LinearLayout layout;
	private String order_id;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_detail_manager);
		
		Intent intent = getIntent();
		order_id = intent.getStringExtra("ORDER_ID");
		
		TextView title = (TextView)findViewById(R.id.title);
		title.setText("Order: "+order_id);
		
		addTable();
	}
	
	public void addTable(){
		
		//GET From server
		
		ClientResponse response = Rest.mService.path("webresources").path("getTakeOrderDetailList")
				.accept("application/json")
				.type("application/json").post(ClientResponse.class, order_id);
        System.out.println("________________ "+ response.toString());
        
        if(response.getStatus() != 200){
        	
        	return;
        }
        
        String re = response.getEntity(String.class);
        System.out.println("________________ "+ re);
        
        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        List<TakeOrderDetail> takeOrderDetailList = null;
		try {
//					File jsonFile = new File(jsonFilePath);
			takeOrderDetailList = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
					TakeOrderDetail.class));
			//System.out.println("++++++++++++++ mdt "+customerList.get(0).getmMaDoiTuong());
		} catch (JsonGenerationException e) {
			e.printStackTrace();
			return ;
		} catch (JsonMappingException e) {
			e.printStackTrace();
			return ;
		} catch (IOException e) {
			e.printStackTrace();
			return ;
		}
		
		//Display
		layout = (LinearLayout)findViewById(R.id.detail_list);
		
		for(int i = 0; i < takeOrderDetailList.size(); i++){
			
//			int bg= 0;
//			if(i%2 == 0){
//				bg = R.drawable.table_border;
//			}
//			else
//				bg = R.drawable.table_border2;
			
			TableRow.LayoutParams lp = new TableRow.LayoutParams(TableRow.LayoutParams.WRAP_CONTENT);
			lp.setMargins(0, 40, 0, 0);
			
			TableLayout tb = new TableLayout(this);
			tb.setLayoutParams(lp);
			tb.setOrientation(TableLayout.VERTICAL);
			tb.setBackgroundResource(R.drawable.table_order_detail);
			
			//NEW ROW
			TableRow tbRow1 = new TableRow(this);
			tbRow1.setLayoutParams(lp);
			
			tbRow1.setWeightSum(10);
			
			TextView id = new TextView(this);
			id.setText(takeOrderDetailList.get(i).getmProductName());
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
			count.setText("Số lượng: "+takeOrderDetailList.get(i).getmNumber()+"");
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
			price.setText("Tổng: "+takeOrderDetailList.get(i).getmPriceTotal()+"");
			price.setTextSize(18);
			price.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 9f));
			
			
			
			//ADD
			tbRow3.addView(price);
			
			tb.addView(tbRow1, 0);
			tb.addView(tbRow2, 1);
			tb.addView(tbRow3, 2);
			layout.addView(tb);
			
		}
	}
}
