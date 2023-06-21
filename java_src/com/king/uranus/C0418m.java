package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.m */
/* loaded from: classes.dex */
public final class C0418m extends AbstractC0404cS {

    /* renamed from: xQ */
    static ArrayList<C0417l> f381xQ;

    /* renamed from: aV */
    public ArrayList<C0417l> f382aV = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2998a((Collection) this.f382aV, 0);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        if (f381xQ == null) {
            f381xQ = new ArrayList<>();
            f381xQ.add(new C0417l());
        }
        this.f382aV = (ArrayList) c3322mq.m3008d(f381xQ, 0, true);
    }
}
