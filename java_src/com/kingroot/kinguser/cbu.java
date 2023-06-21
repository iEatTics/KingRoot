package com.kingroot.kinguser;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class cbu {
    /* synthetic */ cbu(cbv cbvVar) {
        this();
    }

    /* renamed from: com.kingroot.kinguser.cbu$a */
    /* loaded from: classes.dex */
    static class C2699a {
        private static final cbu bWS = new cbu(null);
    }

    private cbu() {
    }

    public static cbu akF() {
        return C2699a.bWS;
    }

    /* renamed from: cO */
    public boolean m4999cO(long j) {
        C3173i c3173i = new C3173i();
        c3173i.f2773et = j;
        C3205j c3205j = new C3205j();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Object obj = new Object();
        cav.akt().m5033a(3150, c3173i, c3205j, new cbv(this, atomicBoolean, j, obj));
        synchronized (obj) {
            try {
                obj.wait(30000L);
            } catch (InterruptedException e) {
            }
        }
        return atomicBoolean.get();
    }
}
