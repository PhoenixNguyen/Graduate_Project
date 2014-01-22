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
 * A list of all the demos we have available.
 */
public final class DetailsListData {

    /** This class should not be instantiated. */
    private DetailsListData() {}

    public static final DetailsList[] DEMOS = {
        new DetailsList("map_label",
                        "map_description",
                        MapActivity.class),

        new DetailsList("marker_label",
                        "marker_description",
                        MarkerActivity.class),

        new DetailsList("my_location_label",
                        "my_location_description",
                        MyLocationActivity.class),
                        
                        new DetailsList("login_label",
                                "login_description",
                                LoginActivity.class),
    };
    
    public static DetailsList[] CUSTOMER_LIST ;
}
