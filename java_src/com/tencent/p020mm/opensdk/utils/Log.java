package com.tencent.p020mm.opensdk.utils;
/* renamed from: com.tencent.mm.opensdk.utils.Log */
/* loaded from: classes.dex */
public class Log {
    private static ILog logImpl;

    /* renamed from: d */
    public static void m496d(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.d(str, str2);
        } else {
            logImpl.m501d(str, str2);
        }
    }

    /* renamed from: e */
    public static void m495e(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.e(str, str2);
        } else {
            logImpl.m500e(str, str2);
        }
    }

    /* renamed from: i */
    public static void m494i(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.i(str, str2);
        } else {
            logImpl.m499i(str, str2);
        }
    }

    public static void setLogImpl(ILog iLog) {
        logImpl = iLog;
    }

    /* renamed from: v */
    public static void m493v(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.v(str, str2);
        } else {
            logImpl.m498v(str, str2);
        }
    }

    /* renamed from: w */
    public static void m492w(String str, String str2) {
        if (logImpl == null) {
            android.util.Log.w(str, str2);
        } else {
            logImpl.m497w(str, str2);
        }
    }
}
