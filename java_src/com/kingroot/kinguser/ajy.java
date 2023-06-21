package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.C3521rj;
import com.kingroot.kinguser.activitys.RePackageWarningActivity;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class ajy {
    private static String auD = "";
    private static final C3521rj.InterfaceC3523a auE = new C3521rj.InterfaceC3523a() { // from class: com.kingroot.kinguser.ajy.1
        @Override // com.kingroot.kinguser.C3521rj.InterfaceC3523a
        /* renamed from: K */
        public void mo2460K(boolean z) {
            if (z) {
                ady.m12308tK().m12319eI(ajy.auD);
                Context ge = KUApplication.m13453ge();
                Intent intent = new Intent(ge, RePackageWarningActivity.class);
                intent.setFlags(268435456);
                ge.startActivity(intent);
            }
        }

        @Override // com.kingroot.kinguser.C3521rj.InterfaceC3523a
        /* renamed from: cm */
        public void mo2459cm(String str) {
            String unused = ajy.auD = str;
        }
    };

    /* renamed from: zJ */
    public static void m11366zJ() {
        long currentTimeMillis = System.currentTimeMillis();
        if (adk.m12539b(aks.m11143BP().m11132CA(), currentTimeMillis, 86400000L)) {
            C3521rj.m2465a(auE);
            aks.m11143BP().m10903aS(currentTimeMillis);
        }
    }

    /* renamed from: zK */
    public static void m11365zK() {
        C3521rj.m2465a(auE);
    }
}
