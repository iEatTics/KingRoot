package com.kingroot.kinguser;

import com.kingroot.kinguser.bpw;
/* loaded from: classes.dex */
public abstract class bqb {

    /* renamed from: a */
    private volatile int f2010a;

    /* renamed from: b */
    private volatile boolean f2011b;
    private bqa bIj;

    /* renamed from: a */
    protected abstract void mo5832a(int i, Thread thread, long j, String str, String str2, Throwable th);

    public bqb() {
        this(bpv.f1985a, true, bqa.bIi);
    }

    public bqb(int i, boolean z, bqa bqaVar) {
        this.f2010a = bpv.f1985a;
        this.f2011b = true;
        this.bIj = bqa.bIi;
        m5833a(i);
        m5830a(z);
        m5831a(bqaVar);
    }

    /* renamed from: c */
    public void m5829c(int i, Thread thread, long j, String str, String str2, Throwable th) {
        if (m5828d() && bpw.C2561a.m5858a(this.f2010a, i)) {
            mo5832a(i, thread, j, str, str2, th);
        }
    }

    /* renamed from: a */
    public void m5833a(int i) {
        this.f2010a = i;
    }

    /* renamed from: d */
    public boolean m5828d() {
        return this.f2011b;
    }

    /* renamed from: a */
    public void m5830a(boolean z) {
        this.f2011b = z;
    }

    public bqa ahk() {
        return this.bIj;
    }

    /* renamed from: a */
    public void m5831a(bqa bqaVar) {
        this.bIj = bqaVar;
    }
}
