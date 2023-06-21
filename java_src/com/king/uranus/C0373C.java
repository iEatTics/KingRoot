package com.king.uranus;

import com.kingroot.kinguser.C3321mp;
import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.C */
/* loaded from: classes.dex */
public final class C0373C extends AbstractC0404cS implements Cloneable {

    /* renamed from: cc */
    public int f172cc = 2;

    /* renamed from: cd */
    public int f173cd = 0;

    /* renamed from: bk */
    public String f171bk = "";

    /* renamed from: ce */
    public String f174ce = "";

    /* renamed from: cf */
    public String f175cf = "";

    /* renamed from: p */
    public int f176p = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
        C3321mp c3321mp = new C3321mp(sb, i);
        c3321mp.m3038i(this.f172cc, "phonetype");
        c3321mp.m3038i(this.f173cd, "authType");
        c3321mp.m3037q(this.f171bk, "guid");
        c3321mp.m3037q(this.f174ce, "ext1");
        c3321mp.m3037q(this.f175cf, "sessionId");
        c3321mp.m3038i(this.f176p, "buildno");
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f172cc, 0);
        c3324mr.m2983e(this.f173cd, 1);
        if (this.f171bk != null) {
            c3324mr.m2981f(this.f171bk, 2);
        }
        if (this.f174ce != null) {
            c3324mr.m2981f(this.f174ce, 3);
        }
        if (this.f175cf != null) {
            c3324mr.m2981f(this.f175cf, 4);
        }
        if (this.f176p != 0) {
            c3324mr.m2983e(this.f176p, 5);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f172cc = c3322mq.m3032a(this.f172cc, 0, true);
        this.f173cd = c3322mq.m3032a(this.f173cd, 1, true);
        this.f171bk = c3322mq.m3013b(2, false);
        this.f174ce = c3322mq.m3013b(3, false);
        this.f175cf = c3322mq.m3013b(4, false);
        this.f176p = c3322mq.m3032a(this.f176p, 5, false);
    }
}
