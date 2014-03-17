/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.hp.map;

/**
 * A list of all views
 */
public final class DetailsListData {

    /** This class should not be instantiated. */
    private DetailsListData() {}

    public static final DetailsList[] MAIN = {
        new DetailsList("Customer list",
                        "Click here to view customer list and create orders",
                        CustomerListActivity.class),

        new DetailsList("Planning",
                        "Scheduled for a month",
                        Schedule_CalendarActivity.class),

        new DetailsList("Orders manager",
                "your orders manager",
                TakeOrdersManagerActivity.class),
                
        new DetailsList("Sale order",
                "Sale order",
                SaleOrdersManagerActivity.class),        
              
        new DetailsList("Stock manager",
                "products manager",
                StockManagerActivity.class),        
                
    };
    
    public static DetailsList[] CUSTOMER_LIST ;
}
