package com.applisto.appcloner.classes.util.activity;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.applisto.appcloner.classes.Utils;
import com.applisto.appcloner.classes.util.Log;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class StartExitAppEventReceiver extends BroadcastReceiver {
    private static final String TAG = StartExitAppEventReceiver.class.getSimpleName();
    private static final Set<Activity> sActivities = new HashSet();
    private static boolean sInited;

    /* JADX INFO: Access modifiers changed from: protected */
    public static void init() {
        try {
            if (sInited) {
                return;
            }
            Log.m13704i(TAG, "init; ");
            new ActivityLifecycleListener() { // from class: com.applisto.appcloner.classes.util.activity.StartExitAppEventReceiver.1
                @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
                protected void onActivityCreated(Activity activity) {
                    StartExitAppEventReceiver.sActivities.add(activity);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
                public void onActivityDestroyed(Activity activity) {
                    StartExitAppEventReceiver.sActivities.remove(activity);
                }
            }.onCreate();
            sInited = true;
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleEventAction(Context context, String str) {
        String str2 = TAG;
        Log.m13704i(str2, "handleAction; eventAction: " + str);
        if ("START_APP".equals(str)) {
            startApp(context);
        } else if ("EXIT_APP".equals(str)) {
            exitApp();
        }
    }

    private void startApp(Context context) {
        Log.m13704i(TAG, "startApp; ");
        try {
            Intent launchIntent = Utils.getLaunchIntent(context, context.getPackageName());
            if (launchIntent != null) {
                launchIntent.setFlags(335544320);
                context.startActivity(launchIntent);
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    private void exitApp() {
        Log.m13704i(TAG, "exitApp; ");
        for (Activity activity : sActivities) {
            try {
                activity.finish();
            } catch (Exception e) {
                Log.m13698w(TAG, e);
            }
        }
    }
}
