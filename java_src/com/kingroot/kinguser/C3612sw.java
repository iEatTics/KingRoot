package com.kingroot.kinguser;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.List;
/* renamed from: com.kingroot.kinguser.sw */
/* loaded from: classes.dex */
public class C3612sw {

    /* renamed from: GL */
    public static int f3533GL = 10;

    /* renamed from: a */
    public static String m2228a(int i, int i2, int i3, int i4, int i5, String str, String str2) {
        if (str != null) {
            str = str.replaceAll("\t", "%09").replaceAll("\n", "%0A");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append("|");
        sb.append(i2);
        sb.append("|");
        sb.append(m2224cN(Build.FINGERPRINT));
        sb.append("|");
        sb.append(m2224cN(aav.m12921dI()));
        sb.append("|");
        sb.append(m2224cN(Build.BRAND));
        sb.append("|");
        sb.append(m2224cN(Build.MODEL));
        sb.append("|");
        sb.append(m2224cN(String.valueOf(Build.VERSION.SDK_INT)));
        sb.append("|");
        sb.append(System.currentTimeMillis());
        sb.append("|");
        sb.append(i3);
        sb.append("|");
        sb.append(m2224cN(str2));
        sb.append("|");
        sb.append(i4);
        sb.append("|");
        sb.append(i5);
        sb.append("|");
        sb.append(str);
        String sb2 = sb.toString();
        sb.delete(0, sb.length());
        return sb2;
    }

    /* renamed from: a */
    public static String m2226a(String[] strArr, int i, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(m2228a(0, i, 0, 0, 0, "", str));
        sb.append("|");
        if (strArr != null) {
            for (int i2 = 0; i2 < strArr.length && i2 < 10; i2++) {
                if (i2 > 0) {
                    sb.append("|");
                }
                if (strArr[i2] == null) {
                    strArr[i2] = "";
                }
                sb.append(strArr[i2]);
            }
        }
        return sb.toString();
    }

    @Deprecated
    /* renamed from: a */
    public static String m2225a(String[]... strArr) {
        return m2227a(KApplication.m13442ib(), KApplication.m13445hY(), strArr);
    }

    @Deprecated
    /* renamed from: a */
    public static String m2227a(String str, int i, String[]... strArr) {
        int i2;
        StringBuilder sb = new StringBuilder();
        sb.append(m2228a(0, i, 0, 0, 0, "", str));
        sb.append("|");
        if (strArr != null) {
            int length = strArr.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                String[] strArr2 = strArr[i3];
                if (i4 >= 10) {
                    break;
                }
                if (strArr2 == null) {
                    i2 = i4;
                } else {
                    for (int i5 = 0; i5 < strArr2.length; i5++) {
                        if (i5 != 0) {
                            sb.append(",");
                        }
                        sb.append(m2224cN(strArr2[i5]));
                    }
                    sb.append("|");
                    i2 = i4 + 1;
                }
                i3++;
                i4 = i2;
            }
        }
        return sb.toString();
    }

    /* renamed from: t */
    public static String m2222t(@NonNull List<? extends Object> list) {
        if (C3942yy.m1351d(list)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (Object obj : list) {
            if (i > 0) {
                sb.append("|");
            }
            StringBuilder sb2 = new StringBuilder();
            if (obj instanceof String) {
                sb2.append(m2224cN((String) obj));
            } else if (obj instanceof String[]) {
                String[] strArr = (String[]) obj;
                int length = strArr.length;
                int i2 = 0;
                int i3 = 0;
                while (i2 < length) {
                    String str = strArr[i2];
                    int i4 = i3 + 1;
                    if (i3 > 0) {
                        sb2.append(",");
                    }
                    sb2.append(m2224cN(str));
                    i2++;
                    i3 = i4;
                }
            } else if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                int length2 = iArr.length;
                int i5 = 0;
                int i6 = 0;
                while (i5 < length2) {
                    Integer valueOf = Integer.valueOf(iArr[i5]);
                    int i7 = i6 + 1;
                    if (i6 > 0) {
                        sb2.append(",");
                    }
                    sb2.append(m2224cN(valueOf.toString()));
                    i5++;
                    i6 = i7;
                }
            } else if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Boolean)) {
                sb2.append(obj.toString());
            }
            String str2 = "";
            if (sb2.length() > 0) {
                str2 = sb2.toString();
                sb2.delete(0, sb2.length());
            }
            sb.append(str2);
            int i8 = i + 1;
            if (i8 >= f3533GL) {
                break;
            }
            i = i8;
        }
        String sb3 = sb.toString();
        sb.delete(0, sb.length());
        return sb3;
    }

    @Nullable
    /* renamed from: u */
    public static String[] m2221u(List<Object> list) {
        if (C3942yy.m1351d(list)) {
            return null;
        }
        return m2222t(list).split("\\|");
    }

    /* renamed from: cN */
    public static String m2224cN(String str) {
        return m2223j("\n", "%0A", m2223j("|", "%7C", m2223j(";", "%3B", m2223j(",", "%2C", str))));
    }

    /* renamed from: j */
    public static String m2223j(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str3)) {
            return str3.replace(str, str2);
        }
        return str3;
    }
}
