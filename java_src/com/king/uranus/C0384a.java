package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.a */
/* loaded from: classes.dex */
public final class C0384a extends AbstractC0404cS {

    /* renamed from: b */
    static ArrayList<C0414i> f216b;

    /* renamed from: a */
    public ArrayList<C0414i> f217a = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2998a((Collection) this.f217a, 1);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        if (f216b == null) {
            f216b = new ArrayList<>();
            f216b.add(new C0414i());
        }
        this.f217a = (ArrayList) c3322mq.m3008d(f216b, 1, true);
    }
}
