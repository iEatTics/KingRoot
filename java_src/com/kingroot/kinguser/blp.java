package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class blp {
    private static String bAd;
    private static String bAe;

    static {
        String str = Build.FINGERPRINT;
        if (TextUtils.isEmpty(str) || "unknown".equalsIgnoreCase(str)) {
            str = m6472mf("ro.build.description");
        }
        bAd = str;
        String m6312ml = bmu.m6312ml("/proc/version");
        bAe = m6312ml != null ? m6312ml.trim() : "";
    }

    /* renamed from: r */
    public static String m6471r() {
        return bAd;
    }

    /* renamed from: s */
    public static String m6470s() {
        return bAe;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* renamed from: mf */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m6472mf(String str) {
        blv blvVar;
        String str2;
        try {
            blvVar = new blv("sh");
            try {
                try {
                    blvVar.m6442i("export PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:$PATH");
                    str2 = blvVar.m6440o("getprop " + str, 10000L).mStdOut;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    if (blvVar != null) {
                        blvVar.shutdown();
                    }
                    return "";
                }
            } catch (Throwable th) {
                th = th;
                if (blvVar != null) {
                    blvVar.shutdown();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            blvVar = null;
        } catch (Throwable th2) {
            th = th2;
            blvVar = null;
            if (blvVar != null) {
            }
            throw th;
        }
        if (str2 == null) {
            blvVar.shutdown();
            return "";
        }
        String trim = str2.trim();
        blvVar.shutdown();
        return trim;
    }
}
