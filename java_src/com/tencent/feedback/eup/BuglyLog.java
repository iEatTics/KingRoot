package com.tencent.feedback.eup;

import android.util.Log;
import com.tencent.feedback.common.C4075f;
/* loaded from: classes.dex */
public class BuglyLog {
    /* renamed from: v */
    public static void m956v(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C4075f.f4472a) {
            Log.v(str, str2);
        }
        C4075f.m999b("V", str, str2);
    }

    /* renamed from: d */
    public static void m960d(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C4075f.f4472a) {
            Log.d(str, str2);
        }
        C4075f.m999b("D", str, str2);
    }

    /* renamed from: i */
    public static void m957i(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C4075f.f4472a) {
            Log.i(str, str2);
        }
        C4075f.m999b("I", str, str2);
    }

    /* renamed from: w */
    public static void m955w(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C4075f.f4472a) {
            Log.w(str, str2);
        }
        C4075f.m999b("W", str, str2);
    }

    /* renamed from: e */
    public static void m959e(String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C4075f.f4472a) {
            Log.e(str, str2);
        }
        C4075f.m999b("E", str, str2);
    }

    /* renamed from: e */
    public static void m958e(String str, String str2, Throwable th) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "null";
        }
        if (C4075f.f4472a) {
            Log.e(str, str2, th);
        }
        C4075f.m1002a("E", str, th);
    }

    public static void setCache(int i) {
        C4075f.m1006a(i);
    }
}
