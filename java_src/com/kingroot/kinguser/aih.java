package com.kingroot.kinguser;

import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class aih {
    private static volatile aih aru = null;
    private bed arv = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aih.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aih.this.m11643xK();
        }
    });
    private bed arw = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aih.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (C3749vc.m1915U(KUApplication.m13453ge()) == 0) {
                aks.m11143BP().m10844bf(true);
            } else {
                aks.m11143BP().m10844bf(false);
            }
        }
    });

    /* renamed from: xI */
    public static aih m11645xI() {
        if (aru == null) {
            synchronized (aih.class) {
                if (aru == null) {
                    aru = new aih();
                }
            }
        }
        return aru;
    }

    private aih() {
    }

    /* renamed from: xJ */
    public void m11644xJ() {
        if (adk.m12539b(aks.m11143BP().m11133BZ(), System.currentTimeMillis(), aiz.m11496yM())) {
            beg.m7461Zj().m7450c(this.arv);
        }
    }

    /* renamed from: aK */
    public void m11646aK(boolean z) {
        if (z || !aks.m11143BP().m11106Ca()) {
            beg.m7461Zj().m7450c(this.arw);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: xK */
    public void m11643xK() {
        ady.m12308tK().mo1746bi(100377);
        aks.m11143BP().m10912aJ(System.currentTimeMillis());
        if (!aks.m11143BP().m11078DC() && akb.m11325Ad().m11324Ae()) {
            ady.m12308tK().m12302tQ();
            aks.m11143BP().m10870bK(true);
        }
    }
}
