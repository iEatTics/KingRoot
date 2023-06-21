package com.kingroot.kinguser;

import android.content.SharedPreferences;
import com.tencent.tps.client.AbsTPSClientBase;
/* renamed from: com.kingroot.kinguser.gi */
/* loaded from: classes.dex */
public final class C3123gi {

    /* renamed from: qt */
    private static final String[] f2711qt = {"398910"};

    /* renamed from: qu */
    private static SharedPreferences f2712qu = null;

    /* renamed from: ae */
    public static void m3709ae() {
        f2712qu = AbsTPSClientBase.getContext().getSharedPreferences("spm", 0);
    }

    /* renamed from: i */
    public static void m3707i(String str) {
        f2712qu.edit().putInt(str, m3708ai(str) + 1).apply();
    }

    /* renamed from: ai */
    public static int m3708ai(String str) {
        return f2712qu.getInt(str, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m3712a(long j) {
        f2712qu.edit().putLong("last_daily_report_time", j).apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: aA */
    public static long m3711aA() {
        long currentTimeMillis = System.currentTimeMillis();
        long random = currentTimeMillis - ((long) (Math.random() * 5.76E7d));
        long j = f2712qu.getLong("last_daily_report_time", random);
        if (Math.abs(currentTimeMillis - j) >= 57600000) {
            m3710aB();
        }
        if (!f2712qu.contains("last_daily_report_time")) {
            m3712a(random);
        }
        return j;
    }

    /* renamed from: aB */
    private static void m3710aB() {
        for (String str : f2711qt) {
            f2712qu.edit().putInt(str, 0).apply();
        }
    }
}
