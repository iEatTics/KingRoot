package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.v */
/* loaded from: classes.dex */
public final class C0427v extends AbstractC0404cS {

    /* renamed from: bt */
    public int f413bt = 0;

    /* renamed from: bu */
    public int f414bu = 0;

    /* renamed from: bv */
    public int f415bv = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f413bt, 1);
        c3324mr.m2983e(this.f414bu, 2);
        c3324mr.m2983e(this.f415bv, 3);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f413bt = c3322mq.m3032a(this.f413bt, 1, true);
        this.f414bu = c3322mq.m3032a(this.f414bu, 2, true);
        this.f415bv = c3322mq.m3032a(this.f415bv, 3, true);
    }
}
