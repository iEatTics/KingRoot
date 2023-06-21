package com.applisto.appcloner.classes;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.Toast;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
import java.util.Properties;
/* loaded from: classes2.dex */
public class InterruptionFilterControls extends OnAppExitListener {
    private static final String TAG = InterruptionFilterControls.class.getSimpleName();
    private Integer mInterruptionFilter;
    private boolean mInterruptionFilterSet;
    private int mOldInterruptionFilter;
    private boolean mRestoreInterruptionFilterOnExit;
    private Properties mStringsProperties;

    public InterruptionFilterControls(CloneSettings cloneSettings) {
        this.mInterruptionFilter = cloneSettings.getInteger("interruptionFilter", null);
        this.mRestoreInterruptionFilterOnExit = cloneSettings.getBoolean("restoreInterruptionFilterOnExit", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "WifiControls; mInterruptionFilter: " + this.mInterruptionFilter);
        String str2 = TAG;
        Log.m13704i(str2, "WifiControls; mRestoreInterruptionFilterOnExit: " + this.mRestoreInterruptionFilterOnExit);
    }

    public void install(Properties properties) {
        Log.m13704i(TAG, "install; ");
        this.mStringsProperties = properties;
        if (this.mInterruptionFilter != null) {
            onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(Activity activity) {
        super.onActivityCreated(activity);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                NotificationManager notificationManager = (NotificationManager) activity.getSystemService("notification");
                if (notificationManager != null) {
                    boolean isNotificationPolicyAccessGranted = notificationManager.isNotificationPolicyAccessGranted();
                    String str = TAG;
                    Log.m13704i(str, "onActivityCreated; accessGranted: " + isNotificationPolicyAccessGranted);
                    if (!isNotificationPolicyAccessGranted) {
                        activity.startActivity(new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"));
                        Toast.makeText(activity, this.mStringsProperties.getProperty("do_not_disturb_enable_access_message").replace("%s", Utils.getAppName(activity)), 1).show();
                    } else if (!this.mInterruptionFilterSet) {
                        this.mOldInterruptionFilter = notificationManager.getCurrentInterruptionFilter();
                        notificationManager.setInterruptionFilter(this.mInterruptionFilter.intValue());
                        String str2 = TAG;
                        Log.m13704i(str2, "onActivityCreated: interruption filter set: " + this.mInterruptionFilter);
                        String str3 = TAG;
                        Log.m13704i(str3, "onActivityCreated; mOldInterruptionFilter: " + this.mOldInterruptionFilter);
                        this.mInterruptionFilterSet = true;
                    }
                }
            } catch (Exception e) {
                Log.m13698w(TAG, e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            String str = TAG;
            Log.m13704i(str, "onAppExit; mRestoreInterruptionFilterOnExit: " + this.mRestoreInterruptionFilterOnExit + ", mOldInterruptionFilter: " + this.mOldInterruptionFilter);
            if (this.mRestoreInterruptionFilterOnExit) {
                try {
                    NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                    if (notificationManager != null) {
                        notificationManager.setInterruptionFilter(this.mOldInterruptionFilter);
                        String str2 = TAG;
                        Log.m13704i(str2, "onAppExit: interruption filter set: " + this.mOldInterruptionFilter);
                    }
                } catch (Exception e) {
                    Log.m13698w(TAG, e);
                }
                this.mInterruptionFilterSet = false;
            }
        }
    }
}
