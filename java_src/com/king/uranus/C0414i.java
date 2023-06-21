package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.king.uranus.i */
/* loaded from: classes.dex */
public final class C0414i extends AbstractC0404cS {

    /* renamed from: xK */
    static C0399c f356xK;

    /* renamed from: xL */
    static C0374D f357xL;

    /* renamed from: xM */
    static C0375E f358xM;

    /* renamed from: xN */
    static ArrayList<C0412g> f359xN;

    /* renamed from: ay */
    public C0399c f362ay = null;

    /* renamed from: az */
    public C0374D f363az = null;

    /* renamed from: aA */
    public C0375E f360aA = null;

    /* renamed from: aB */
    public ArrayList<C0412g> f361aB = null;

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m3000a((AbstractC0404cS) this.f362ay, 0);
        c3324mr.m3000a((AbstractC0404cS) this.f363az, 1);
        if (this.f360aA != null) {
            c3324mr.m3000a((AbstractC0404cS) this.f360aA, 2);
        }
        if (this.f361aB != null) {
            c3324mr.m2998a((Collection) this.f361aB, 3);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        if (f356xK == null) {
            f356xK = new C0399c();
        }
        this.f362ay = (C0399c) c3322mq.m3030a((AbstractC0404cS) f356xK, 0, true);
        if (f357xL == null) {
            f357xL = new C0374D();
        }
        this.f363az = (C0374D) c3322mq.m3030a((AbstractC0404cS) f357xL, 1, true);
        if (f358xM == null) {
            f358xM = new C0375E();
        }
        this.f360aA = (C0375E) c3322mq.m3030a((AbstractC0404cS) f358xM, 2, false);
        if (f359xN == null) {
            f359xN = new ArrayList<>();
            f359xN.add(new C0412g());
        }
        this.f361aB = (ArrayList) c3322mq.m3008d(f359xN, 3, false);
    }
}
