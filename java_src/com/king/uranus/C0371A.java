package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.A */
/* loaded from: classes.dex */
public final class C0371A extends AbstractC0404cS {

    /* renamed from: b */
    static ArrayList<C0414i> f156b;

    /* renamed from: a */
    public ArrayList<C0414i> f157a = null;

    /* renamed from: bT */
    public int f158bT = 0;

    /* renamed from: bU */
    public String f159bU = "";

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2998a((Collection) this.f157a, 1);
        c3324mr.m2983e(this.f158bT, 2);
        if (this.f159bU != null) {
            c3324mr.m2981f(this.f159bU, 3);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        if (f156b == null) {
            f156b = new ArrayList<>();
            f156b.add(new C0414i());
        }
        this.f157a = (ArrayList) c3322mq.m3008d(f156b, 1, true);
        this.f158bT = c3322mq.m3032a(this.f158bT, 2, true);
        this.f159bU = c3322mq.m3013b(3, false);
    }
}
