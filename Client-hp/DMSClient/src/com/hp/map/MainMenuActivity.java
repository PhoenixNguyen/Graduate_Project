package com.hp.map;


import com.hp.menu.DetailListData;
import com.hp.menu.DialogArrayAdapter;

import android.os.Bundle;
import android.app.Activity;
import android.app.Dialog;
import android.app.ActionBar.LayoutParams;
import android.content.Context;
import android.view.Display;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.Toast;

public class MainMenuActivity extends Activity {

	public Context context = this; 
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.menu_main);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	
	public boolean onKeyUp(int keyCode, KeyEvent event) {
	    if (keyCode == KeyEvent.KEYCODE_MENU) {
	        // ........
	    	//Toast.makeText(this, "Hello", Toast.LENGTH_SHORT).show();
	    	menuDialog();
	    	
	        return true;
	    }
	    return super.onKeyUp(keyCode, event);
	}
	
	public void menuDialog(){
		final Dialog dialog = new Dialog(this);
		LayoutInflater li = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
		View v = li.inflate(R.layout.menu_dialog, null, false);
		dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
		dialog.setContentView(v);
		
		dialog.setTitle("Danh mục chính");
		
		Display display = getWindowManager().getDefaultDisplay();
		
		dialog.getWindow().setLayout(2*display.getWidth()/3, LayoutParams.FILL_PARENT);
		dialog.getWindow().getAttributes().gravity = Gravity.LEFT|Gravity.CENTER_VERTICAL;
		
		ListView lv = (ListView)dialog.findViewById(R.id.menu_list_view);
		
		lv.setAdapter(new DialogArrayAdapter(context, android.R.layout.simple_list_item_1, DetailListData.MENU_LIST));
		
		dialog.show();
		
//		ImageView iv = (ImageView)dialog.findViewById(R.id.menu_list_view);
//		iv.setImageResource(1);
	}
}

