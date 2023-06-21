package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.o */
/* loaded from: classes.dex */
public final class C0420o extends AbstractC0404cS {
    public String url = "";

    /* renamed from: be */
    public int f394be = 0;

    /* renamed from: bf */
    public String f395bf = "";

    /* renamed from: bg */
    public String f396bg = "";

    /* renamed from: bh */
    public String f397bh = "";

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        if (this.url != null) {
            c3324mr.m2981f(this.url, 0);
        }
        c3324mr.m2983e(this.f394be, 1);
        if (this.f395bf != null) {
            c3324mr.m2981f(this.f395bf, 2);
        }
        if (this.f396bg != null) {
            c3324mr.m2981f(this.f396bg, 3);
        }
        if (this.f397bh != null) {
            c3324mr.m2981f(this.f397bh, 4);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.url = c3322mq.m3013b(0, false);
        this.f394be = c3322mq.m3032a(this.f394be, 1, false);
        this.f395bf = c3322mq.m3013b(2, false);
        this.f396bg = c3322mq.m3013b(3, false);
        this.f397bh = c3322mq.m3013b(4, false);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
