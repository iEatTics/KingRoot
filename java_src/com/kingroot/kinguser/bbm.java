package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class bbm {
    private static String bfh = m7803Ws();
    private static String bfi = m7802Wt();

    /* renamed from: Ws */
    private static String m7803Ws() {
        String str = Build.FINGERPRINT;
        if (TextUtils.isEmpty(str) || "unknown".equalsIgnoreCase(str)) {
            return m7799kq("ro.build.description");
        }
        return str;
    }

    /* renamed from: Wt */
    private static String m7802Wt() {
        String m2361cA = C3563rs.m2361cA("/proc/version");
        return m2361cA != null ? m2361cA.trim() : "";
    }

    /* renamed from: Wu */
    public static String m7801Wu() {
        return bfh;
    }

    /* renamed from: dI */
    public static String m7800dI() {
        return bfi;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004d  */
    /* renamed from: kq */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m7799kq(String str) {
        abm abmVar;
        String str2;
        try {
            try {
                abmVar = new abm("sh");
                try {
                    abmVar.m12802ew("export PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:$PATH");
                    String str3 = abmVar.m12801f("getprop " + str, 10000L).mStdOut;
                    if (str3 == null) {
                        str2 = "";
                        if (abmVar != null) {
                            abmVar.shutdown();
                        }
                    } else {
                        str2 = str3.trim();
                        if (abmVar != null) {
                            abmVar.shutdown();
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    str2 = "";
                    if (abmVar != null) {
                        abmVar.shutdown();
                    }
                    return str2;
                }
            } catch (Throwable th) {
                th = th;
                if (abmVar != null) {
                    abmVar.shutdown();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            abmVar = null;
        } catch (Throwable th2) {
            th = th2;
            abmVar = null;
            if (abmVar != null) {
            }
            throw th;
        }
        return str2;
    }
}
