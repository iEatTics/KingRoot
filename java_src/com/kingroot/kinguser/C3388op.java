package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.kingroot.kinguser.op */
/* loaded from: classes.dex */
public class C3388op implements cat {

    /* renamed from: yl */
    private C3417pe f3254yl;

    public C3388op(C3417pe c3417pe) {
        this.f3254yl = c3417pe;
    }

    @Override // com.kingroot.kinguser.cat
    /* renamed from: a */
    public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        if (this.f3254yl != null && jceStruct != null && (jceStruct instanceof C0799af)) {
            C0799af c0799af = (C0799af) jceStruct;
            if (c0799af.f1411gQ != null) {
                C3448q c3448q = new C3448q();
                c3448q.f3346ge = new ArrayList<>();
                Iterator<C3871x> it = c0799af.f1411gQ.iterator();
                while (it.hasNext()) {
                    C3871x next = it.next();
                    if (next != null && next.f3938gy != null) {
                        Iterator<C3683u> it2 = next.f3938gy.iterator();
                        while (it2.hasNext()) {
                            C3683u next2 = it2.next();
                            if (next2 != null) {
                                c3448q.f3346ge.add(cba.m5026a(next.f3936gt, next.f3937gu, next2.conchSeqno, next2.f3608gh, 1));
                                try {
                                    this.f3254yl.m2660ax(next2.f3608gh).mo2619a(next, next2.f3608gh, i3, i4, next2);
                                } catch (Exception e) {
                                }
                            }
                        }
                    }
                }
                C3389oq.m2690a(c3448q);
            }
        }
    }
}
