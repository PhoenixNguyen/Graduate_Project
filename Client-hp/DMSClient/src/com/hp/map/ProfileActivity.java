package com.hp.map;

import com.hp.rest.Rest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;

public class ProfileActivity extends MainMenuActivity{
	private TextView my_info;
	
	public void onCreate(Bundle bundle){
		super.onCreate(bundle);
		setContentView(R.layout.staff_profile);
		
		my_info = (TextView)findViewById(R.id.my_info);
		my_info.setText("Xin chào " + Rest.mStaff.getId() + " - " + Rest.mStaff.getName());
		
		
	}
	
	@Override
	public void onBackPressed() {
		moveTaskToBack(true);
	}
}
