package com.kingroot.kinguser;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.gh */
/* loaded from: classes.dex */
public class RunnableC3122gh implements Runnable {

    /* renamed from: qs */
    final /* synthetic */ C3121gg f2710qs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3122gh(C3121gg c3121gg) {
        this.f2710qs = c3121gg;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable;
        boolean m3722av;
        Runnable runnable2;
        try {
            m3722av = this.f2710qs.m3722av();
            if (m3722av) {
                this.f2710qs.m3721aw();
            }
            this.f2710qs.m3719ay();
            this.f2710qs.m3718az();
            C3074fz m3793ak = C3074fz.m3793ak();
            runnable2 = this.f2710qs.f2709qr;
            m3793ak.m3788b(runnable2, 3600000L);
        } catch (Throwable th) {
            C3074fz m3793ak2 = C3074fz.m3793ak();
            runnable = this.f2710qs.f2709qr;
            m3793ak2.m3788b(runnable, 3600000L);
        }
    }
}
