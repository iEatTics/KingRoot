package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bno {

    /* renamed from: a */
    private String f1767a;

    /* renamed from: b */
    private String f1768b;

    /* renamed from: c */
    private String f1769c;

    /* renamed from: d */
    private int f1770d = 1;

    /* renamed from: e */
    private long f1771e = -1;

    public bno(String str) {
        this.f1767a = str;
    }

    public boolean agl() {
        return this.f1768b != null && System.currentTimeMillis() < this.f1771e;
    }

    public String agm() {
        return this.f1767a;
    }

    public String agn() {
        return this.f1768b;
    }

    /* renamed from: aS */
    public void m6202aS(String str, String str2) {
        this.f1768b = str;
        this.f1771e = 0L;
        if (str2 != null) {
            this.f1771e = System.currentTimeMillis() + (Long.parseLong(str2) * 1000);
        }
    }

    public String ago() {
        return this.f1769c;
    }

    /* renamed from: mH */
    public void m6201mH(String str) {
        this.f1769c = str;
    }
}
