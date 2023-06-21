package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.D */
/* loaded from: classes.dex */
public final class C0374D extends AbstractC0404cS implements Cloneable {

    /* renamed from: aJ */
    public int f177aJ = 0;

    /* renamed from: cg */
    public boolean f178cg = true;

    /* renamed from: ch */
    public int f179ch = 0;

    /* renamed from: ci */
    public int f180ci = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f177aJ, 0);
        c3324mr.m2995a(this.f178cg, 1);
        if (this.f179ch != 0) {
            c3324mr.m2983e(this.f179ch, 2);
        }
        if (this.f180ci != 0) {
            c3324mr.m2983e(this.f180ci, 3);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f177aJ = c3322mq.m3032a(this.f177aJ, 0, true);
        this.f178cg = c3322mq.m3024a(this.f178cg, 1, true);
        this.f179ch = c3322mq.m3032a(this.f179ch, 2, false);
        this.f180ci = c3322mq.m3032a(this.f180ci, 3, false);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
