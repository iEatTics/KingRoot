package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.s */
/* loaded from: classes.dex */
public final class C0424s extends AbstractC0404cS {

    /* renamed from: bm */
    public int f405bm = 0;

    /* renamed from: bn */
    public int f406bn = 0;

    /* renamed from: bo */
    public String f407bo = "";

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f405bm, 0);
        if (this.f406bn != 0) {
            c3324mr.m2983e(this.f406bn, 1);
        }
        if (this.f407bo != null) {
            c3324mr.m2981f(this.f407bo, 2);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f405bm = c3322mq.m3032a(this.f405bm, 0, true);
        this.f406bn = c3322mq.m3032a(this.f406bn, 1, false);
        this.f407bo = c3322mq.m3013b(2, false);
    }
}
