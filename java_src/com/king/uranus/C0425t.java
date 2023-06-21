package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.t */
/* loaded from: classes.dex */
public final class C0425t extends AbstractC0404cS {

    /* renamed from: bp */
    public int f408bp = 0;

    /* renamed from: s */
    public int f409s = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f408bp, 0);
        if (this.f409s != 0) {
            c3324mr.m2983e(this.f409s, 1);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f408bp = c3322mq.m3032a(this.f408bp, 0, true);
        this.f409s = c3322mq.m3032a(this.f409s, 1, false);
    }
}
