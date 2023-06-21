package com.kingroot.kinguser;

import android.content.SharedPreferences;
/* renamed from: com.kingroot.kinguser.wb */
/* loaded from: classes.dex */
public class C3823wb {
    /* renamed from: na */
    private static SharedPreferences m1588na() {
        return C3566rv.m2313i(C3636tj.m2169ge(), "kingcommon_setting");
    }

    /* renamed from: Q */
    public static void m1594Q(long j) {
        m1588na().edit().putLong("S01", j).commit();
    }

    /* renamed from: nb */
    public static long m1587nb() {
        return m1588na().getLong("S01", -1L);
    }

    /* renamed from: nc */
    public static int m1586nc() {
        return m1588na().getInt("S03", 0);
    }

    /* renamed from: nd */
    public static boolean m1585nd() {
        return m1588na().getBoolean("S02", false);
    }

    /* renamed from: U */
    public static void m1591U(boolean z) {
        m1588na().edit().putBoolean("S02", z).commit();
    }

    /* renamed from: ne */
    public static boolean m1584ne() {
        return m1588na().getBoolean("S05", false);
    }

    /* renamed from: V */
    public static void m1590V(boolean z) {
        m1588na().edit().putBoolean("S05", z).commit();
    }

    /* renamed from: nf */
    public static long m1583nf() {
        return m1588na().getLong("S07", 0L);
    }

    /* renamed from: R */
    public static void m1593R(long j) {
        m1588na().edit().putLong("S07", j).commit();
    }

    /* renamed from: S */
    public static void m1592S(long j) {
        m1588na().edit().putLong("S04", j).commit();
    }

    /* renamed from: ng */
    public static boolean m1582ng() {
        return m1588na().getBoolean("S06", false);
    }

    /* renamed from: W */
    public static void m1589W(boolean z) {
        m1588na().edit().putBoolean("S06", z).commit();
    }
}
