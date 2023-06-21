package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
/* loaded from: classes2.dex */
public class AutoRotateControls extends OnAppExitListener {
    private static final String TAG = AutoRotateControls.class.getSimpleName();
    private Boolean mAutoRotate;
    private boolean mAutoRotateSet;
    private int mOldAutoRotate = -1;
    private boolean mRestoreAutoRotateOnExit;

    public AutoRotateControls(CloneSettings cloneSettings) {
        this.mAutoRotate = cloneSettings.getBoolean("autoRotate", null);
        this.mRestoreAutoRotateOnExit = cloneSettings.getBoolean("restoreAutoRotateOnExit", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "AutoRotateControls; mAutoRotate: " + this.mAutoRotate);
        String str2 = TAG;
        Log.m13704i(str2, "AutoRotateControls; mRestoreAutoRotateOnExit: " + this.mRestoreAutoRotateOnExit);
    }

    public void install() {
        Log.m13704i(TAG, "install; ");
        if (this.mAutoRotate != null) {
            onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if (this.mAutoRotateSet) {
            return;
        }
        try {
            this.mOldAutoRotate = Settings.System.getInt(activity.getContentResolver(), "accelerometer_rotation", -1);
            Settings.System.putInt(activity.getContentResolver(), "accelerometer_rotation", this.mAutoRotate.booleanValue() ? 1 : 0);
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; mOldAutoRotate: " + this.mOldAutoRotate);
        this.mAutoRotateSet = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        String str = TAG;
        Log.m13704i(str, "onAppExit; mRestoreAutoRotateOnExit: " + this.mRestoreAutoRotateOnExit + ", mOldAutoRotate: " + this.mOldAutoRotate);
        if (!this.mRestoreAutoRotateOnExit || this.mOldAutoRotate == -1) {
            return;
        }
        try {
            Settings.System.putInt(context.getContentResolver(), "accelerometer_rotation", this.mOldAutoRotate);
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        this.mAutoRotateSet = false;
    }
}
