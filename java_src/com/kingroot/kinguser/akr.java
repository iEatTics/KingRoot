package com.kingroot.kinguser;

import android.content.SharedPreferences;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class akr {
    private static volatile akr avE;
    private SharedPreferences avA = C3566rv.m2313i(KUApplication.m13453ge(), "ku_cc");
    private ako avB = new ako(this.avA.edit());

    private akr() {
    }

    /* renamed from: BL */
    public static akr m11154BL() {
        if (avE == null) {
            synchronized (akr.class) {
                if (avE == null) {
                    avE = new akr();
                }
            }
        }
        return avE;
    }

    /* renamed from: BM */
    public boolean m11153BM() {
        return this.avA.getBoolean("VER:4xx_20170213_12:13:59.890", true);
    }

    /* renamed from: aV */
    public void m11150aV(boolean z) {
        this.avB.putBoolean("VER:4xx_20170213_12:13:59.890", z).commit();
    }

    /* renamed from: BN */
    public boolean m11152BN() {
        return this.avA.getBoolean("VER:4xx_20170213_12:14:56.063", true);
    }

    /* renamed from: aW */
    public void m11149aW(boolean z) {
        this.avB.putBoolean("VER:4xx_20170213_12:14:56.063", z).commit();
    }

    /* renamed from: aX */
    public void m11148aX(boolean z) {
        this.avB.putBoolean("VER:4xx_20170213_12:15:15.644", z).commit();
    }

    /* renamed from: aY */
    public void m11147aY(boolean z) {
        this.avB.putBoolean("VER:4xx_20170213_12:15:31.017", z).commit();
    }

    /* renamed from: aZ */
    public void m11146aZ(boolean z) {
        this.avB.putBoolean("VER:4xx_20170213_12:16:54.773", z).commit();
    }

    /* renamed from: ba */
    public void m11145ba(boolean z) {
        this.avB.putBoolean("VER:4xx_20170213_12:17:16.464", z).commit();
    }

    /* renamed from: BO */
    public boolean m11151BO() {
        return this.avA.getBoolean("VER:505_20170213_12:17:29.129", true);
    }

    /* renamed from: bb */
    public void m11144bb(boolean z) {
        this.avB.putBoolean("VER:505_20170213_12:17:29.129", z).commit();
    }
}
