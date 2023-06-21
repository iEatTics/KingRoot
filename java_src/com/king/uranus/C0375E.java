package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.E */
/* loaded from: classes.dex */
public final class C0375E extends AbstractC0404cS implements Cloneable {

    /* renamed from: cj */
    public String f181cj = "";

    /* renamed from: ck */
    public String f182ck = "";
    public int type = 0;

    /* renamed from: cl */
    public int f183cl = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2981f(this.f181cj, 0);
        c3324mr.m2981f(this.f182ck, 1);
        c3324mr.m2983e(this.type, 2);
        c3324mr.m2983e(this.f183cl, 3);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f181cj = c3322mq.m3013b(0, true);
        this.f182ck = c3322mq.m3013b(1, true);
        this.type = c3322mq.m3032a(this.type, 2, true);
        this.f183cl = c3322mq.m3032a(this.f183cl, 3, true);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
