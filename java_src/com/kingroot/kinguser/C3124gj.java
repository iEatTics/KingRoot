package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.gj */
/* loaded from: classes.dex */
public class C3124gj {
    /* renamed from: k */
    private static String m3699k(String str) {
        return str;
    }

    /* renamed from: l */
    private static String m3698l(String str) {
        return str;
    }

    /* renamed from: a */
    private static String m3706a(int i, int i2, long j, int i3, int i4, int i5, String str) {
        if (str != null) {
            str = str.replaceAll("\t", "%09").replaceAll("\n", "%0A");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append("|");
        sb.append(i2);
        sb.append("|");
        sb.append(m3703ak(m3699k(Build.FINGERPRINT)));
        sb.append("|");
        sb.append(m3703ak(m3698l(C3051fc.m3867af())));
        sb.append("|");
        sb.append(m3703ak(Build.BRAND));
        sb.append("|");
        sb.append(m3703ak(Build.MODEL));
        sb.append("|");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("|");
        sb.append(j);
        sb.append("|");
        sb.append(i3);
        sb.append("|");
        sb.append(m3703ak(C3049fa.f2650P));
        sb.append("|");
        sb.append(i4);
        sb.append("|");
        sb.append(i5);
        sb.append("|");
        sb.append(m3703ak(str));
        String sb2 = sb.toString();
        sb.delete(0, sb.length());
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static String m3701g(AbstractC3035ew abstractC3035ew) {
        if (abstractC3035ew == null) {
            return null;
        }
        Object[] mo3872ac = abstractC3035ew.mo3872ac();
        long j = abstractC3035ew.timestamp;
        int i = abstractC3035ew.f2635pD;
        int i2 = abstractC3035ew.f2636pE;
        String str = abstractC3035ew.f2634I == null ? "" : abstractC3035ew.f2634I;
        StringBuilder sb = new StringBuilder();
        sb.append(m3706a(0, 1, j, 0, i, i2, str));
        m3705a(mo3872ac, sb);
        sb.append("|");
        sb.append(105702);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static String m3700h(AbstractC3035ew abstractC3035ew) {
        if (abstractC3035ew == null) {
            return null;
        }
        Object[] mo3872ac = abstractC3035ew.mo3872ac();
        long j = abstractC3035ew.timestamp;
        int i = abstractC3035ew.f2635pD;
        int i2 = abstractC3035ew.f2636pE;
        String str = abstractC3035ew.f2634I == null ? "" : abstractC3035ew.f2634I;
        StringBuilder sb = new StringBuilder();
        sb.append(j);
        sb.append("|");
        sb.append(i);
        sb.append("|");
        sb.append(i2);
        sb.append("|");
        sb.append(m3703ak(str));
        m3705a(mo3872ac, sb);
        return sb.toString();
    }

    /* renamed from: a */
    private static void m3705a(Object[] objArr, StringBuilder sb) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 9) {
                sb.append("|");
                if (objArr != null && i2 < objArr.length) {
                    if (objArr[i2] == null) {
                        objArr[i2] = "";
                    }
                    if (objArr[i2] instanceof String) {
                        objArr[i2] = m3703ak((String) objArr[i2]);
                    }
                    sb.append(objArr[i2]);
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: aj */
    public static String[] m3704aj(String str) {
        if (str == null) {
            return null;
        }
        return str.split("\\|");
    }

    /* renamed from: ak */
    private static String m3703ak(String str) {
        return m3702d("'", "%27", m3702d("\n", "%0A", m3702d("|", "%7C", m3702d(";", "%3B", m3702d(",", "%2c", str)))));
    }

    /* renamed from: d */
    private static String m3702d(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str3)) {
            return str3.replace(str, str2);
        }
        return str3;
    }
}
