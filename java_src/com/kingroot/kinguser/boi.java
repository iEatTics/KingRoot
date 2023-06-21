package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
/* loaded from: classes.dex */
public final class boi {

    /* renamed from: a */
    private static Context f1836a = null;

    /* renamed from: b */
    private static String f1837b = "2.5.05";
    private static Handler bFo;

    public static Context agA() {
        return f1836a;
    }

    public static Handler agB() {
        return bFo;
    }

    /* renamed from: b */
    public static String m6075b() {
        return f1837b;
    }

    /* renamed from: d */
    public static void m6074d(Context context, String str, String str2, String str3) {
        f1836a = context.getApplicationContext();
        f1837b = "2.5.05";
        bFo = new Handler(f1836a.getMainLooper());
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            String str4 = packageInfo.versionName;
            int i = packageInfo.versionCode;
        } catch (Throwable th) {
        }
    }
}
