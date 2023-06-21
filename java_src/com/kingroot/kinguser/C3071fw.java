package com.kingroot.kinguser;

import android.os.IBinder;
import com.tencent.tps.client.AbsTPSClientBase;
import p001a.InterfaceC0004aq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.fw */
/* loaded from: classes.dex */
public class C3071fw implements IBinder.DeathRecipient {

    /* renamed from: qd */
    final /* synthetic */ C3070fv f2681qd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3071fw(C3070fv c3070fv) {
        this.f2681qd = c3070fv;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        InterfaceC0004aq interfaceC0004aq;
        AbsTPSClientBase absTPSClientBase;
        this.f2681qd.m3820a(false);
        interfaceC0004aq = this.f2681qd.f2679qb;
        interfaceC0004aq.asBinder().unlinkToDeath(this, 0);
        absTPSClientBase = this.f2681qd.f2680qc;
        absTPSClientBase.onTPSServiceStop();
        C3116gb.m3729d(new C3036ex(0, null, 3, 2, ""));
        m3808a(2);
    }

    /* renamed from: a */
    private void m3808a(int i) {
        C3070fv c3070fv;
        AbsTPSClientBase absTPSClientBase;
        int i2;
        int i3;
        int i4;
        int i5;
        while (i > 0) {
            try {
                Thread.sleep(15000L);
                c3070fv = this.f2681qd;
                absTPSClientBase = this.f2681qd.f2680qc;
            } catch (Exception e) {
            }
            if (c3070fv.m3821a(absTPSClientBase)) {
                i2 = this.f2681qd.f2677i;
                if (i2 != 1) {
                    i3 = this.f2681qd.f2677i;
                    if (i3 == 0) {
                        this.f2681qd.disableAutoPatch();
                    }
                } else {
                    this.f2681qd.enableAutoPatch();
                }
                i4 = this.f2681qd.f2678j;
                if (i4 != 1) {
                    i5 = this.f2681qd.f2678j;
                    if (i5 == 0) {
                        this.f2681qd.m3811e();
                        return;
                    }
                    return;
                }
                this.f2681qd.m3813d();
                return;
            }
            i--;
        }
    }
}
