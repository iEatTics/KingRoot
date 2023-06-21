package com.applisto.appcloner.classes;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
/* loaded from: classes2.dex */
public class BluetoothControls extends OnAppExitListener {
    private static final String TAG = BluetoothControls.class.getSimpleName();
    private Boolean mBluetoothState;
    private boolean mBluetoothStateSet;
    private Boolean mOldBluetoothState;
    private boolean mRestoreBluetoothStateOnExit;

    public BluetoothControls(CloneSettings cloneSettings) {
        this.mBluetoothState = cloneSettings.getBoolean("bluetoothState", null);
        this.mRestoreBluetoothStateOnExit = cloneSettings.getBoolean("restoreBluetoothStateOnExit", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "BluetoothControls; mBluetoothState: " + this.mBluetoothState);
        String str2 = TAG;
        Log.m13704i(str2, "BluetoothControls; mRestoreBluetoothStateOnExit: " + this.mRestoreBluetoothStateOnExit);
    }

    public void install() {
        if (this.mBluetoothState != null) {
            onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if (this.mBluetoothStateSet) {
            return;
        }
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            this.mOldBluetoothState = Boolean.valueOf(defaultAdapter.isEnabled());
            if (this.mBluetoothState.booleanValue()) {
                defaultAdapter.enable();
                Log.m13704i(TAG, "onActivityCreated; enabled bluetooth");
            } else {
                defaultAdapter.disable();
                Log.m13704i(TAG, "onActivityCreated; disabled bluetooth");
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; mOldBluetoothState: " + this.mOldBluetoothState);
        this.mBluetoothStateSet = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        String str = TAG;
        Log.m13704i(str, "onAppExit; mRestoreBluetoothStateOnExit: " + this.mRestoreBluetoothStateOnExit + ", mOldBluetoothState: " + this.mOldBluetoothState);
        if (!this.mRestoreBluetoothStateOnExit || this.mOldBluetoothState == null) {
            return;
        }
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (this.mOldBluetoothState.booleanValue()) {
                defaultAdapter.enable();
                Log.m13704i(TAG, "onAppExit; enabled bluetooth");
            } else {
                defaultAdapter.disable();
                Log.m13704i(TAG, "onAppExit; disabled bluetooth");
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        this.mBluetoothStateSet = false;
    }
}
