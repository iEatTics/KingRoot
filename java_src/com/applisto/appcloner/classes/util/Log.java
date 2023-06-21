package com.applisto.appcloner.classes.util;

import com.applisto.appcloner.classes.Utils;
/* loaded from: classes2.dex */
public class Log {
    public static boolean sEnabled = Utils.isDevDevice();

    private Log() {
    }

    /* renamed from: v */
    public static int m13702v(String str, String str2) {
        if (sEnabled) {
            return android.util.Log.v(str, str2);
        }
        return 0;
    }

    /* renamed from: v */
    public static int m13701v(String str, String str2, Throwable th) {
        if (sEnabled) {
            return android.util.Log.v(str, str2, th);
        }
        return 0;
    }

    /* renamed from: d */
    public static int m13708d(String str, String str2) {
        if (sEnabled) {
            return android.util.Log.d(str, str2);
        }
        return 0;
    }

    /* renamed from: d */
    public static int m13707d(String str, String str2, Throwable th) {
        if (sEnabled) {
            return android.util.Log.d(str, str2, th);
        }
        return 0;
    }

    /* renamed from: i */
    public static int m13704i(String str, String str2) {
        if (sEnabled) {
            return android.util.Log.i(str, str2);
        }
        return 0;
    }

    /* renamed from: i */
    public static int m13703i(String str, String str2, Throwable th) {
        if (sEnabled) {
            return android.util.Log.i(str, str2, th);
        }
        return 0;
    }

    /* renamed from: w */
    public static int m13700w(String str, String str2) {
        if (sEnabled) {
            return android.util.Log.w(str, str2);
        }
        return 0;
    }

    /* renamed from: w */
    public static int m13699w(String str, String str2, Throwable th) {
        if (sEnabled) {
            return android.util.Log.w(str, str2, th);
        }
        return 0;
    }

    /* renamed from: w */
    public static int m13698w(String str, Throwable th) {
        if (sEnabled) {
            return android.util.Log.w(str, th);
        }
        return 0;
    }

    /* renamed from: e */
    public static int m13706e(String str, String str2) {
        if (sEnabled) {
            return android.util.Log.e(str, str2);
        }
        return 0;
    }

    /* renamed from: e */
    public static int m13705e(String str, String str2, Throwable th) {
        if (sEnabled) {
            return android.util.Log.e(str, str2, th);
        }
        return 0;
    }

    public static String getStackTraceString(Throwable th) {
        return android.util.Log.getStackTraceString(th);
    }
}
