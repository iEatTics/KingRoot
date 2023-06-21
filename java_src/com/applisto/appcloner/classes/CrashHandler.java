package com.applisto.appcloner.classes;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.hooking.Hooking;
import com.swift.sandhook.annotation.HookClass;
import com.swift.sandhook.annotation.HookMethod;
import com.swift.sandhook.annotation.MethodParams;
import java.lang.Thread;
/* loaded from: classes2.dex */
public class CrashHandler {
    public static final int CRASH_HANDLER_NOTIFICATION_ID = 1621363246;
    private static final String TAG = CrashHandler.class.getSimpleName();
    private boolean mAppBundle;
    private Context mContext;
    private Thread.UncaughtExceptionHandler mExceptionHandler = new Thread.UncaughtExceptionHandler() { // from class: com.applisto.appcloner.classes.CrashHandler.1
        /* JADX WARN: Removed duplicated region for block: B:45:0x00ec A[Catch: Exception -> 0x0103, TryCatch #0 {Exception -> 0x0103, blocks: (B:2:0x0000, B:4:0x000f, B:6:0x0017, B:8:0x0029, B:9:0x003b, B:11:0x004e, B:14:0x005a, B:16:0x0062, B:19:0x006b, B:21:0x0073, B:43:0x00b9, B:45:0x00ec, B:46:0x00f8, B:24:0x007e, B:27:0x0085, B:29:0x008d, B:32:0x0096, B:34:0x009e, B:38:0x00aa, B:10:0x0040), top: B:54:0x0000 }] */
        @Override // java.lang.Thread.UncaughtExceptionHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void uncaughtException(Thread thread, Throwable th) {
            StringBuilder sb;
            try {
                Log.m13698w(CrashHandler.TAG, th);
                if (!CrashHandler.this.mIgnoreCrashes || CrashHandler.this.mIgnoreCrashesShowCrashMessages) {
                    String appName = Utils.getAppName(CrashHandler.this.mContext);
                    if (CrashHandler.this.mIgnoreCrashes) {
                        sb = new StringBuilder();
                        sb.append("Ignored ");
                        sb.append(appName);
                        sb.append(" crash");
                    } else {
                        sb = new StringBuilder();
                        sb.append(appName);
                        sb.append(" crashed");
                    }
                    String sb2 = sb.toString();
                    String stackTraceString = Log.getStackTraceString(th);
                    String str = "Please try enabling the 'Adaptive icons support' option.";
                    if (Build.VERSION.SDK_INT >= 28 && (stackTraceString.contains("You need to use a Theme.AppCompat theme") || stackTraceString.contains("requires your app theme to be Theme.AppCompat"))) {
                        stackTraceString = "Please try enabling the 'Adaptive icons support' option.";
                    }
                    if (stackTraceString.contains("android.content.res.Resources$NotFoundException")) {
                        if (CrashHandler.this.mAppBundle) {
                            str = "Please clone the standalone version of this app, not the Play Store version.";
                        } else {
                            if (Build.VERSION.SDK_INT >= 25) {
                            }
                            str = stackTraceString;
                        }
                        NotificationManager notificationManager = (NotificationManager) CrashHandler.this.mContext.getSystemService("notification");
                        Notification.Builder when = new Notification.Builder(CrashHandler.this.mContext).setContentTitle(sb2).setContentText(str).setWhen(System.currentTimeMillis());
                        Utils.setSmallNotificationIcon(when, true);
                        if (Build.VERSION.SDK_INT >= 16) {
                            when.setStyle(new Notification.BigTextStyle().bigText(str));
                        }
                        notificationManager.notify(CrashHandler.CRASH_HANDLER_NOTIFICATION_ID, when.getNotification());
                    } else {
                        if (!stackTraceString.contains("dlopen failed") && !stackTraceString.contains("java.lang.UnsatisfiedLinkError")) {
                            if (stackTraceString.contains("java.lang.NullPointerException: Attempt to read from field 'java.lang.String android.content.pm.PackageItemInfo.packageName' on a null object reference")) {
                                if (CrashHandler.this.mIgnoreCrashes) {
                                    return;
                                }
                                str = "Please try enabling the 'Ignore crashes' option.";
                            } else {
                                if (stackTraceString.contains("java.lang.ClassNotFoundException: Didn't find class")) {
                                    str = "Please try enabling the 'Increase compatibility' option or use the manifest cloning mode.";
                                }
                                str = stackTraceString;
                            }
                            NotificationManager notificationManager2 = (NotificationManager) CrashHandler.this.mContext.getSystemService("notification");
                            Notification.Builder when2 = new Notification.Builder(CrashHandler.this.mContext).setContentTitle(sb2).setContentText(str).setWhen(System.currentTimeMillis());
                            Utils.setSmallNotificationIcon(when2, true);
                            if (Build.VERSION.SDK_INT >= 16) {
                            }
                            notificationManager2.notify(CrashHandler.CRASH_HANDLER_NOTIFICATION_ID, when2.getNotification());
                        }
                        str = "Please try enabling the 'Skip native libraries' under 'Cloning options'.";
                        NotificationManager notificationManager22 = (NotificationManager) CrashHandler.this.mContext.getSystemService("notification");
                        Notification.Builder when22 = new Notification.Builder(CrashHandler.this.mContext).setContentTitle(sb2).setContentText(str).setWhen(System.currentTimeMillis());
                        Utils.setSmallNotificationIcon(when22, true);
                        if (Build.VERSION.SDK_INT >= 16) {
                        }
                        notificationManager22.notify(CrashHandler.CRASH_HANDLER_NOTIFICATION_ID, when22.getNotification());
                    }
                }
            } catch (Exception e) {
                Log.m13698w(CrashHandler.TAG, e);
            }
            if (CrashHandler.this.mIgnoreCrashes) {
                return;
            }
            System.exit(0);
        }
    };
    private final boolean mIgnoreCrashes;
    private final boolean mIgnoreCrashesShowCrashMessages;

    public CrashHandler(CloneSettings cloneSettings) {
        this.mIgnoreCrashes = cloneSettings.getBoolean("ignoreCrashes", false).booleanValue();
        this.mIgnoreCrashesShowCrashMessages = cloneSettings.getBoolean("ignoreCrashesShowCrashMessages", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "CrashHandler; mIgnoreCrashes: " + this.mIgnoreCrashes + ", mIgnoreCrashesShowCrashMessages: " + this.mIgnoreCrashesShowCrashMessages);
    }

    public void install(Context context) {
        this.mContext = context;
        try {
            this.mAppBundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("com.applisto.appcloner.appBundle");
            String str = TAG;
            Log.m13704i(str, "install; mAppBundle: " + this.mAppBundle);
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        try {
            Thread.setDefaultUncaughtExceptionHandler(this.mExceptionHandler);
            Hooking.initHooking(context);
            Hooking.addHookClass(Hook.class);
            Log.m13704i(TAG, "install; hooks installed");
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }

    @HookClass(Thread.class)
    /* loaded from: classes2.dex */
    public static class Hook {
        @MethodParams({Thread.UncaughtExceptionHandler.class})
        @HookMethod("setDefaultUncaughtExceptionHandler")
        public static void setDefaultUncaughtExceptionHandlerHook(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            Log.m13704i(CrashHandler.TAG, "setDefaultUncaughtExceptionHandlerHook; ");
        }

        public static void setDefaultUncaughtExceptionHandlerHook(Class cls, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            Log.m13704i(CrashHandler.TAG, "setDefaultUncaughtExceptionHandlerHook; ");
        }
    }
}
