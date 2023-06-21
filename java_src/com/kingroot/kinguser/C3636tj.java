package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
/* renamed from: com.kingroot.kinguser.tj */
/* loaded from: classes.dex */
public class C3636tj {
    /* renamed from: ge */
    public static Context m2169ge() {
        return bzt.m5101ge();
    }

    public static PackageManager getPackageManager() {
        return C3952zh.m1312pq();
    }

    public static String getPackageName() {
        String str = null;
        try {
            str = bzt.m5101ge().getPackageName();
        } catch (Throwable th) {
        }
        if (str == null) {
            return "";
        }
        return str;
    }

    public static void startService(Intent intent) {
        C3658tq.startService(intent);
    }

    public static void stopService(Intent intent) {
        C3658tq.stopService(intent);
    }

    /* renamed from: a */
    public static void m2173a(Intent intent, ServiceConnection serviceConnection) {
        C3658tq.m2130a(intent, serviceConnection);
    }

    /* renamed from: a */
    public static String m2172a(Class<?> cls, Bundle bundle) {
        return m2170a(null, cls, bundle);
    }

    /* renamed from: a */
    public static String m2171a(String str, Class<?> cls) {
        return m2170a(str, cls, null);
    }

    /* renamed from: a */
    public static String m2170a(String str, Class<?> cls, Bundle bundle) {
        return C3687uc.m2060a(str, cls, bundle, 2);
    }

    /* renamed from: p */
    public static void m2168p(String str, boolean z) {
        C3687uc.m2058p(str, z);
    }
}
