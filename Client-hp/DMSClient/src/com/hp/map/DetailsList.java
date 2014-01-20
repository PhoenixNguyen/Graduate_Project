package com.hp.map;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;

/**
 * A simple POJO that holds the details about the demo that are used by the List Adapter.
 */
public class DetailsList {
    /**
     * The resource id of the title of the demo.
     */
    public final int titleId;

    /**
     * The resources id of the description of the demo.
     */
    public final int descriptionId;

    /**
     * The demo activity's class.
     */
    public final Class<? extends Activity> activityClass;

    public DetailsList(
            int titleId, int descriptionId, Class<? extends Activity> activityClass) {
        this.titleId = titleId;
        this.descriptionId = descriptionId;
        this.activityClass = activityClass;
    }

}
