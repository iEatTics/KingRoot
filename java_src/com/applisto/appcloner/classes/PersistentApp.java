package com.applisto.appcloner.classes;

import android.content.Context;
import android.content.Intent;
import com.applisto.appcloner.classes.util.Log;
/* loaded from: classes2.dex */
public class PersistentApp {
    private static final String TAG = PersistentApp.class.getSimpleName();
    private boolean mPersistentApp;

    public PersistentApp(CloneSettings cloneSettings) {
        this.mPersistentApp = cloneSettings.getBoolean("persistentApp", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "PersistentApp; mPersistentApp: " + this.mPersistentApp);
    }

    public void install(Context context) {
        Log.m13704i(TAG, "install; ");
        if (this.mPersistentApp) {
            try {
                context.startService(new Intent(context, PersistentAppService.class));
            } catch (Throwable th) {
                Log.m13698w(TAG, th);
            }
        }
    }
}
