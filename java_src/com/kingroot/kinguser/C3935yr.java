package com.kingroot.kinguser;

import android.app.ActivityManager;
import com.kingroot.kinguser.acr;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.kingroot.kinguser.yr */
/* loaded from: classes.dex */
public class C3935yr {

    /* renamed from: VE */
    private static acr f4040VE;

    /* renamed from: VF */
    private static AtomicInteger f4041VF = new AtomicInteger(0);

    /* renamed from: pb */
    public static acr m1374pb() {
        if (f4040VE == null) {
            synchronized (C3935yr.class) {
                if (f4040VE == null) {
                    acr.C0665a c0665a = new acr.C0665a();
                    c0665a.abg = (((ActivityManager) bzt.m5101ge().getSystemService("activity")).getMemoryClass() * 1048576) / 8;
                    f4040VE = new acr(c0665a);
                }
            }
        }
        f4041VF.incrementAndGet();
        return f4040VE;
    }

    /* renamed from: pc */
    public static void m1373pc() {
        f4041VF.decrementAndGet();
        if (f4041VF.get() <= 0 && f4040VE != null) {
            synchronized (C3935yr.class) {
                if (f4041VF.get() <= 0 && f4040VE != null) {
                    f4040VE.close();
                    f4040VE = null;
                    f4041VF.set(0);
                }
            }
        }
    }
}
