package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.master.app.KUApplication;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bgs {
    private static volatile bgs bpa;

    private bgs() {
    }

    public static bgs abU() {
        if (bpa == null) {
            synchronized (bgs.class) {
                if (bpa == null) {
                    bpa = new bgs();
                }
            }
        }
        return bpa;
    }

    public String abV() {
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            ResolveInfo resolveActivity = C3952zh.m1312pq().resolveActivity(intent, 65536);
            if (resolveActivity != null) {
                return resolveActivity.activityInfo.packageName;
            }
        } catch (Throwable th) {
        }
        return "";
    }

    public boolean abW() {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        try {
            if (Build.VERSION.SDK_INT < 21 && (runningTasks = ((ActivityManager) KUApplication.m13453ge().getSystemService("activity")).getRunningTasks(1)) != null && runningTasks.size() > 0) {
                return abV().equals(runningTasks.get(0).topActivity.getPackageName());
            }
        } catch (Throwable th) {
        }
        return false;
    }

    /* renamed from: lq */
    public static Intent m7090lq(String str) {
        Intent intent;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setPackage(str);
            Iterator<ResolveInfo> it = C3952zh.m1312pq().queryIntentActivities(intent2, 0).iterator();
            if (it.hasNext()) {
                ResolveInfo next = it.next();
                ComponentName componentName = new ComponentName(next.activityInfo.packageName, next.activityInfo.name);
                intent = new Intent();
                try {
                    intent.setComponent(componentName);
                    intent.setAction("android.intent.action.MAIN");
                    intent.addCategory("android.intent.category.LAUNCHER");
                } catch (Exception e) {
                }
            } else {
                intent = null;
            }
        } catch (Exception e2) {
            intent = null;
        }
        return intent;
    }
}
