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
        new DetailsList("Danh sách khách hàng",
                        "Nhấp vào để hiển thị thông tin chi tiết của khách hàng này",
                        CustomerListActivity.class),

        new DetailsList("Kế hoạch",
                        "Tạo lịch trình cho bạn",
                        Schedule_CalendarActivity.class),

        new DetailsList("Hóa đơn đặt hàng",
                "Quản lý hóa đơn đặt hàng",
                TakeOrdersManagerActivity.class),
                
        new DetailsList("Hóa đơn bán hàng",
                "Quản lý hóa đơn bán hàng",
                SaleOrdersManagerActivity.class),        
        new DetailsList("Quản lý hàng tồn kho",
                "Quản lý hàng tồn kho",
                StockManagerActivity.class),     
                
    };
    
//    public static DetailsList[] CUSTOMER_LIST ;
}
