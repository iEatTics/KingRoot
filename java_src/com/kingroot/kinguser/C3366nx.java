package com.kingroot.kinguser;

import android.os.Bundle;
/* renamed from: com.kingroot.kinguser.nx */
/* loaded from: classes.dex */
public class C3366nx {

    /* renamed from: rP */
    private final String f3208rP;

    /* renamed from: vp */
    private final String f3209vp;

    /* renamed from: xA */
    private final String f3210xA;

    /* renamed from: xB */
    private final String f3211xB;

    /* renamed from: xC */
    private final boolean f3212xC;

    /* renamed from: xD */
    private final int f3213xD;

    /* renamed from: xE */
    private final int f3214xE;

    /* renamed from: xF */
    private final String f3215xF;

    /* renamed from: xG */
    private final String f3216xG;

    /* renamed from: xH */
    private final String f3217xH;

    /* renamed from: xu */
    private final String f3218xu;

    /* renamed from: xv */
    private final String f3219xv;

    /* renamed from: xw */
    private final String f3220xw;

    /* renamed from: xx */
    private final String f3221xx;

    /* renamed from: xy */
    private final String f3222xy;

    /* renamed from: xz */
    private final String f3223xz;

    private C3366nx(C3367a c3367a) {
        this.f3218xu = "p1";
        this.f3219xv = "p2";
        this.f3220xw = "p3";
        this.f3221xx = "p4";
        this.f3222xy = "p5";
        this.f3223xz = "p6";
        this.f3210xA = "p7";
        this.f3211xB = "p8";
        this.f3212xC = c3367a.f3226xC;
        this.f3213xD = c3367a.f3227xD;
        this.f3214xE = c3367a.f3228xE;
        this.f3215xF = c3367a.f3229xF;
        this.f3216xG = c3367a.f3230xG;
        this.f3217xH = c3367a.f3231xH;
        this.f3208rP = c3367a.f3224rP;
        this.f3209vp = c3367a.f3225vp;
    }

    /* renamed from: fo */
    public Bundle m2799fo() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("p1", this.f3212xC);
        bundle.putInt("p2", this.f3213xD);
        bundle.putInt("p3", this.f3214xE);
        bundle.putString("p4", this.f3215xF);
        bundle.putString("p5", this.f3216xG);
        bundle.putString("p6", this.f3217xH);
        bundle.putString("p7", this.f3209vp);
        bundle.putString("p8", this.f3208rP);
        return bundle;
    }

    public String toString() {
        return "env:" + this.f3212xC + " , mEPProductId:" + this.f3213xD + " , mBuildNumber:" + this.f3214xE + " , mVersionName:" + this.f3215xF + " , mChannelNumber:" + this.f3216xG + " , mLc:" + this.f3217xH + " , mWritableDir:" + this.f3209vp + " , mImei:" + this.f3208rP;
    }

    /* renamed from: fp */
    public static C3367a m2798fp() {
        return new C3367a();
    }

    /* renamed from: com.kingroot.kinguser.nx$a */
    /* loaded from: classes.dex */
    public static class C3367a {

        /* renamed from: rP */
        private String f3224rP;

        /* renamed from: vp */
        private String f3225vp;

        /* renamed from: xC */
        private boolean f3226xC;

        /* renamed from: xD */
        private int f3227xD;

        /* renamed from: xE */
        private int f3228xE;

        /* renamed from: xF */
        private String f3229xF;

        /* renamed from: xG */
        private String f3230xG;

        /* renamed from: xH */
        private String f3231xH;

        private C3367a() {
            this.f3226xC = false;
            this.f3227xD = 44;
            this.f3229xF = "0.0.0";
            this.f3230xG = "0";
            this.f3231xH = "0";
            this.f3225vp = "/data";
        }

        /* renamed from: o */
        public C3367a m2781o(boolean z) {
            this.f3226xC = z;
            return this;
        }

        /* renamed from: av */
        public C3367a m2796av(int i) {
            this.f3227xD = i;
            return this;
        }

        /* renamed from: aw */
        public C3367a m2795aw(int i) {
            this.f3228xE = i;
            return this;
        }

        /* renamed from: bR */
        public C3367a m2793bR(String str) {
            this.f3229xF = str;
            return this;
        }

        /* renamed from: bS */
        public C3367a m2792bS(String str) {
            this.f3230xG = str;
            return this;
        }

        /* renamed from: bT */
        public C3367a m2791bT(String str) {
            this.f3231xH = str;
            return this;
        }

        /* renamed from: bU */
        public C3367a m2790bU(String str) {
            this.f3224rP = str;
            return this;
        }

        /* renamed from: bV */
        public C3367a m2789bV(String str) {
            this.f3225vp = str;
            return this;
        }

        /* renamed from: fq */
        public C3366nx m2784fq() {
            return new C3366nx(this);
        }
    }
}
