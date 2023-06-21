package com.kingroot.kinguser;

import android.os.Build;
import com.kingroot.master.app.KUApplication;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class aji {
    private static final String TAG = aiq.arW + "KCheckRemountMgr";

    /* renamed from: com.kingroot.kinguser.aji$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1017a {
        /* renamed from: dR */
        void mo8969dR(int i);
    }

    /* renamed from: a */
    public void m11469a(InterfaceC1017a interfaceC1017a) {
        try {
            m11468b(interfaceC1017a);
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    private void m11468b(final InterfaceC1017a interfaceC1017a) {
        C3026en c3026en = new C3026en();
        c3026en.f2615pt = KUApplication.m13442ib();
        c3026en.f2612ks = Build.FINGERPRINT;
        c3026en.f2613kt = aav.m12921dI();
        c3026en.f2614ps = aks.m11143BP().m11094Cm();
        awn.m8629Ta().m8628a(8000, c3026en, new C3027eo(), new cat() { // from class: com.kingroot.kinguser.aji.1
            @Override // com.kingroot.kinguser.cat
            /* renamed from: a */
            public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
                if (i3 != 0 || i4 != 0) {
                    if (interfaceC1017a != null) {
                        interfaceC1017a.mo8969dR(3);
                        return;
                    }
                    return;
                }
                C3027eo c3027eo = (C3027eo) jceStruct;
                if (c3027eo == null || c3027eo.ret != 0) {
                    if (interfaceC1017a != null) {
                        interfaceC1017a.mo8969dR(3);
                    }
                } else if (interfaceC1017a != null) {
                    interfaceC1017a.mo8969dR(c3027eo.f2616pu);
                }
            }
        });
    }
}
