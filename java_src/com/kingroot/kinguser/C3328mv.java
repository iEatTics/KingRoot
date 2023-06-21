package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.mv */
/* loaded from: classes.dex */
public final class C3328mv {
    /* renamed from: f */
    private static String m2976f(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str3)) {
            return str3.replace(str, str2);
        }
        return str3;
    }

    /* renamed from: bA */
    public static String m2977bA(String str) {
        if (str == null) {
            str = "";
        }
        return m2976f("\n", "%0A", m2976f("|", "%7C", m2976f(";", "%3B", str)));
    }

    /* renamed from: a */
    public static String m2978a(int i, int i2, int i3, String str, int i4, int i5, String str2, int i6) {
        if (str2 != null) {
            str2 = str2.replaceAll("\t", "%09").replaceAll("\n", "%0A");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append('|');
        sb.append(i2);
        sb.append('|');
        sb.append(m2977bA(C3303me.m3097ex()));
        sb.append('|');
        sb.append(m2977bA(C3303me.m3102dI()));
        sb.append('|');
        sb.append(m2977bA(Build.BRAND));
        sb.append('|');
        sb.append(m2977bA(Build.MODEL));
        sb.append('|');
        sb.append(m2977bA(Build.VERSION.SDK));
        sb.append('|');
        sb.append(i6);
        sb.append('|');
        sb.append(i3);
        sb.append('|');
        sb.append(m2977bA(str));
        sb.append('|');
        sb.append(i4);
        sb.append('|');
        sb.append(i5);
        sb.append('|');
        sb.append(str2);
        String sb2 = sb.toString();
        sb.delete(0, sb.length());
        return sb2;
    }
}
