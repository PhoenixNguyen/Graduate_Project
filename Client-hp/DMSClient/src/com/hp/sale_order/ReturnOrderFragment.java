package com.hp.sale_order;

import com.hp.map.R;
import com.hp.map.SaleOrderDetail_Main_Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;


public class ReturnOrderFragment extends Fragment {

	//public static final String ARG_SECTION_NUMBER = "section_number";
	
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.sale_order, container, false);

        Bundle args = getArguments();
        ((TextView) rootView.findViewById(android.R.id.text1)).setText(
                "Sale order");
        return rootView;
    }
}
