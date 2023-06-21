package com.kingx.cloudsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.blz;
import com.kingroot.kinguser.bmf;
import com.kingroot.kinguser.bmq;
import com.kingroot.kinguser.bmu;
/* renamed from: com.kingx.cloudsdk.ba */
/* loaded from: classes.dex */
public final class C4020ba extends BroadcastReceiver {
    private static long bBI = 0;
    private final Object bBJ = new Object();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            if (bmu.m6326bJ(context) != -1) {
                long currentTimeMillis = System.currentTimeMillis();
                synchronized (this.bBJ) {
                    if (bmu.m6323d(bBI, currentTimeMillis, 10000L)) {
                        bBI = currentTimeMillis;
                        new bmq(this) { // from class: com.kingx.cloudsdk.ba.1
                            @Override // com.kingroot.kinguser.bmq, java.lang.Runnable
                            public final void run() {
                                try {
                                    blz.afA().afB();
                                    bmf.m6409bB(context.getApplicationContext()).afI();
                                } catch (Exception e) {
                                }
                            }
                        }.m6355co();
                    }
                }
            }
        }
    }
}
