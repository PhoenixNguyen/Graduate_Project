package com.hp.map;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import com.hp.domain.Customer;
import com.hp.domain.Product;
import com.hp.domain.TakeOrder;
import com.hp.domain.TakeOrderDetail;
import com.hp.order_manager.OrdersManagerArrayAdapter;
import com.hp.rest.Rest;
import com.sun.jersey.api.client.ClientResponse;

import android.app.Activity;
import android.app.Dialog;
import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.os.Bundle;
import android.provider.SyncStateContract.Constants;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.TextureView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TableRow.LayoutParams;

public class OrdersManagerActivity extends Activity implements OnClickListener {

	private TableLayout table;
	private TextView id[];
	private List<TakeOrder> takeOrderList = null;
	private ListView ordersListView;

	private EditText id_search;
	private EditText name_search;

	private OrdersManagerArrayAdapter adapter;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.orders_manager);

		addRow();

		addListView();

		id_search = (EditText) findViewById(R.id.id_search);

		id_search.addTextChangedListener(new TextWatcher() {

			@Override
			public void onTextChanged(CharSequence cs, int arg1, int arg2,
					int arg3) {
				// When user changed the Text
				OrdersManagerActivity.this.adapter.getFilter().filter(cs);
			}

			@Override
			public void beforeTextChanged(CharSequence arg0, int arg1,
					int arg2, int arg3) {
				// TODO Auto-generated method stub

			}

			@Override
			public void afterTextChanged(Editable arg0) {
				// TODO Auto-generated method stub
			}

		});
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

		// GET From server

		ClientResponse response = Rest.mService.path("webresources")
				.path("getTakeOrderList").accept("application/json")
				.type("application/json")
				.post(ClientResponse.class, Rest.mStaffID);
		System.out.println("________________ " + response.toString());

		if (response.getStatus() != 200) {

			return;
		}

		String re = response.getEntity(String.class);
		System.out.println("________________ " + re);

		// pair to object
		ObjectMapper mapper = new ObjectMapper();

		try {
			// File jsonFile = new File(jsonFilePath);
			takeOrderList = mapper.readValue(re, TypeFactory.defaultInstance()
					.constructCollectionType(List.class, TakeOrder.class));
			// System.out.println("++++++++++++++ mdt "+customerList.get(0).getmMaDoiTuong());
		} catch (JsonGenerationException e) {
			e.printStackTrace();
			return;
		} catch (JsonMappingException e) {
			e.printStackTrace();
			return;
		} catch (IOException e) {
			e.printStackTrace();
			return;
		}

		if (takeOrderList.size() == 0) {
			return;
		}
		// List<Product> productsList = new ArrayList<Product>();
		// Product product = new Product(1, "Welcome", "Welcome",
		// "Choose providers list");
		// productsList.add(product);

		ordersListView = (ListView) findViewById(R.id.list_view_product);
		adapter = new OrdersManagerArrayAdapter(this,
				android.R.layout.simple_list_item_1, takeOrderList);
		ordersListView.setAdapter(adapter);

		ordersListView.setOnItemClickListener(new OnItemClickListener() {
			@Override
			public void onItemClick(AdapterView<?> a, View v, int position,
					long id) {
				System.out.println("Click!");
				// final Product selectedValue = (Product)
				// listView.getAdapter().getItem(position);
				//
				// //Toast.makeText(getBaseContext(), "Click",
				// Toast.LENGTH_LONG).show();
				// // custom dialog
				// final Dialog dialog = new Dialog(context);
				// dialog.setContentView(R.layout.order_product_dialog);
				// dialog.setTitle("Số lượng");
				//
				// // set the custom dialog components - text, image and button
				// TextView text = (TextView) dialog.findViewById(R.id.text);
				// text.setText("Tên sản phẩm: "+selectedValue.getmProductName());
				//
				// TextView price = (TextView) dialog.findViewById(R.id.price);
				// price.setText("Giá sản phẩm: "+selectedValue.getmExportPrices());
				//
				// final EditText count =
				// (EditText)dialog.findViewById(R.id.count);
				//
				// Button dialogButton = (Button)
				// dialog.findViewById(R.id.dialogButtonYES);
				// // if button is clicked, close the custom dialog
				// dialogButton.setOnClickListener(new OnClickListener() {
				// @Override
				// public void onClick(View v) {
				//
				// line++;
				// System.out.println("__ "+ line);
				// String count2 = count.getText().toString();
				// int number = 0;
				// if(count2.compareTo("") != 0)
				// number = Integer.parseInt(count2);
				// else
				// return;
				//
				// //take order detail
				// boolean status = false;
				// for(int i = 0; i < ordersDetailList.size(); i++){
				// if(ordersDetailList.get(i).getmProductID().compareTo(selectedValue.getmProductID())
				// == 0){
				// if(number == 0){
				// ordersDetailList.remove(i);
				// }
				// else{
				// ordersDetailList.get(i).setmNumber(number);
				//
				// }
				// status = true;
				// line--;
				// }
				// }
				// if(!status && number != 0){
				// System.out.println("2__ "+ line);
				// TakeOrderDetail orderDetail =
				// new TakeOrderDetail("", line, selectedValue.getmProductID(),
				// selectedValue.getmBarcode(), selectedValue.getmProductName(),
				// selectedValue.getmExportPrices(),
				// selectedValue.getmExportPrices(), 0, 0,
				// selectedValue.getmExportPrices(), "", number, "", 0);
				//
				// ordersDetailList.add(orderDetail);
				// }
				//
				// total_value.setText(ordersDetailList.size()+"");
				// //finish
				// dialog.dismiss();
				// }
				// });
				//
				//
				// dialog.show();
			}
		});
	}

	public void addRow() {
		// GET From server

		// ClientResponse response =
		// Rest.mService.path("webresources").path("getTakeOrderList")
		// .accept("application/json")
		// .type("application/json").post(ClientResponse.class, Rest.mStaffID);
		// System.out.println("________________ "+ response.toString());
		//
		// if(response.getStatus() != 200){
		//
		// return;
		// }
		//
		// String re = response.getEntity(String.class);
		// System.out.println("________________ "+ re);
		//
		// // pair to object
		// ObjectMapper mapper = new ObjectMapper();
		//
		// try {
		// // File jsonFile = new File(jsonFilePath);
		// takeOrderList = mapper.readValue(re,
		// TypeFactory.defaultInstance().constructCollectionType(List.class,
		// TakeOrder.class));
		// //System.out.println("++++++++++++++ mdt "+customerList.get(0).getmMaDoiTuong());
		// } catch (JsonGenerationException e) {
		// e.printStackTrace();
		// return ;
		// } catch (JsonMappingException e) {
		// e.printStackTrace();
		// return ;
		// } catch (IOException e) {
		// e.printStackTrace();
		// return ;
		// }
		//
		// //Display
		//
		// table = (TableLayout)findViewById(R.id.display_table);
		//
		// id = new TextView[takeOrderList.size()];
		//
		// for(int i = 0; i < takeOrderList.size(); i++){
		// TableRow tbRow = new TableRow(this);
		// TableRow.LayoutParams lp = new
		// TableRow.LayoutParams(TableRow.LayoutParams.WRAP_CONTENT);
		// lp.setMargins(0, 60, 0, 0);
		//
		// tbRow.setLayoutParams(lp);
		//
		// tbRow.setWeightSum(10);
		// int bg= 0;
		// if(i%2 == 0){
		// bg = R.drawable.table_border;
		// }
		// else
		// bg = R.drawable.table_border2;
		//
		// id[i] = new TextView(this);
		// id[i].setText(takeOrderList.get(i).getmID());
		// id[i].setTextSize(18);
		// id[i].setLayoutParams(new TableRow.LayoutParams(0,
		// LayoutParams.WRAP_CONTENT, 6f));
		// id[i].setBackgroundResource(bg);
		//
		// id[i].setOnClickListener(this);
		//
		// TextView priceTotal = new TextView(this);
		// priceTotal.setText(takeOrderList.get(i).getmBeforePrice()+"");
		// priceTotal.setTextSize(18);
		// priceTotal.setLayoutParams(new TableRow.LayoutParams(0,
		// LayoutParams.WRAP_CONTENT, 3.5f));
		// priceTotal.setBackgroundResource(bg);
		// priceTotal.setGravity(Gravity.RIGHT);
		//
		// ImageView iconDelete = new ImageView(this);
		// iconDelete.setImageResource(R.drawable.delete_icon);
		// iconDelete.setBackgroundResource(bg);
		//
		// tbRow.addView(id[i]);
		// tbRow.addView(priceTotal);
		// tbRow.addView(iconDelete);
		//
		// table.addView(tbRow, i);
		// }
	}

	public void onClick(View v) {
		for (int i = 0; i < takeOrderList.size(); i++)
			if (v == id[i]) {
				System.out.println("click: " + i + " "
						+ id[i].getText().toString());
				Intent intent = new Intent(getApplicationContext(),
						OrdersDetailManagerActivity.class);
				intent.putExtra("ORDER_ID", id[i].getText().toString());

				startActivity(intent);
			}
	}

	public boolean isOnline() {
		ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
		return cm.getActiveNetworkInfo() != null
				&& cm.getActiveNetworkInfo().isConnectedOrConnecting();
	}
}
