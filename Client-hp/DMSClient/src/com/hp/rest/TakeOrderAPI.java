package com.hp.rest;

import java.io.IOException;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.type.TypeFactory;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;
import android.widget.AdapterView.OnItemClickListener;

import com.hp.customer.CustomerArrayAdapter;
import com.hp.domain.Customer;
import com.hp.map.CustomerListActivity;
import com.hp.map.CustomerMapActivity;
import com.hp.map.InventoryManagerDetailActivity;
import com.hp.map.R;
import com.hp.map.TakeOrder_AmountActivity;
import com.hp.map.TakeOrder_ProductActivity;
import com.sun.jersey.api.client.ClientResponse;

public class TakeOrderAPI {
	public static List<Customer> customerList;

	// ///////////////// LOAD
	// /////////////////////////////////////////////////////////////////////////////
	public static class PutTakeOrderTask extends
			AsyncTask<Void, Void, String> {
		Context context;
		String method1;
		String method2;
		String staff;
		String content1;
		String content2;
		
		TakeOrder_AmountActivity activity;
		boolean update;

		public PutTakeOrderTask(Context context, String method1, String method2, 
				String content1, String content2, String staff,
				TakeOrder_AmountActivity activity, boolean update) {
			this.context = context;
			this.method1 = method1;
			this.method2 = method2;
			this.staff = staff;
			this.content1 = content1;
			this.content2 = content2;
			
			this.activity = activity;
			this.update = update;
		}

		
		
		ProgressDialog dialog;

		protected void onPreExecute() {
			dialog = ProgressDialog.show(context, "", "Đang xử lý ... ", true);
		}

		protected String doInBackground(Void... params) {
			// do something
			if (CheckingInternet.isOnline()) {
				System.out.println("Internet access!!____________________");
			} else {
				dialog.dismiss();
				System.out.println("NO Internet access!!____________________");

				return "nointernet";

			}

			// Getting
			ClientResponse response1 = Rest.mService.path("webresources")
					.path(method1).accept("application/json")
					.type("application/json").post(ClientResponse.class, content1);
			System.out.println("________________ " + response1.toString());

			ClientResponse response2 = Rest.mService.path("webresources")
					.path(method2).accept("application/json")
					.type("application/json").post(ClientResponse.class, content2);
			System.out.println("________________ " + response2.toString());
			
			if (response1.getStatus() != 200 || (response1.getEntity(String.class).compareTo("true") != 0)) {

				return "nodata1";
			} 
			else
				if (response2.getStatus() != 200 || (response2.getEntity(String.class).compareTo("0") == 0)) {

					return "nodata2";
				}
			else {
				
				return "success";
			}
			// =====================================================================================

		}

		protected void onPostExecute(String result) {
			if (result.equals("success")) {
				// do something
				
				Toast.makeText(context, "Đã lưu", Toast.LENGTH_SHORT).show();
				
				//RESET
				activity.resetValue();
				
				if(update){
		            TakeOrder_ProductActivity.add_take_order_detail = false;
		            TakeOrder_ProductActivity.timeLine = true;
		            InventoryManagerDetailActivity.add_inventory_detail = false;
				}
				
			} else if (result.equals("nointernet")) {
				Toast.makeText(context,
						"Không có kết nối mạng, mở 3G hoặc Wifi để tiếp tục!",
						Toast.LENGTH_SHORT).show();
			} else if (result.equals("nodata1")) {
				Toast.makeText(context, "Lỗi không mong muốn: Không thể lưu bản ghi này, hãy thử lại", Toast.LENGTH_SHORT)
						.show();
			} else 
				if (result.equals("nodata2"))
			{
				
				Toast.makeText(context, "Lỗi không mong muốn: Không thể lưu bản ghi chi tiết này, hãy thử lại", Toast.LENGTH_SHORT).show();

			}
			
			
			dialog.dismiss();
		}

		public boolean ConvertStringToObjectList(String input) {
			// pair to object
			ObjectMapper mapper = new ObjectMapper();

			try {
				customerList = mapper.readValue(
						input,
						TypeFactory.defaultInstance().constructCollectionType(
								List.class, Customer.class));
				// System.out.println("++++++++++++++ mdt "+customerList.get(0).getmMaDoiTuong());
			} catch (JsonGenerationException e) {
				e.printStackTrace();
				return false;
			} catch (JsonMappingException e) {
				e.printStackTrace();
				return false;
			} catch (IOException e) {
				e.printStackTrace();
				return false;
			}

			return true;
		}

	}
}
