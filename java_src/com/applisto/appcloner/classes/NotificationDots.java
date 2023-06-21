package com.applisto.appcloner.classes;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.provider.Settings;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.OnAppExitListener;
/* loaded from: classes2.dex */
public class NotificationDots extends OnAppExitListener {
    private static final String ACTION_NOTIFICATION_LISTENER_SETTINGS = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS";
    private static final String ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    private static final String TAG = NotificationDots.class.getSimpleName();
    private static final Handler sHandler = new Handler();
    private boolean mRequested;

    public void install() {
        Log.m13704i(TAG, "install; ");
        if (Build.VERSION.SDK_INT >= 23) {
            onCreate();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener, com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    public void onActivityCreated(final Activity activity) {
        String str = TAG;
        Log.m13704i(str, "onActivityCreated; mRequested: " + this.mRequested);
        if (this.mRequested) {
            return;
        }
        boolean isNotificationServiceEnabled = isNotificationServiceEnabled(activity);
        String str2 = TAG;
        Log.m13704i(str2, "onActivityCreated; notificationServiceEnabled: " + isNotificationServiceEnabled);
        if (isNotificationServiceEnabled) {
            return;
        }
        try {
            new AlertDialog.Builder(activity).setTitle("App Cloner").setMessage("Please enable notification access to enable notification dots.").setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.applisto.appcloner.classes.-$$Lambda$NotificationDots$1Gn_ivY3iY04EBS7pVYuOHu8IVM
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    NotificationDots.this.lambda$onActivityCreated$0$NotificationDots(activity, dialogInterface, i);
                }
            }).show();
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    public /* synthetic */ void lambda$onActivityCreated$0$NotificationDots(Activity activity, DialogInterface dialogInterface, int i) {
        try {
            activity.startActivity(new Intent(ACTION_NOTIFICATION_LISTENER_SETTINGS));
            this.mRequested = true;
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    @Override // com.applisto.appcloner.classes.util.activity.ActivityLifecycleListener
    protected void onActivityResumed(Activity activity) {
        update(activity);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applisto.appcloner.classes.util.activity.OnAppExitListener
    public void onAppExit(Context context) {
        this.mRequested = false;
    }

    private static boolean isNotificationServiceEnabled(Context context) {
        String packageName = context.getPackageName();
        String string = Settings.Secure.getString(context.getContentResolver(), ENABLED_NOTIFICATION_LISTENERS);
        if (!TextUtils.isEmpty(string)) {
            for (String str : string.split(":")) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
                if (unflattenFromString != null && TextUtils.equals(packageName, unflattenFromString.getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void update(final Context context) {
        sHandler.post(new Runnable() { // from class: com.applisto.appcloner.classes.-$$Lambda$NotificationDots$uk8drYgxXE00G7nLrqFytUIYsRA
            @Override // java.lang.Runnable
            public final void run() {
                NotificationDots.lambda$update$1(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$update$1(Context context) {
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager != null) {
                StatusBarNotification[] activeNotifications = notificationManager.getActiveNotifications();
                if (activeNotifications != null && activeNotifications.length > 0) {
                    showNotificationDots(context);
                } else {
                    hideNotificationDots(context);
                }
            }
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    private static void hideNotificationDots(Context context) {
        Log.m13704i(TAG, "hideNotificationDots; ");
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context.getPackageName(), StartActivity1.class.getName()), 1, 1);
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context.getPackageName(), StartActivity2.class.getName()), 2, 1);
    }

    private static void showNotificationDots(Context context) {
        Log.m13704i(TAG, "showNotificationDots; ");
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context.getPackageName(), StartActivity1.class.getName()), 2, 1);
        context.getPackageManager().setComponentEnabledSetting(new ComponentName(context.getPackageName(), StartActivity2.class.getName()), 1, 1);
    }

    private static ComponentName getLauncherComponent(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
        if (launchIntentForPackage != null) {
            return launchIntentForPackage.getComponent();
        }
        return null;
    }

    /* loaded from: classes2.dex */
    public static class MyNotificationListenerService extends NotificationListenerService {
        @Override // android.service.notification.NotificationListenerService, android.app.Service
        public IBinder onBind(Intent intent) {
            String str = NotificationDots.TAG;
            Log.m13704i(str, "onBind; intent: " + intent);
            return super.onBind(intent);
        }

        @Override // android.service.notification.NotificationListenerService
        public void onNotificationPosted(StatusBarNotification statusBarNotification) {
            String str = NotificationDots.TAG;
            Log.m13704i(str, "onNotificationPosted; sbn: " + statusBarNotification);
            try {
                NotificationDots.update(getApplicationContext());
            } catch (Exception e) {
                Log.m13698w(NotificationDots.TAG, e);
            }
        }

        @Override // android.service.notification.NotificationListenerService
        public void onNotificationRemoved(StatusBarNotification statusBarNotification) {
            String str = NotificationDots.TAG;
            Log.m13704i(str, "onNotificationRemoved; sbn: " + statusBarNotification);
            try {
                NotificationDots.update(getApplicationContext());
            } catch (Exception e) {
                Log.m13698w(NotificationDots.TAG, e);
            }
        }
    }
}
