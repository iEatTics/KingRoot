package com.kingroot.kinguser;

import android.content.Context;
import android.os.Environment;
/* loaded from: classes.dex */
public class cgl {
    public static String path = Environment.getExternalStorageDirectory().getPath() + "/userlog/qqpimsecure/";
    public static Context cep = null;

    /* renamed from: lc */
    static String f2318lc = "";
    static String ceq = "";
    static String version = "";
    private static cgk cer = null;

    /* renamed from: a */
    public static void m4335a(int i, Object... objArr) {
        if (cer != null) {
            cer.m4340a(i, objArr);
        }
    }

    /* renamed from: d */
    public static void m4332d(int i, Object... objArr) {
        if (cer != null) {
            cer.m4337d(i, objArr);
        }
    }

    /* renamed from: c */
    public static void m4333c(int i, Object... objArr) {
        if (cer != null) {
            cer.m4338c(i, objArr);
        }
    }

    /* renamed from: b */
    public static void m4334b(int i, Object... objArr) {
        if (cer != null) {
            cer.m4339b(i, objArr);
        }
    }

    /* renamed from: lu */
    public static boolean m4331lu(int i) {
        if (cer == null) {
            return false;
        }
        return cer.m4336lu(i);
    }
}
