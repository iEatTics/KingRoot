package com.swift.sandhook;

import com.applisto.appcloner.classes.util.Log;
/* loaded from: classes2.dex */
public class HookLog {
    public static boolean DEBUG = SandHookConfig.DEBUG;
    public static final String TAG = "SandHook";

    /* renamed from: v */
    public static int m1149v(String str) {
        return Log.m13702v(TAG, str);
    }

    /* renamed from: i */
    public static int m1150i(String str) {
        return Log.m13704i(TAG, str);
    }

    /* renamed from: d */
    public static int m1153d(String str) {
        return Log.m13708d(TAG, str);
    }

    /* renamed from: w */
    public static int m1148w(String str) {
        return Log.m13700w(TAG, str);
    }

    /* renamed from: e */
    public static int m1152e(String str) {
        return Log.m13706e(TAG, str);
    }

    /* renamed from: e */
    public static int m1151e(String str, Throwable th) {
        return Log.m13705e(TAG, str, th);
    }
}
