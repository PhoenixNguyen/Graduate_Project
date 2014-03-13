package com.hp.map;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;
import com.hp.order_manager.OrdersManagerArrayAdapter;
import com.hp.order_manager.OrdersManagerDetailArrayAdapter;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TableRow.LayoutParams;

public class OrdersDetailManagerActivity extends Activity{
	
	private LinearLayout layout;
	private String order_id;
	
	private List<TakeOrderDetail> takeOrderDetailList = null;
	private Context context = this;
	private ListView ordersListView;
	private OrdersManagerDetailArrayAdapter adapter;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_detail_manager);
		
		Intent intent = getIntent();
		order_id = intent.getStringExtra("ORDER_ID");
		
		TextView title = (TextView)findViewById(R.id.title);
		title.setText("Order: "+order_id);
		
		getOrderList();
		addListView();
	}
	
	
	public void addListView() {

		// Check the internet
		if (isOnline()) {
			System.out.println("Internet access!!____________________");
		} else {
			System.out.println("NO Internet access!!____________________");
			Toast.makeText(this, "No internet access, please try again later!",
					Toast.LENGTH_SHORT).show();
			return;
		}

		

		if (takeOrderDetailList.size() == 0) {
			return;
		}
		// List<Product> productsList = new ArrayList<Product>();
		// Product product = new Product(1, "Welcome", "Welcome",
		// "Choose providers list");
		// productsList.add(product);

		ordersListView = (ListView) findViewById(R.id.list_view_product);
		adapter = new OrdersManagerDetailArrayAdapter(this,
				android.R.layout.simple_list_item_1, takeOrderDetailList);
		ordersListView.setAdapter(adapter);

		ordersListView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> a, View v, int position,
					long id) {
				System.out.println("Click!");
				TakeOrderDetail selectedValue = (TakeOrderDetail) ordersListView.getAdapter().getItem(position);
		    	 addCustomerDialog(selectedValue);
				
			}
		});
	}

	public void addCustomerDialog(final TakeOrderDetail selectedValue){
		final Dialog dialog = new Dialog(context);
		dialog.setContentView(R.layout.order_product_dialog);
		dialog.setTitle("Thay đổi số lượng");

		// set the custom dialog components - text, image and button
		TextView text = (TextView) dialog.findViewById(R.id.text);
		text.setText("Tên sản phẩm: "+selectedValue.getmProductName());

		TextView price = (TextView) dialog.findViewById(R.id.price);
		price.setText("Giá sản phẩm: "+selectedValue.getmBeforeOrderPrice());
		
		final EditText count = (EditText)dialog.findViewById(R.id.count);
		
		Button dialogButton = (Button) dialog.findViewById(R.id.dialogButtonYES);
		// if button is clicked, close the custom dialog
		dialogButton.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				
//				line++;
//				System.out.println("__ "+ line);
//				String count2 = count.getText().toString();
//				int number = 0;
//				if(count2.compareTo("") != 0)
//					number = Integer.parseInt(count2);
//				else
//					return;
//				
//				//take order detail
//				boolean status = false;
//				for(int i = 0; i < ordersDetailList.size(); i++){
//					if(ordersDetailList.get(i).getmProductID().compareTo(selectedValue.getmProductID()) == 0){
//						if(number == 0){
//							ordersDetailList.remove(i);
//						}
//						else{
//							ordersDetailList.get(i).setmNumber(number);
//							
//						}
//						status = true;
//						line--;
//					}
//				}
//				if(!status && number != 0){
//					System.out.println("2__ "+ line);
//					TakeOrderDetail orderDetail = 
//							new TakeOrderDetail("", line, selectedValue.getmProductID(), selectedValue.getmBarcode(), selectedValue.getmProductName(), 
//									selectedValue.getmExportPrices(), selectedValue.getmExportPrices(), 0, 0, 
//									selectedValue.getmExportPrices(), "", number, "", 0);
//					
//					ordersDetailList.add(orderDetail);
//				}
//				
//				total_value.setText(ordersDetailList.size()+"");
				//finish
				dialog.dismiss();
			}
		});

		
		dialog.show();
		
	}
	
	public void getOrderList(){
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
        
		try {
//							File jsonFile = new File(jsonFilePath);
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
	}
	
	public boolean isOnline() {
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
		return cm.getActiveNetworkInfo() != null
				&& cm.getActiveNetworkInfo().isConnectedOrConnecting();
	}
	
	
}
