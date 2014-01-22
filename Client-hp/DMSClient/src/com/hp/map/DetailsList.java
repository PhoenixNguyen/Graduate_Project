package com.hp.map;

import android.app.Activity;

/**
 * A simple POJO that holds the details about the demo that are used by the List Adapter.
 */
public class DetailsList {
    /**
     * The resource id of the title of the demo.
     */
    public final String titleId;

    /**
     * The resources id of the description of the demo.
     */
    public final String descriptionId;

    /**
     * The demo activity's class.
     */
    public final Class<? extends Activity> activityClass;

    public DetailsList(
    		String titleId, String descriptionId, Class<? extends Activity> activityClass) {
        this.titleId = titleId;
        this.descriptionId = descriptionId;
        this.activityClass = activityClass;
    }

}
