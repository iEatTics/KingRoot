package com.applisto.appcloner.classes;

import android.app.Activity;
import android.view.Window;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener;
import oicq.wlogin_sdk.request.WtloginHelper;
/* loaded from: classes2.dex */
public class ShowOnLockScreen extends ActivityLifecycleListener {
    private static final String TAG = ShowOnLockScreen.class.getSimpleName();
    private boolean mShowOnLockScreen;

    public ShowOnLockScreen(CloneSettings cloneSettings) {
        this.mShowOnLockScreen = cloneSettings.getBoolean("showOnLockScreen", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "ShowOnLockScreen; mShowOnLockScreen: " + this.mShowOnLockScreen);
    }

    public void install() {
        Log.m13704i(TAG, "install; ");
        if (this.mShowOnLockScreen) {
            onCreate();
        }
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityCreated(Activity activity) {
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; activity: " + activity);
        Window window = activity.getWindow();
        window.addFlags(WtloginHelper.SigType.WLOGIN_LHSIG);
        window.addFlags(524288);
        window.addFlags(2097152);
    }
}
