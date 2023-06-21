package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.k */
/* loaded from: classes.dex */
public final class C0416k extends AbstractC0404cS {

    /* renamed from: xP */
    static ArrayList<C0415j> f371xP;

    /* renamed from: aL */
    public ArrayList<C0415j> f372aL = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2998a((Collection) this.f372aL, 1);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        if (f371xP == null) {
            f371xP = new ArrayList<>();
            f371xP.add(new C0415j());
        }
        this.f372aL = (ArrayList) c3322mq.m3008d(f371xP, 1, true);
    }
}
