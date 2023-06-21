package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
import java.lang.reflect.Method;
/* renamed from: com.kingroot.kinguser.ze */
/* loaded from: classes.dex */
public class C3949ze {

    /* renamed from: Wi */
    private static volatile Class<?> f4065Wi;

    /* renamed from: Wj */
    private static Method f4066Wj;

    /* renamed from: Wk */
    private static volatile int f4067Wk = 3;

    /* renamed from: Wl */
    private static int f4068Wl = 3;

    /* renamed from: Wm */
    private static final Object f4069Wm = new Object();

    /* renamed from: Wn */
    private static String f4070Wn = null;

    /* renamed from: pm */
    private static Class<?> m1326pm() {
        Class<?> cls = f4065Wi;
        if (cls == null) {
            synchronized (C3949ze.class) {
                if (f4067Wk > 0 && (cls = f4065Wi) == null) {
                    try {
                        cls = Class.forName("android.os.SystemProperties");
                        f4065Wi = cls;
                    } catch (Throwable th) {
                    }
                    f4067Wk--;
                }
            }
        }
        return cls;
    }

    /* renamed from: pn */
    private static Method m1325pn() {
        if (m1326pm() == null) {
            return null;
        }
        if (f4066Wj == null) {
            synchronized (C3949ze.class) {
                if (f4068Wl > 0 && f4066Wj == null) {
                    try {
                        f4066Wj = f4065Wi.getMethod("get", String.class);
                    } catch (Throwable th) {
                    }
                    f4068Wl--;
                }
            }
        }
        return f4066Wj;
    }

    public static String get(String str) {
        Class<?> m1326pm = m1326pm();
        Method m1325pn = m1325pn();
        if (m1326pm != null && m1325pn != null) {
            try {
                Object invoke = m1325pn.invoke(m1326pm, str);
                if (invoke instanceof String) {
                    return (String) invoke;
                }
            } catch (Throwable th) {
            }
        }
        return "";
    }

    public static String get(String str, String str2) {
        String str3 = get(str);
        return TextUtils.isEmpty(str3) ? str2 : str3;
    }

    /* renamed from: po */
    public static String m1324po() {
        if (f4070Wn == null) {
            synchronized (f4069Wm) {
                if (f4070Wn == null) {
                    f4070Wn = Build.FINGERPRINT;
                    if (f4070Wn.equals("unknown")) {
                        f4070Wn = get("ro.build.description", "");
                    }
                    if (f4070Wn == null) {
                        f4070Wn = "";
                    }
                }
            }
        }
        return f4070Wn;
    }
}
