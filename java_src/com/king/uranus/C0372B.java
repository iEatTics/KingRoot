package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
/* renamed from: com.king.uranus.B */
/* loaded from: classes.dex */
public final class C0372B extends AbstractC0404cS implements Cloneable {

    /* renamed from: qF */
    static byte[] f160qF;

    /* renamed from: qG */
    static byte[] f161qG;

    /* renamed from: qH */
    static byte[] f162qH;

    /* renamed from: am */
    public int f163am = 0;

    /* renamed from: an */
    public byte[] f164an = null;

    /* renamed from: ao */
    public int f165ao = 0;
    public String url = "";

    /* renamed from: bV */
    public boolean f166bV = false;

    /* renamed from: bW */
    public byte[] f167bW = null;

    /* renamed from: bX */
    public byte[] f168bX = null;

    /* renamed from: bY */
    public int f169bY = 0;

    /* renamed from: bZ */
    public int f170bZ = 0;

    /* renamed from: a */
    public int m13697a() {
        return this.f163am;
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f163am, 0);
        c3324mr.m2994a(this.f164an, 1);
        c3324mr.m2983e(this.f165ao, 2);
        if (this.url != null) {
            c3324mr.m2981f(this.url, 3);
        }
        if (this.f166bV) {
            c3324mr.m2995a(this.f166bV, 4);
        }
        if (this.f167bW != null) {
            c3324mr.m2994a(this.f167bW, 5);
        }
        if (this.f168bX != null) {
            c3324mr.m2994a(this.f168bX, 6);
        }
        if (this.f169bY != 0) {
            c3324mr.m2983e(this.f169bY, 7);
        }
        if (this.f170bZ != 0) {
            c3324mr.m2983e(this.f170bZ, 8);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f163am = c3322mq.m3032a(this.f163am, 0, true);
        if (f160qF == null) {
            f160qF = new byte[1];
            f160qF[0] = 0;
        }
        this.f164an = c3322mq.m3023a(f160qF, 1, true);
        this.f165ao = c3322mq.m3032a(this.f165ao, 2, true);
        this.url = c3322mq.m3013b(3, false);
        this.f166bV = c3322mq.m3024a(this.f166bV, 4, false);
        if (f161qG == null) {
            f161qG = new byte[1];
            f161qG[0] = 0;
        }
        this.f167bW = c3322mq.m3023a(f161qG, 5, false);
        if (f162qH == null) {
            f162qH = new byte[1];
            f162qH[0] = 0;
        }
        this.f168bX = c3322mq.m3023a(f162qH, 6, false);
        this.f169bY = c3322mq.m3032a(this.f169bY, 7, false);
        this.f170bZ = c3322mq.m3032a(this.f170bZ, 8, false);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
