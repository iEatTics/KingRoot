package com.applisto.appcloner.classes;

import android.content.Context;
import android.content.Intent;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.StartExitAppEventReceiver;
/* loaded from: classes2.dex */
public class PowerEventReceiver extends StartExitAppEventReceiver {
    private static final String TAG = PowerEventReceiver.class.getSimpleName();

    public static void install() {
        Log.m13704i(TAG, "install; ");
        init();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str = TAG;
        Log.m13704i(str, "onReceive; intent: " + intent);
        try {
            CloneSettings cloneSettings = CloneSettings.getInstance(context);
            boolean booleanValue = cloneSettings.getBoolean("powerEventsDockUndockEvents", false).booleanValue();
            String str2 = TAG;
            Log.m13704i(str2, "onReceive; powerEventsDockUndockEvents: " + booleanValue);
            String action = intent.getAction();
            if ("android.intent.action.ACTION_POWER_CONNECTED".equals(action) && !booleanValue) {
                Log.m13704i(TAG, "onReceive; ACTION_POWER_CONNECTED");
                handleEventAction(context, cloneSettings.getString("powerConnectedEventAction", "NONE"));
            } else if ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(action) && !booleanValue) {
                Log.m13704i(TAG, "onReceive; ACTION_POWER_DISCONNECTED");
                handleEventAction(context, cloneSettings.getString("powerDisconnectedEventAction", "NONE"));
            } else if ("android.intent.action.DOCK_EVENT".equals(action) && booleanValue) {
                Log.m13704i(TAG, "onReceive; ACTION_DOCK_EVENT");
                boolean z = intent.getIntExtra("android.intent.extra.DOCK_STATE", -1) != 0;
                String str3 = TAG;
                Log.m13704i(str3, "onReceive; isDocked: " + z);
                if (z) {
                    handleEventAction(context, cloneSettings.getString("powerConnectedEventAction", "NONE"));
                } else {
                    handleEventAction(context, cloneSettings.getString("powerDisconnectedEventAction", "NONE"));
                }
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }
}
