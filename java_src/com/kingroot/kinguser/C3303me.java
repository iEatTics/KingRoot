package com.kingroot.kinguser;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.kinguser.C3199ix;
import java.lang.reflect.Method;
/* renamed from: com.kingroot.kinguser.me */
/* loaded from: classes.dex */
public final class C3303me {
    /* renamed from: v */
    public static String m3096v(Context context) {
        String m3544bO = C3183ih.m3497bW().m3544bO();
        return TextUtils.isEmpty(m3544bO) ? "000000000000000" : m3544bO;
    }

    /* renamed from: w */
    public static String m3095w(Context context) {
        String m3543bP = C3183ih.m3497bW().m3543bP();
        return TextUtils.isEmpty(m3543bP) ? "000000000000001" : m3543bP;
    }

    /* renamed from: x */
    public static String m3094x(Context context) {
        try {
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            if (connectionInfo == null) {
                return null;
            }
            return connectionInfo.getMacAddress();
        } catch (Throwable th) {
            return "00:00:00:00:00:01";
        }
    }

    /* renamed from: y */
    public static String m3093y(Context context) {
        String m3542bQ = C3183ih.m3497bW().m3542bQ();
        return TextUtils.isEmpty(m3542bQ) ? "0000001" : m3542bQ;
    }

    /* renamed from: et */
    public static String m3101et() {
        return "android_id";
    }

    /* renamed from: z */
    public static String m3092z(Context context) {
        String str;
        String str2 = null;
        String[] strArr = {"ro.mediatek.platform", "ro.build.hidden_ver", "ro.product.model"};
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str3 = strArr[i];
            try {
                Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
                declaredMethod.setAccessible(true);
                str = (String) declaredMethod.invoke(null, str3, "unknow");
            } catch (Throwable th) {
                str = str2;
            }
            if (TextUtils.isEmpty(str)) {
                i++;
                str2 = str;
            } else {
                return str;
            }
        }
        return Build.MODEL;
    }

    /* renamed from: eu */
    public static String m3100eu() {
        return Build.MODEL;
    }

    /* renamed from: ev */
    public static int m3099ev() {
        return Build.VERSION.SDK_INT;
    }

    /* renamed from: ew */
    public static String m3098ew() {
        return Build.BRAND;
    }

    /* renamed from: ex */
    public static String m3097ex() {
        String str = Build.FINGERPRINT;
        if (TextUtils.isEmpty(str) || "unknown".equals(str)) {
            String m3103bq = m3103bq("ro.build.fingerprint");
            if (TextUtils.isEmpty(m3103bq) || "unknown".equals(m3103bq)) {
                return m3103bq("ro.build.description");
            }
            return m3103bq;
        }
        return str;
    }

    /* renamed from: dI */
    public static String m3102dI() {
        String str;
        C3199ix.C3201b mo3131aC = ((InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class)).mo3131aC("cat /proc/version");
        return (mo3131aC == null || !(mo3131aC == null || mo3131aC.m3447co()) || (str = mo3131aC.mStdOut) == null) ? "" : str.trim();
    }

    /* renamed from: bq */
    private static String m3103bq(String str) {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class, String.class);
            declaredMethod.setAccessible(true);
            return (String) declaredMethod.invoke(null, str, "");
        } catch (Throwable th) {
            return "";
        }
    }
}
