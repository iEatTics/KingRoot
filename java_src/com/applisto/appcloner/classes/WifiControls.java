package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Context;
import android.net.wifi.WifiManager;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
/* loaded from: classes2.dex */
public class WifiControls extends OnAppExitListener {
    private static final String TAG = WifiControls.class.getSimpleName();
    private Boolean mOldWifiState;
    private boolean mRestoreWifiStateOnExit;
    private Boolean mWifiState;
    private boolean mWifiStateSet;

    public WifiControls(CloneSettings cloneSettings) {
        this.mWifiState = cloneSettings.getBoolean("wifiState", null);
        this.mRestoreWifiStateOnExit = cloneSettings.getBoolean("restoreWifiStateOnExit", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "WifiControls; mWifiState: " + this.mWifiState);
        String str2 = TAG;
        Log.m13704i(str2, "WifiControls; mRestoreWifiStateOnExit: " + this.mRestoreWifiStateOnExit);
    }

    public void install(Context context) {
        Log.m13704i(TAG, "install; ");
        if (this.mWifiState != null) {
            onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if (this.mWifiStateSet) {
            return;
        }
        try {
            WifiManager wifiManager = (WifiManager) activity.getApplicationContext().getSystemService("wifi");
            this.mOldWifiState = Boolean.valueOf(wifiManager.isWifiEnabled());
            if (this.mWifiState.booleanValue()) {
                wifiManager.setWifiEnabled(true);
                Log.m13704i(TAG, "onActivityCreated; enabled Wi-Fi");
            } else {
                wifiManager.setWifiEnabled(false);
                Log.m13704i(TAG, "onActivityCreated; disabled Wi-Fi");
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; mOldWifiState: " + this.mOldWifiState);
        this.mWifiStateSet = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        String str = TAG;
        Log.m13704i(str, "onAppExit; mRestoreWifiStateOnExit: " + this.mRestoreWifiStateOnExit + ", mOldWifiState: " + this.mOldWifiState);
        if (!this.mRestoreWifiStateOnExit || this.mOldWifiState == null) {
            return;
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getApplicationContext().getSystemService("wifi");
            if (this.mOldWifiState.booleanValue()) {
                wifiManager.setWifiEnabled(true);
                Log.m13704i(TAG, "onAppExit; enabled Wi-Fi");
            } else {
                wifiManager.setWifiEnabled(false);
                Log.m13704i(TAG, "onAppExit; disabled Wi-Fi");
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        this.mWifiStateSet = false;
    }
}
