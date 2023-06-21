package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.u */
/* loaded from: classes.dex */
public final class C0426u extends AbstractC0404cS {

    /* renamed from: bq */
    public int f410bq = 0;

    /* renamed from: br */
    public int f411br = 0;

    /* renamed from: bs */
    public int f412bs = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        if (this.f410bq != 0) {
            c3324mr.m2983e(this.f410bq, 0);
        }
        if (this.f411br != 0) {
            c3324mr.m2983e(this.f411br, 1);
        }
        if (this.f412bs != 0) {
            c3324mr.m2983e(this.f412bs, 2);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f410bq = c3322mq.m3032a(this.f410bq, 0, false);
        this.f411br = c3322mq.m3032a(this.f411br, 1, false);
        this.f412bs = c3322mq.m3032a(this.f412bs, 2, false);
    }
}
