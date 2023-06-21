package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.bed;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bay extends AbstractC3634th {
    private bed beu = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bay.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() == 1 && (mo7445nF.get(0) instanceof Context)) {
                byte m1921O = C3748vb.m1921O(KUApplication.m13453ge());
                if (m1921O != -1) {
                    bak.m7933Vx().m7923hK(0);
                    arv.m9501NB();
                    arv m9499Nz = arv.m9499Nz();
                    List<String> cloudCheckFailedAppsCache = m9499Nz.getCloudCheckFailedAppsCache();
                    if (!C3942yy.m1352c(cloudCheckFailedAppsCache)) {
                        m9499Nz.cloudCheckApps(cloudCheckFailedAppsCache, null);
                    }
                }
                if (m1921O == 0) {
                    bay.m7871Wa();
                    amz.m10365II().m10366IG();
                    asl.m9455NW().m9453NY();
                }
                avd.m8853Rq().mo8850Rl();
            }
        }
    });

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(context);
        beg.m7461Zj().m7456a(this.beu, arrayList);
        aow.m9873KB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Wa */
    public static void m7871Wa() {
        long currentTimeMillis = System.currentTimeMillis();
        aks m11143BP = aks.m11143BP();
        long m11079DB = m11143BP.m11079DB();
        if (m11079DB + 14400000 <= currentTimeMillis || currentTimeMillis <= m11079DB - 14400000) {
            m11143BP.m10755el(0);
            m11143BP.m10754em(0);
            aeg.m12265um().mo12196uj();
            m11143BP.m10849bd(System.currentTimeMillis());
        }
    }
}
