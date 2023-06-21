package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.C3956zk;
import java.util.List;
/* loaded from: classes.dex */
public class bax extends AbstractC3634th {
    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, final Intent intent) {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bax.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                ajn.m11456zp().m11455zq();
                ajb.m11487yT().checkAsync(false, true, null);
                ajb.m11487yT().delayCheckAgain();
                bdx.m7488jS();
                if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
                    if (!aks.m11143BP().m11082Cy()) {
                        alb.m10646fb(0);
                    }
                    bcr.m7604XT().m7603XU();
                }
                return null;
            }
        }, new Object[0]);
    }
}
