package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import com.kingroot.kinguser.C3347ni;
import java.util.List;
/* renamed from: com.kingroot.kinguser.kt */
/* loaded from: classes.dex */
class C3258kt {

    /* renamed from: uq */
    private static final Object f2971uq = new Object();

    /* renamed from: a */
    public static void m3243a(C3347ni.InterfaceC3351d... interfaceC3351dArr) {
        synchronized (f2971uq) {
            C3347ni.m2878a(interfaceC3351dArr);
        }
    }

    /* renamed from: ac */
    public static boolean m3242ac(int i) {
        boolean z = true;
        PackageManager packageManager = C3183ih.getContext().getPackageManager();
        if (packageManager == null) {
            return false;
        }
        String[] packagesForUid = packageManager.getPackagesForUid(i);
        if (packagesForUid != null) {
            int length = packagesForUid.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z = false;
                    break;
                }
                ApplicationInfo applicationInfo = null;
                try {
                    applicationInfo = packageManager.getApplicationInfo(packagesForUid[i2], 0);
                } catch (PackageManager.NameNotFoundException e) {
                }
                if (applicationInfo != null && (applicationInfo.flags & 1) != 0) {
                    break;
                }
                i2++;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: di */
    public static List<ActivityManager.RunningAppProcessInfo> m3241di() {
        ActivityManager activityManager;
        Context context = C3183ih.getContext();
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null) {
            return null;
        }
        return activityManager.getRunningAppProcesses();
    }

    /* renamed from: dj */
    public static int m3240dj() {
        ResolveInfo resolveActivity;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        PackageManager packageManager = C3183ih.getContext().getPackageManager();
        if (packageManager == null || (resolveActivity = packageManager.resolveActivity(intent, 65536)) == null || resolveActivity.activityInfo == null || resolveActivity.activityInfo.applicationInfo == null) {
            return -1;
        }
        return resolveActivity.activityInfo.applicationInfo.uid;
    }
}
