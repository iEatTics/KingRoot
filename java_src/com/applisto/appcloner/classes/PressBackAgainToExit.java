package com.applisto.appcloner.classes;

import android.app.Activity;
import android.content.Context;
import android.widget.Toast;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.BackKeyHandler;
import java.util.Properties;
/* loaded from: classes2.dex */
public class PressBackAgainToExit extends BackKeyHandler {
    private static final String TAG = PressBackAgainToExit.class.getSimpleName();
    private Context mContext;
    private boolean mPressBackAgainToExit;
    private Properties mStringsProperties;
    private long mTimestamp;
    private Toast mToast;

    public PressBackAgainToExit(CloneSettings cloneSettings) {
        this.mPressBackAgainToExit = cloneSettings.getBoolean("pressBackAgainToExit", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "PressBackAgainToExit; mPressBackAgainToExit: " + this.mPressBackAgainToExit);
    }

    public void install(Context context, Properties properties) {
        Log.m13704i(TAG, "install; ");
        this.mStringsProperties = properties;
        if (this.mPressBackAgainToExit) {
            this.mContext = context;
            onCreate();
        }
    }

    @Override // com.applisto.appcloner.classes.util.activity.BackKeyHandler
    protected boolean handleBackPressed(Activity activity, Object obj) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            if (currentTimeMillis - this.mTimestamp <= 1000) {
                this.mTimestamp = currentTimeMillis;
                return true;
            }
            Log.m13704i(TAG, "invoke; intercept finishActivity");
            showToast();
            return false;
        } finally {
            this.mTimestamp = currentTimeMillis;
        }
    }

    private void showToast() {
        Toast toast = this.mToast;
        if (toast != null) {
            try {
                toast.cancel();
            } catch (Throwable unused) {
            }
        }
        try {
            this.mToast = Toast.makeText(this.mContext, this.mStringsProperties.getProperty("press_back_again_to_exit_toast_message"), 0);
            this.mToast.show();
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }
}
