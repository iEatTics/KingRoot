package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.urlcheck.aidl.ICallback;
import java.util.List;
/* loaded from: classes.dex */
public class bbc extends AbstractC3634th {
    private bed aSd = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbc.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            bbc.this.m7863Wd();
        }
    });

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, final Intent intent) {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bbc.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                if ("com.kingroot.kinguser.ACTION_MAIN_START_CHECK".equals(intent.getAction())) {
                    bbc.this.m7864Qd();
                    return null;
                }
                return null;
            }
        }, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Qd */
    public void m7864Qd() {
        beg.m7461Zj().m7450c(this.aSd);
        ajn.m11456zp().m11455zq();
        ajz.m11359dU(0);
        aba.m12857qD();
        ail.m11618xT().m11619p(0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Wd */
    public void m7863Wd() {
        ajy.m11365zK();
        C3958zl.m1297pu();
        asw.m9356OA();
        asw.m9355OB();
        baw.m7873VY();
        ava.m8873Rg();
        m7862We();
        bbt.m7780WG().checkAppRules();
        aeb.m12285tV().m12284tW();
        bbo.m7795Wv().clearTimeOutLogs();
        aig.m11655xA();
        avv.m8742Sj().m8736di(true);
        alb.m10646fb(1);
        avm.m8816RK().m8811RP();
        m7861Wf();
        ahg.m11770wT().refresh();
        if (abc.m12845qK().isRootPermition() && bfw.aaS().aaU()) {
            bfp.aay().m7252a(true, (ICallback) null);
        }
    }

    /* renamed from: We */
    private void m7862We() {
        aih.m11645xI().m11644xJ();
    }

    /* renamed from: Wf */
    private void m7861Wf() {
        if (adk.m12539b(aks.m11143BP().m11067DN(), System.currentTimeMillis(), 172800000L)) {
            aaq.m12951dM(KApplication.m13453ge().getPackageName());
            aks.m11143BP().m10845bf(System.currentTimeMillis());
        }
    }

    /* renamed from: Wg */
    public static void m7860Wg() {
        Intent intent = new Intent("com.kingroot.kinguser.ACTION_MAIN_START_CHECK");
        Context m13453ge = KApplication.m13453ge();
        intent.setPackage(m13453ge.getPackageName());
        m13453ge.sendBroadcast(intent);
    }
}
