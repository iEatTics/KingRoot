package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.util.HashSet;
/* loaded from: classes.dex */
public class afn {
    private static HashSet<Signature> ahZ;
    private static Object sLock = new Object();

    /* renamed from: a */
    public static void m12050a(PackageManager packageManager) {
        synchronized (sLock) {
            if (ahZ == null) {
                ahZ = new HashSet<>();
                m12047a(packageManager, "android");
                m12047a(packageManager, "com.android.packageinstaller");
                m12047a(packageManager, "com.android.smspush");
                m12047a(packageManager, "com.android.contacts");
                m12047a(packageManager, "com.android.providers.contacts");
                m12047a(packageManager, "com.android.providers.media");
                m12047a(packageManager, "com.android.ota");
            }
        }
    }

    /* renamed from: a */
    private static void m12047a(PackageManager packageManager, String str) {
        Signature[] m12045b = m12045b(packageManager, str);
        if (m12045b != null && m12045b.length > 0) {
            Signature signature = m12045b[0];
            synchronized (sLock) {
                ahZ.add(signature);
            }
        }
    }

    /* renamed from: b */
    private static Signature[] m12045b(PackageManager packageManager, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = packageManager.getPackageInfo(str, 64);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo.signatures;
        }
        return null;
    }

    /* renamed from: a */
    public static boolean m12049a(PackageManager packageManager, PackageInfo packageInfo) {
        return m12048a(packageManager, packageInfo, false);
    }

    /* renamed from: a */
    public static boolean m12048a(PackageManager packageManager, PackageInfo packageInfo, boolean z) {
        boolean z2 = false;
        if (packageManager == null || packageInfo == null) {
            return false;
        }
        if (packageInfo.applicationInfo == null || packageInfo.applicationInfo.uid >= 10000) {
            try {
                if (packageManager.getApplicationEnabledSetting(packageInfo.packageName) == 2) {
                    return true;
                }
            } catch (IllegalArgumentException e) {
            }
            String str = packageInfo.packageName;
            if (!z && str != null && (str.startsWith("com.android") || str.startsWith("android"))) {
                synchronized (sLock) {
                    if (ahZ == null) {
                        m12050a(packageManager);
                    }
                }
                if (m12044e(packageInfo)) {
                    return true;
                }
            }
            if (z || afo.m12038vn().m12042fh(str)) {
                if (akf.m11304gG(str) || akf.m11303gH(str)) {
                    z2 = true;
                }
                return z2;
            }
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public static boolean m12046b(PackageManager packageManager, PackageInfo packageInfo) {
        int m8886jn;
        if (packageManager == null || packageInfo == null) {
            return false;
        }
        if (packageInfo.applicationInfo == null || packageInfo.applicationInfo.uid >= 10000) {
            try {
                if (packageManager.getApplicationEnabledSetting(packageInfo.packageName) == 2) {
                    return true;
                }
            } catch (IllegalArgumentException e) {
            }
            String str = packageInfo.packageName;
            String charSequence = packageInfo.applicationInfo.loadLabel(packageManager).toString();
            if ((charSequence != null && charSequence.equals(str)) || akf.m11304gG(str) || akf.m11303gH(str)) {
                return true;
            }
            return (packageInfo.applicationInfo.flags & 1) == 0 && ((m8886jn = auw.m8886jn(str)) == 4 || m8886jn == 3 || m8886jn == 1 || m8886jn == 5);
        }
        return true;
    }

    /* renamed from: e */
    private static boolean m12044e(PackageInfo packageInfo) {
        boolean z = false;
        if (packageInfo.signatures != null && packageInfo.signatures.length > 0) {
            synchronized (sLock) {
                z = ahZ.contains(packageInfo.signatures[0]);
            }
        }
        return z;
    }
}
