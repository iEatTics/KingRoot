package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.control.SilentModeDisabledReceiver;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class akh {
    private static final AtomicBoolean avl = new AtomicBoolean(false);
    private static final Runnable avm = new Runnable() { // from class: com.kingroot.kinguser.akh.1
        @Override // java.lang.Runnable
        public void run() {
            ady.m12308tK().mo1748a(100529, 0, (List<Object>) null, true);
        }
    };
    private static final SilentModeDisabledReceiver avn = new SilentModeDisabledReceiver();

    /* renamed from: Aq */
    private static void m11299Aq() {
        bzt.m5101ge().registerReceiver(avn, new IntentFilter("com.kingroot.kinguser.ACTION_SILENT_DISABLED"));
    }

    /* renamed from: Ar */
    private static void m11298Ar() {
        bzt.m5101ge().unregisterReceiver(avn);
    }

    /* renamed from: As */
    private static void m11297As() {
        Context m5101ge = bzt.m5101ge();
        Intent intent = new Intent();
        intent.setPackage(m5101ge.getPackageName());
        intent.setAction("com.kingroot.kinguser.ACTION_SILENT_DISABLED");
        m5101ge.sendBroadcast(intent);
    }

    /* renamed from: At */
    public static void m11296At() {
        m11292aT(!m11294Av());
    }

    /* renamed from: aT */
    public static void m11292aT(boolean z) {
        synchronized (avl) {
            if (avl.get() != z) {
                avl.set(z);
                if (z) {
                    aki.m11290Ax();
                    m11299Aq();
                    if (2 == KApplication.m13450hT()) {
                        ayd.m8032a(0, avm, 14400000L);
                    }
                } else {
                    m11291aU(true);
                    if (2 == KApplication.m13450hT()) {
                        ayd.m8031hF(0);
                    }
                    m11298Ar();
                    m11297As();
                }
            }
        }
    }

    /* renamed from: Au */
    public static boolean m11295Au() {
        boolean z;
        synchronized (avl) {
            z = avl.get();
        }
        return z;
    }

    /* renamed from: aU */
    private static void m11291aU(boolean z) {
        C3952zh.m1312pq().setComponentEnabledSetting(m11293Aw(), z ? 1 : 2, 1);
    }

    /* renamed from: Av */
    private static boolean m11294Av() {
        int componentEnabledSetting = C3952zh.m1312pq().getComponentEnabledSetting(m11293Aw());
        return componentEnabledSetting == 1 || componentEnabledSetting == 0;
    }

    /* renamed from: Aw */
    private static ComponentName m11293Aw() {
        return new ComponentName(bzt.m5101ge(), "com.kingroot.kinguser.activitys.SliderMainActivity-Entry");
    }
}
