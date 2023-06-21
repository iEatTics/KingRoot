package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
/* loaded from: classes.dex */
public class aon {
    private static final String TAG = aiq.arY + "_ExaminationAppDistManager";
    private static final cce<aon> aGq = new cce<aon>() { // from class: com.kingroot.kinguser.aon.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Kj */
        public aon create() {
            return new aon();
        }
    };
    private static bed aGr = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aon.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (C3942yy.m1351d(aop.m9905Kq().mo9843JY())) {
                aop.m9905Kq().mo9844JX();
            } else if (adk.m12539b(aks.m11143BP().m11028EA(), System.currentTimeMillis(), 43200000L)) {
                aks.m11143BP().m10825bp(System.currentTimeMillis());
                aop.m9905Kq().mo9844JX();
            }
            if (C3942yy.m1351d(apc.m9842KS().mo9843JY())) {
                apc.m9842KS().mo9844JX();
            } else if (adk.m12539b(aks.m11143BP().m11027EB(), System.currentTimeMillis(), 43200000L)) {
                aks.m11143BP().m10823bq(System.currentTimeMillis());
                apc.m9842KS().mo9844JX();
            }
            if (C3942yy.m1351d(aps.m9754LI().mo9843JY())) {
                aps.m9754LI().mo9844JX();
            } else if (adk.m12539b(aks.m11143BP().m11026EC(), System.currentTimeMillis(), 43200000L)) {
                aks.m11143BP().m10821br(System.currentTimeMillis());
                aps.m9754LI().mo9844JX();
            }
        }
    });
    private static bed aGs = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aon.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aks m11143BP = aks.m11143BP();
            if (m11143BP.m11048Dg() && C3748vb.m1918R(KApplication.m13453ge()) && adk.m12539b(m11143BP.m11025ED(), System.currentTimeMillis(), 14400000L)) {
                aop.m9905Kq().mo9841Kc();
                apc.m9842KS().mo9841Kc();
                aps.m9754LI().mo9841Kc();
                m11143BP.m10819bs(System.currentTimeMillis());
            }
        }
    });

    /* renamed from: Kg */
    public static aon m9911Kg() {
        return aGq.get();
    }

    /* renamed from: Kh */
    public void m9910Kh() {
        if (bao.isAvailable()) {
            beg.m7461Zj().m7450c(aGr);
        }
    }

    /* renamed from: Ki */
    public void m9909Ki() {
        if (bao.isAvailable()) {
            beg.m7461Zj().m7450c(aGs);
        }
    }
}
