package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.os.Environment;
import android.p003os.Environmenu;
import android.text.TextUtils;
/* loaded from: classes.dex */
public final class bnz {

    /* renamed from: a */
    public static String f1791a = "";

    /* renamed from: b */
    public static String f1792b = "";

    /* renamed from: c */
    public static String f1793c = "";

    /* renamed from: d */
    public static int f1794d = 5;

    /* renamed from: g */
    private static String f1797g = ".temp";

    /* renamed from: e */
    public static boolean f1795e = true;

    /* renamed from: h */
    private static volatile int f1798h = 500;

    /* renamed from: f */
    public static int f1796f = 50;

    /* renamed from: i */
    private static int f1799i = 6000;

    /* renamed from: a */
    public static int m6133a() {
        boe.m6088f();
        return 20000;
    }

    /* renamed from: b */
    public static int m6132b() {
        boe.m6088f();
        return 20000;
    }

    /* renamed from: c */
    public static int m6131c() {
        switch (boe.m6088f()) {
            case 1:
            case 2:
            default:
                return 1048576;
            case 3:
                return 524288;
        }
    }

    /* renamed from: d */
    public static int m6130d() {
        return 524288;
    }

    /* renamed from: e */
    public static String m6129e() {
        StringBuilder sb = new StringBuilder();
        String str = Environmenu.MEDIA_MOUNTED.equals(Environment.getExternalStorageState()) ? Environment.getExternalStorageDirectory().getAbsolutePath() + "/Download/" + bok.m6064d() + "/HalleyDownload" : "";
        if (TextUtils.isEmpty(str)) {
            str = boi.agA().getFilesDir().toString();
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: f */
    public static int m6128f() {
        return f1798h;
    }

    /* renamed from: g */
    public static int m6127g() {
        return 60000;
    }

    /* renamed from: h */
    public static int m6126h() {
        return 20000;
    }

    /* renamed from: i */
    public static int m6125i() {
        return XCallback.PRIORITY_HIGHEST;
    }

    /* renamed from: j */
    public static int m6124j() {
        return f1799i;
    }

    /* renamed from: mK */
    public static String m6123mK(String str) {
        return str + ".bdcfg";
    }

    /* renamed from: mL */
    public static boolean m6122mL(String str) {
        return !bok.m6069a(str);
    }

    /* renamed from: mf */
    public static String m6121mf(String str) {
        return str + f1797g;
    }
}
