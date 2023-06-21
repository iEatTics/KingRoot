package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.d */
/* loaded from: classes.dex */
public final class C0409d extends AbstractC0404cS implements Cloneable {

    /* renamed from: xt */
    static ArrayList<C0411f> f283xt;

    /* renamed from: g */
    public ArrayList<C0411f> f284g = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2998a((Collection) this.f284g, 0);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        if (f283xt == null) {
            f283xt = new ArrayList<>();
            f283xt.add(new C0411f());
        }
        this.f284g = (ArrayList) c3322mq.m3008d(f283xt, 0, true);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
