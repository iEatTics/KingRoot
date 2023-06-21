package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.f */
/* loaded from: classes.dex */
public final class C0411f extends AbstractC0404cS implements Cloneable {

    /* renamed from: qF */
    static byte[] f343qF;

    /* renamed from: am */
    public int f344am = 0;

    /* renamed from: an */
    public byte[] f345an = null;

    /* renamed from: ao */
    public int f346ao = 0;

    /* renamed from: ap */
    public int f347ap = 0;

    /* renamed from: aq */
    public int f348aq = 0;

    /* renamed from: ar */
    public int f349ar = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f344am, 0);
        c3324mr.m2994a(this.f345an, 1);
        c3324mr.m2983e(this.f346ao, 2);
        if (this.f347ap != 0) {
            c3324mr.m2983e(this.f347ap, 3);
        }
        if (this.f348aq != 0) {
            c3324mr.m2983e(this.f348aq, 4);
        }
        if (this.f349ar != 0) {
            c3324mr.m2983e(this.f349ar, 5);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f344am = c3322mq.m3032a(this.f344am, 0, true);
        if (f343qF == null) {
            f343qF = new byte[1];
            f343qF[0] = 0;
        }
        this.f345an = c3322mq.m3023a(f343qF, 1, true);
        this.f346ao = c3322mq.m3032a(this.f346ao, 2, true);
        this.f347ap = c3322mq.m3032a(this.f347ap, 3, false);
        this.f348aq = c3322mq.m3032a(this.f348aq, 4, false);
        this.f349ar = c3322mq.m3032a(this.f349ar, 5, false);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
