package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.C3295ly;
/* renamed from: com.kingroot.kinguser.li */
/* loaded from: classes.dex */
final class C3277li {
    /* renamed from: dR */
    public static boolean m3175dR() {
        int m3091ev = C3304mf.m3091ev();
        return m3091ev >= 9 && m3091ev < 24;
    }

    /* renamed from: dS */
    public static boolean m3174dS() {
        String m3097ex = C3303me.m3097ex();
        String trim = C3303me.m3098ew().trim();
        String trim2 = C3303me.m3100eu().trim();
        String m3176d = m3176d(trim, trim2, m3097ex);
        for (C3295ly.C3296a c3296a : C3295ly.m3116eo()) {
            if (40 >= c3296a.minSdkVersion && (c3296a.maxSdkVersion == -1 || 40 < c3296a.maxSdkVersion)) {
                if (m3176d(TextUtils.isEmpty(c3296a.f3044vA) ? trim : c3296a.f3044vA, TextUtils.isEmpty(c3296a.f3043aZ) ? trim2 : c3296a.f3043aZ, TextUtils.isEmpty(c3296a.f3045vz) ? m3097ex : c3296a.f3045vz).equalsIgnoreCase(m3176d)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: d */
    private static String m3176d(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("|");
        if (str != null) {
            sb.append(str);
        }
        sb.append('|');
        if (str2 != null) {
            sb.append(str2);
        }
        sb.append('|');
        if (str3 != null) {
            sb.append(str3);
        }
        sb.append('|');
        return sb.toString();
    }
}
