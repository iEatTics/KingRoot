package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Intent;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener;
/* loaded from: classes2.dex */
public class PasswordProtectApp extends ActivityLifecycleListener {
    private static final String TAG = PasswordProtectApp.class.getSimpleName();

    public void install() {
        Log.m13704i(TAG, "install; ");
        onCreate();
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityCreated(Activity activity) {
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; activity: " + activity);
        if (activity instanceof PasswordActivity) {
            Log.m13704i(TAG, "onActivityCreated; ignoring");
        } else if (!PasswordActivity.sUnlocked) {
            Intent intent = new Intent(activity, PasswordActivity.class);
            intent.addFlags(65536);
            activity.startActivity(intent);
            Log.m13704i(TAG, "onActivityCreated; started PasswordActivity");
        } else {
            Log.m13704i(TAG, "onActivityCreated; already unlocked");
        }
    }
}
