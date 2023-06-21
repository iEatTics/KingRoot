package com.applisto.appcloner.classes;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.applisto.appcloner.classes.util.Log;
/* loaded from: classes2.dex */
public class MediaMountEjectReceiver extends BroadcastReceiver {
    private static final String TAG = MediaMountEjectReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str = TAG;
        Log.m13704i(str, "onReceive; intent: " + intent);
        try {
            String action = intent.getAction();
            if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
                Intent launchIntent = Utils.getLaunchIntent(context, context.getPackageName());
                launchIntent.addFlags(268435456);
                context.startActivity(launchIntent);
            } else if ("android.intent.action.MEDIA_EJECT".equals(action)) {
                DefaultProvider.invokeSecondaryInstance(context, "util.Utils", "killAppProcesses", context);
            }
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }
}
