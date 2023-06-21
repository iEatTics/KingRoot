package com.kingroot.kinguser;

import android.os.Bundle;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
class cbt implements cat {
    final /* synthetic */ cbq bWP;
    final /* synthetic */ cbr bWQ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cbt(cbr cbrVar, cbq cbqVar) {
        this.bWQ = cbrVar;
        this.bWP = cbqVar;
    }

    @Override // com.kingroot.kinguser.cat
    /* renamed from: a */
    public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        C0756ae c0756ae = (C0756ae) jceStruct;
        C3448q c3448q = new C3448q();
        c3448q.f3346ge = new ArrayList<>();
        if (c0756ae != null) {
            Iterator<C3871x> it = c0756ae.f1400gQ.iterator();
            while (it.hasNext()) {
                C3871x next = it.next();
                Iterator<C3683u> it2 = next.f3938gy.iterator();
                while (it2.hasNext()) {
                    C3683u next2 = it2.next();
                    c3448q.f3346ge.add(cba.m5026a(next.f3936gt, next.f3937gu, next2.conchSeqno, next2.f3608gh, 1));
                }
            }
            C3389oq.m2690a(c3448q);
            Bundle bundle = new Bundle();
            bundle.putSerializable("key_softupdate_conch", c0756ae);
            this.bWP.mo5001c(bundle);
        }
    }
}
