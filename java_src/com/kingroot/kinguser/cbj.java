package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class cbj {
    /* synthetic */ cbj(cbk cbkVar) {
        this();
    }

    /* renamed from: com.kingroot.kinguser.cbj$a */
    /* loaded from: classes.dex */
    static class C2697a {
        private static final cbj bWL = new cbj(null);
    }

    private cbj() {
    }

    public static cbj akz() {
        return C2697a.bWL;
    }

    @WorkerThread
    /* renamed from: bG */
    public boolean m5004bG(@NonNull List<C2037b> list) {
        return m5005b(list, null);
    }

    @WorkerThread
    /* renamed from: b */
    public boolean m5005b(@NonNull List<C2037b> list, C2687c c2687c) {
        if (C3137gu.m3652b(list)) {
            return false;
        }
        C0604a c0604a = new C0604a();
        c0604a.f1205cb = new ArrayList<>(list);
        c0604a.f1206dG = c2687c;
        C2853d c2853d = new C2853d();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Object obj = new Object();
        cav.akt().m5033a(3651, c0604a, c2853d, new cbl(this, atomicBoolean, obj));
        synchronized (obj) {
            try {
                obj.wait(30000L);
            } catch (InterruptedException e) {
            }
        }
        return atomicBoolean.get();
    }

    /* renamed from: a */
    public boolean m5006a(@NonNull C2802cg c2802cg) {
        if (c2802cg == null) {
            return false;
        }
        C2818cl c2818cl = new C2818cl();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Object obj = new Object();
        cav.akt().m5033a(1053, c2802cg, c2818cl, new cbm(this, atomicBoolean, obj));
        synchronized (obj) {
            try {
                obj.wait(30000L);
            } catch (InterruptedException e) {
            }
        }
        return atomicBoolean.get();
    }
}
