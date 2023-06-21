package com.kingroot.kinguser;

import android.util.Log;
/* loaded from: classes.dex */
public final class cdo {

    /* renamed from: a */
    private static boolean f2288a = false;
    private static cdn bXD = new cdr();

    /* renamed from: a */
    public static void m4818a(String str, Object obj) {
        if (obj == null) {
            Log.e(str, "log message is null");
        } else if (obj instanceof Exception) {
            ((Exception) obj).printStackTrace();
        } else {
            bXD.mo4812aP(str, obj.toString());
        }
    }

    /* renamed from: a */
    public static void m4817a(boolean z) {
        f2288a = z;
        if (f2288a) {
            bXD = new cdq();
        } else {
            bXD = new cdr();
        }
    }

    /* renamed from: d */
    public static void m4816d(String str, Object obj) {
        if (obj == null) {
            Log.e(str, "log message is null");
        } else {
            bXD.mo4813a(str, obj.toString());
        }
    }

    /* renamed from: f */
    public static void m4815f(String str, Object obj) {
        if (obj == null) {
            Log.e(str, "log message is null");
        } else if (obj instanceof Exception) {
            ((Exception) obj).printStackTrace();
        } else {
            bXD.mo4811aT(str, obj.toString());
        }
    }
}
