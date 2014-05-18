package com.hp.map;

import com.hp.rest.Rest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class ProfileActivity extends MainMenuActivity{
	private TextView my_info;
	
	private EditText name;
	private EditText address;
	private EditText job;
	private EditText phone;
	private EditText date;
	private EditText permission;
	private EditText manager;
	
	private Button password;
	
	
	public void onCreate(Bundle bundle){
		super.onCreate(bundle);
		setContentView(R.layout.staff_profile);
		
		my_info = (TextView)findViewById(R.id.my_info);
		
		name = (EditText)findViewById(R.id.name);
		address = (EditText)findViewById(R.id.address);
		job = (EditText)findViewById(R.id.job);
		phone = (EditText)findViewById(R.id.phone);
		date = (EditText)findViewById(R.id.date);
		permission = (EditText)findViewById(R.id.permission);
		manager = (EditText)findViewById(R.id.manager);
		
		password = (Button)findViewById(R.id.password);
		
		
		my_info.setText("Xin chào " + Rest.mStaff.getId() + " - " + Rest.mStaff.getName());
		
		name.setText(Rest.mStaff.getName());
		address.setText(Rest.mStaff.getAdress());
		job.setText(Rest.mStaff.getJob());
		phone.setText(Rest.mStaff.getPhone());
		
		manager.setText(Rest.mStaff.getManager());
		if(Rest.mStaff.getPermission() == 1)
			permission.setText("Quản lý");
		if(Rest.mStaff.getPermission() == 2)
			permission.setText("Nhân viên bán hàng");
		if(Rest.mStaff.getPermission() == 3)
			permission.setText("Nhân viên lấy vị trí");
		
	}
	
	@Override
	public void onBackPressed() {
		moveTaskToBack(true);
	}
}
