package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.b */
/* loaded from: classes.dex */
public final class C0391b extends AbstractC0404cS {

    /* renamed from: tT */
    static C0376F f229tT;

    /* renamed from: c */
    public C0376F f230c = null;

    /* renamed from: d */
    public int f231d = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        if (this.f230c != null) {
            c3324mr.m3000a((AbstractC0404cS) this.f230c, 0);
        }
        c3324mr.m2983e(this.f231d, 1);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        if (f229tT == null) {
            f229tT = new C0376F();
        }
        this.f230c = (C0376F) c3322mq.m3030a((AbstractC0404cS) f229tT, 0, false);
        this.f231d = c3322mq.m3032a(this.f231d, 1, false);
    }
}
