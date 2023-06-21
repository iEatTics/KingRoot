package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.y */
/* loaded from: classes.dex */
public final class C0430y extends AbstractC0404cS {

    /* renamed from: bH */
    static ArrayList<Integer> f426bH;

    /* renamed from: xU */
    static C0426u f427xU;

    /* renamed from: id */
    public int f433id = 0;

    /* renamed from: aJ */
    public int f428aJ = 0;

    /* renamed from: bD */
    public String f429bD = "";

    /* renamed from: bE */
    public ArrayList<Integer> f430bE = null;

    /* renamed from: bF */
    public String f431bF = "";

    /* renamed from: bG */
    public C0426u f432bG = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2983e(this.f433id, 0);
        c3324mr.m2983e(this.f428aJ, 1);
        c3324mr.m2981f(this.f429bD, 2);
        if (this.f430bE != null) {
            c3324mr.m2998a((Collection) this.f430bE, 3);
        }
        if (this.f431bF != null) {
            c3324mr.m2981f(this.f431bF, 4);
        }
        if (this.f432bG != null) {
            c3324mr.m3000a((AbstractC0404cS) this.f432bG, 5);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f433id = c3322mq.m3032a(this.f433id, 0, true);
        this.f428aJ = c3322mq.m3032a(this.f428aJ, 1, true);
        this.f429bD = c3322mq.m3013b(2, true);
        if (f426bH == null) {
            f426bH = new ArrayList<>();
            f426bH.add(0);
        }
        this.f430bE = (ArrayList) c3322mq.m3008d(f426bH, 3, false);
        this.f431bF = c3322mq.m3013b(4, false);
        if (f427xU == null) {
            f427xU = new C0426u();
        }
        this.f432bG = (C0426u) c3322mq.m3030a((AbstractC0404cS) f427xU, 5, false);
    }
}
