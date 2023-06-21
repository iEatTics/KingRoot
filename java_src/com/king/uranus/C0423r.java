package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.r */
/* loaded from: classes.dex */
public final class C0423r extends AbstractC0404cS {

    /* renamed from: tT */
    static C0376F f402tT;

    /* renamed from: bl */
    public String f403bl = "";

    /* renamed from: c */
    public C0376F f404c = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2981f(this.f403bl, 0);
        if (this.f404c != null) {
            c3324mr.m3000a((AbstractC0404cS) this.f404c, 1);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f403bl = c3322mq.m3013b(0, true);
        if (f402tT == null) {
            f402tT = new C0376F();
        }
        this.f404c = (C0376F) c3322mq.m3030a((AbstractC0404cS) f402tT, 1, false);
    }
}
