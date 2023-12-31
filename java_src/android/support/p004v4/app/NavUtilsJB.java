package android.support.p004v4.app;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
/* renamed from: android.support.v4.app.NavUtilsJB */
/* loaded from: classes.dex */
class NavUtilsJB {
    NavUtilsJB() {
    }

    public static Intent getParentActivityIntent(Activity activity) {
        return activity.getParentActivityIntent();
    }

    public static boolean shouldUpRecreateTask(Activity activity, Intent intent) {
        return activity.shouldUpRecreateTask(intent);
    }

    public static void navigateUpTo(Activity activity, Intent intent) {
        activity.navigateUpTo(intent);
    }

    public static String getParentActivityName(ActivityInfo activityInfo) {
        return activityInfo.parentActivityName;
    }
}
