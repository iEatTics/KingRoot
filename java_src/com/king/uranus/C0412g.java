package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.g */
/* loaded from: classes.dex */
public final class C0412g extends AbstractC0404cS {

    /* renamed from: xJ */
    static byte[] f350xJ;

    /* renamed from: at */
    public int f351at = 0;

    /* renamed from: au */
    public byte[] f352au = null;

    /* renamed from: av */
    public int f353av = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f351at, 0);
        c3324mr.m2994a(this.f352au, 1);
        c3324mr.m2983e(this.f353av, 2);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f351at = c3322mq.m3032a(this.f351at, 0, true);
        if (f350xJ == null) {
            f350xJ = new byte[1];
            f350xJ[0] = 0;
        }
        this.f352au = c3322mq.m3023a(f350xJ, 1, true);
        this.f353av = c3322mq.m3032a(this.f353av, 2, true);
    }
}
