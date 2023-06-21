package android.support.p004v4.app;

import android.app.ActivityManager;
/* renamed from: android.support.v4.app.ActivityManagerCompatKitKat */
/* loaded from: classes.dex */
class ActivityManagerCompatKitKat {
    ActivityManagerCompatKitKat() {
    }

    public static boolean isLowRamDevice(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
