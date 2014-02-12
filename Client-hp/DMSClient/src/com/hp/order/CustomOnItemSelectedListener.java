package com.hp.order;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListView;
import android.widget.Toast;

public class CustomOnItemSelectedListener implements OnItemSelectedListener{
	
	ListView listView;
	Context context;
	public CustomOnItemSelectedListener(Context context, ListView listView){
		this.listView = listView;
		this.context = context;
	}
	public void onItemSelected(AdapterView<?> parent, View view, int pos,long id) {
		Toast.makeText(parent.getContext(), 
			"OnItemSelectedListener : " + parent.getItemAtPosition(pos).toString(),
			Toast.LENGTH_SHORT).show();
		
		String[] PRODUCT;
		if(parent.getItemAtPosition(pos).toString().compareTo("fruit") == 0)
			PRODUCT = 
					new String[] {"Apple", "Avocado", "Banana", "Blueberry", "Coconut",
									"Apple", "Avocado",
									"Apple", "Avocado", "Banana", "Blueberry", "Coconut"};
		else
			PRODUCT = 
			new String[] {"Android", "iOS", "WindowsMobile", "Blackberry",
				"Android", "iOS", "WindowsMobile"};
		listView.setAdapter(new ProductArrayAdapter(context, android.R.layout.simple_list_item_1, PRODUCT));
	  }
	 
	  @Override
	  public void onNothingSelected(AdapterView<?> arg0) {
		// TODO Auto-generated method stub
	  }
}
