package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.j */
/* loaded from: classes.dex */
public final class C0415j extends AbstractC0404cS {

    /* renamed from: xO */
    static ArrayList<C0413h> f364xO;

    /* renamed from: f */
    public String f370f = "";
    public int action = 0;

    /* renamed from: ax */
    public int f369ax = 0;

    /* renamed from: aG */
    public ArrayList<C0413h> f365aG = null;

    /* renamed from: aH */
    public int f366aH = 0;

    /* renamed from: aI */
    public int f367aI = 0;

    /* renamed from: aJ */
    public int f368aJ = 0;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2981f(this.f370f, 1);
        c3324mr.m2983e(this.action, 2);
        c3324mr.m2983e(this.f369ax, 3);
        c3324mr.m2998a((Collection) this.f365aG, 4);
        if (this.f366aH != 0) {
            c3324mr.m2983e(this.f366aH, 5);
        }
        if (this.f367aI != 0) {
            c3324mr.m2983e(this.f367aI, 6);
        }
        if (this.f368aJ != 0) {
            c3324mr.m2983e(this.f368aJ, 7);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f370f = c3322mq.m3013b(1, true);
        this.action = c3322mq.m3032a(this.action, 2, true);
        this.f369ax = c3322mq.m3032a(this.f369ax, 3, true);
        if (f364xO == null) {
            f364xO = new ArrayList<>();
            f364xO.add(new C0413h());
        }
        this.f365aG = (ArrayList) c3322mq.m3008d(f364xO, 4, true);
        this.f366aH = c3322mq.m3032a(this.f366aH, 5, false);
        this.f367aI = c3322mq.m3032a(this.f367aI, 6, false);
        this.f368aJ = c3322mq.m3032a(this.f368aJ, 7, false);
    }
}
