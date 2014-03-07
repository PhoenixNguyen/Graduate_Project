package com.hp.map;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.Customer;
import com.hp.domain.TakeOrder;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.TableRow.LayoutParams;

public class OrdersManagerActivity extends Activity implements OnClickListener{
	
	private TableLayout table;
	private TextView id[] ;
	private List<TakeOrder> takeOrderList = null;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_manager);
		
		addRow();
	}
	
	public void addRow(){
		//GET From server
		
		ClientResponse response = Rest.mService.path("webresources").path("getTakeOrderList")
				.accept("application/json")
				.type("application/json").post(ClientResponse.class, Rest.mStaffID);
        System.out.println("________________ "+ response.toString());
        
        if(response.getStatus() != 200){
        	
        	return;
        }
        
        String re = response.getEntity(String.class);
        System.out.println("________________ "+ re);
        
        // pair to object
        ObjectMapper mapper = new ObjectMapper();
        
		try {
//			File jsonFile = new File(jsonFilePath);
			takeOrderList = mapper.readValue(re, TypeFactory.defaultInstance().constructCollectionType(List.class,
					TakeOrder.class));
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
		
		table = (TableLayout)findViewById(R.id.display_table);
		
		id = new TextView[takeOrderList.size()];
		
		for(int i = 0; i < takeOrderList.size(); i++){
			TableRow tbRow = new TableRow(this);
			TableRow.LayoutParams lp = new TableRow.LayoutParams(TableRow.LayoutParams.WRAP_CONTENT);
			lp.setMargins(0, 60, 0, 0);
			
			tbRow.setLayoutParams(lp);
			
			tbRow.setWeightSum(10);
			int bg= 0;
			if(i%2 == 0){
				bg = R.drawable.table_border;
			}
			else
				bg = R.drawable.table_border2;
			
			id[i] = new TextView(this);
			id[i].setText(takeOrderList.get(i).getmID());
			id[i].setTextSize(18);
			id[i].setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 6f));
			id[i].setBackgroundResource(bg);
			
			id[i].setOnClickListener(this);
			
			TextView priceTotal = new TextView(this);
			priceTotal.setText(takeOrderList.get(i).getmBeforePrice()+"");
			priceTotal.setTextSize(18);
			priceTotal.setLayoutParams(new TableRow.LayoutParams(0, LayoutParams.WRAP_CONTENT, 3.5f));
			priceTotal.setBackgroundResource(bg);
			priceTotal.setGravity(Gravity.RIGHT);
			
			ImageView iconDelete = new ImageView(this);
			iconDelete.setImageResource(R.drawable.delete_icon);
			iconDelete.setBackgroundResource(bg);
			
			tbRow.addView(id[i]);
			tbRow.addView(priceTotal);
			tbRow.addView(iconDelete);
			
			table.addView(tbRow, i);
		}
	}
	
	public void onClick(View v){
		for(int i= 0; i< takeOrderList.size(); i++)
			if(v == id[i]){
				System.out.println("click: " + i + " " + id[i].getText().toString());
				Intent intent = new Intent(getApplicationContext(), OrdersDetailManagerActivity.class);
				intent.putExtra("ORDER_ID", id[i].getText().toString());
				
				startActivity(intent);
			}
	}
}
