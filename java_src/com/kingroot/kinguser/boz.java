package com.kingroot.kinguser;

import com.kingroot.kinguser.boa;
/* loaded from: classes.dex */
public final class boz {

    /* renamed from: j */
    private static String f1860j = ",";

    /* renamed from: a */
    public boolean f1861a;

    /* renamed from: b */
    public int f1862b;
    public bpf bGi;

    /* renamed from: c */
    public int f1863c;

    /* renamed from: d */
    public volatile long f1864d;

    /* renamed from: e */
    public volatile long f1865e;

    /* renamed from: f */
    public volatile long f1866f;

    /* renamed from: g */
    public volatile long f1867g;

    /* renamed from: h */
    public volatile boolean f1868h;

    public boz(bpf bpfVar, long j, long j2, long j3, long j4) {
        this.f1861a = true;
        this.f1862b = -1;
        this.f1863c = -1;
        this.f1868h = false;
        this.bGi = bpfVar;
        this.f1864d = j;
        this.f1867g = j4;
        this.f1865e = j2;
        this.f1866f = Math.max(j2, j3);
    }

    public boz(bpf bpfVar, String str) {
        this.f1861a = true;
        this.f1862b = -1;
        this.f1863c = -1;
        this.f1868h = false;
        this.bGi = bpfVar;
        String[] split = str.split(f1860j);
        if (split == null || split.length != 5) {
            this.f1861a = false;
            return;
        }
        this.f1862b = Integer.valueOf(split[0]).intValue();
        this.f1863c = Integer.valueOf(split[1]).intValue();
        this.f1864d = Long.valueOf(split[2]).longValue();
        this.f1865e = Long.valueOf(split[3]).longValue();
        this.f1866f = this.f1865e;
        this.f1867g = Long.valueOf(split[4]).longValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
        if (r12 != false) goto L13;
     */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boa.C2538a m6009H(int i, boolean z) {
        long j = -1;
        long j2 = this.f1867g;
        if (i > 0) {
            if (this.f1867g == -1) {
                j = this.f1866f + i;
            } else if (i < this.f1867g - this.f1866f) {
                j = this.f1866f + i;
            }
            return new boa.C2538a(this.f1866f, j);
        }
        j = j2;
        return new boa.C2538a(this.f1866f, j);
    }

    /* renamed from: a */
    public final String m6008a() {
        return this.f1862b + f1860j + this.f1863c + f1860j + this.f1864d + f1860j + this.f1865e + f1860j + this.f1867g;
    }

    /* renamed from: cD */
    public final long m6007cD(long j) {
        return this.f1867g != -1 ? this.f1867g - this.f1866f : j - this.f1866f;
    }

    public final String toString() {
        return "[" + this.f1862b + f1860j + this.f1863c + f1860j + this.f1864d + f1860j + this.f1865e + f1860j + this.f1866f + f1860j + this.f1867g + "]";
    }
}
