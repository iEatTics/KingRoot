package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
/* loaded from: classes2.dex */
public class SetBrightnessOnStart extends OnAppExitListener {
    private static final int MAX_BRIGHTNESS = 255;
    private static final String SCREEN_AUTO_BRIGHTNESS_ADJ = "screen_auto_brightness_adj";
    private static final String TAG = SetBrightnessOnStart.class.getSimpleName();
    private boolean mBrightnessSet;
    private boolean mOldAutoBrightness;
    private Integer mOldBrightness;
    private boolean mRestoreBrightnessOnExit;
    private Float mSetBrightnessOnStart;

    public SetBrightnessOnStart(CloneSettings cloneSettings) {
        this.mSetBrightnessOnStart = cloneSettings.getFloat("setBrightnessOnStart", null);
        this.mRestoreBrightnessOnExit = cloneSettings.getBoolean("restoreBrightnessOnExit", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "SetBrightnessOnStart; mSetBrightnessOnStart: " + this.mSetBrightnessOnStart);
        String str2 = TAG;
        Log.m13704i(str2, "SetBrightnessOnStart; mRestoreBrightnessOnExit: " + this.mRestoreBrightnessOnExit);
    }

    public void install() {
        Log.m13704i(TAG, "install; ");
        if (this.mSetBrightnessOnStart != null) {
            onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if (this.mBrightnessSet) {
            return;
        }
        this.mOldAutoBrightness = isAutoBrightness(activity);
        this.mOldBrightness = getBrightness(activity, this.mOldAutoBrightness);
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; mOldAutoBrightness: " + this.mOldAutoBrightness + ", mOldBrightness: " + this.mOldBrightness);
        setBrightness(activity, Math.round(this.mSetBrightnessOnStart.floatValue() * 255.0f), false);
        this.mBrightnessSet = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        Integer num;
        String str = TAG;
        Log.m13704i(str, "onAppExit; mRestoreBrightnessOnExit: " + this.mRestoreBrightnessOnExit + ", mOldAutoBrightness: " + this.mOldAutoBrightness);
        if (!this.mRestoreBrightnessOnExit || (num = this.mOldBrightness) == null) {
            return;
        }
        setBrightness(context, num.intValue(), this.mOldAutoBrightness);
        setAutoBrightness(context, this.mOldAutoBrightness);
        this.mBrightnessSet = false;
    }

    private boolean isAutoBrightness(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "screen_brightness_mode", 0) == 1;
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
            return false;
        }
    }

    private void setAutoBrightness(Context context, boolean z) {
        try {
            Settings.System.putInt(context.getContentResolver(), "screen_brightness_mode", z ? 1 : 0);
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }

    private Integer getBrightness(Context context, boolean z) {
        int i;
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if (z) {
                i = Math.round((Settings.System.getFloat(contentResolver, SCREEN_AUTO_BRIGHTNESS_ADJ) * 128.0f) + 128.0f);
            } else {
                i = Settings.System.getInt(contentResolver, "screen_brightness");
            }
            return Integer.valueOf(i);
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
            return null;
        }
    }

    private void setBrightness(Context context, int i, boolean z) {
        String str = TAG;
        Log.m13704i(str, "setBrightness; newBrightness: " + i + ", autoBrightness: " + z);
        try {
            ContentResolver contentResolver = context.getContentResolver();
            if (z) {
                try {
                    Settings.System.putFloat(contentResolver, SCREEN_AUTO_BRIGHTNESS_ADJ, (i - 128) / 128.0f);
                } catch (Exception e) {
                    Log.m13698w(TAG, e);
                    Settings.System.putInt(contentResolver, "screen_brightness_mode", 0);
                    Settings.System.putInt(contentResolver, "screen_brightness", i);
                }
            } else {
                Settings.System.putInt(contentResolver, "screen_brightness_mode", 0);
                Settings.System.putInt(contentResolver, "screen_brightness", i);
            }
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }
}
