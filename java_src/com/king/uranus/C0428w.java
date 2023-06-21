package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.w */
/* loaded from: classes.dex */
public final class C0428w extends AbstractC0404cS implements Cloneable {

    /* renamed from: xM */
    static C0375E f416xM;

    /* renamed from: xR */
    static C0374D f417xR;

    /* renamed from: xS */
    static C0375E f418xS;

    /* renamed from: xT */
    static ArrayList<C0372B> f419xT;

    /* renamed from: bw */
    public String f421bw = "";

    /* renamed from: bx */
    public C0374D f422bx = null;

    /* renamed from: aA */
    public C0375E f420aA = null;

    /* renamed from: by */
    public C0375E f423by = null;

    /* renamed from: bz */
    public ArrayList<C0372B> f424bz = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2981f(this.f421bw, 0);
        if (this.f422bx != null) {
            c3324mr.m3000a((AbstractC0404cS) this.f422bx, 1);
        }
        if (this.f420aA != null) {
            c3324mr.m3000a((AbstractC0404cS) this.f420aA, 2);
        }
        if (this.f423by != null) {
            c3324mr.m3000a((AbstractC0404cS) this.f423by, 3);
        }
        if (this.f424bz != null) {
            c3324mr.m2998a((Collection) this.f424bz, 4);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        this.f421bw = c3322mq.m3013b(0, true);
        if (f417xR == null) {
            f417xR = new C0374D();
        }
        this.f422bx = (C0374D) c3322mq.m3030a((AbstractC0404cS) f417xR, 1, false);
        if (f416xM == null) {
            f416xM = new C0375E();
        }
        this.f420aA = (C0375E) c3322mq.m3030a((AbstractC0404cS) f416xM, 2, false);
        if (f418xS == null) {
            f418xS = new C0375E();
        }
        this.f423by = (C0375E) c3322mq.m3030a((AbstractC0404cS) f418xS, 3, false);
        if (f419xT == null) {
            f419xT = new ArrayList<>();
            f419xT.add(new C0372B());
        }
        this.f424bz = (ArrayList) c3322mq.m3008d(f419xT, 4, false);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
