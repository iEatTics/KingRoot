package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.p */
/* loaded from: classes.dex */
public final class C0421p extends AbstractC0404cS {

    /* renamed from: bi */
    public String f398bi = "";

    /* renamed from: bj */
    public int f399bj = 1;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2981f(this.f398bi, 0);
        if (this.f399bj != 1) {
            c3324mr.m2983e(this.f399bj, 1);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f398bi = c3322mq.m3013b(0, true);
        this.f399bj = c3322mq.m3032a(this.f399bj, 1, false);
    }
}
