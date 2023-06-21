package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.mu */
/* loaded from: classes.dex */
class C3327mu {

    /* renamed from: hg */
    public int f3152hg;

    /* renamed from: hh */
    public int f3153hh = 1;

    /* renamed from: wl */
    public int f3154wl;

    /* renamed from: wm */
    public int f3155wm;

    /* renamed from: wn */
    public int f3156wn;

    /* renamed from: wo */
    public int f3157wo;

    /* renamed from: wp */
    public int f3158wp;

    /* renamed from: wq */
    public int f3159wq;

    /* renamed from: wr */
    public int f3160wr;

    /* renamed from: ws */
    public long f3161ws;

    /* renamed from: bz */
    public static C3327mu m2979bz(String str) {
        if (str == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("\\|");
        if (split.length >= 9) {
            C3327mu c3327mu = new C3327mu();
            try {
                c3327mu.f3154wl = Integer.parseInt(split[0]);
                c3327mu.f3155wm = Integer.parseInt(split[1]);
                c3327mu.f3156wn = Integer.parseInt(split[2]);
                c3327mu.f3157wo = Integer.parseInt(split[3]);
                c3327mu.f3158wp = Integer.parseInt(split[4]);
                c3327mu.f3159wq = Integer.parseInt(split[5]);
                c3327mu.f3160wr = Integer.parseInt(split[6]);
                c3327mu.f3152hg = Integer.parseInt(split[7]);
                c3327mu.f3153hh = Integer.parseInt(split[8]);
                c3327mu.f3161ws = Long.parseLong(split[9]);
                return c3327mu;
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return null;
    }

    public String toString() {
        return String.format(Locale.ENGLISH, "%d|%d|%d|%d|%d|%d|%d|%d|%d|%d", Integer.valueOf(this.f3154wl), Integer.valueOf(this.f3155wm), Integer.valueOf(this.f3156wn), Integer.valueOf(this.f3157wo), Integer.valueOf(this.f3158wp), Integer.valueOf(this.f3159wq), Integer.valueOf(this.f3160wr), Integer.valueOf(this.f3152hg), Integer.valueOf(this.f3153hh), Long.valueOf(this.f3161ws));
    }
}
