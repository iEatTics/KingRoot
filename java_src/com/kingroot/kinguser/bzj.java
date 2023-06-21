package com.kingroot.kinguser;

import android.os.Debug;
import android.os.HandlerThread;
import com.kingroot.kinguser.bzk;
import com.kingroot.kinguser.cgd;
import java.util.HashMap;
/* loaded from: classes.dex */
public class bzj {
    private static cgd.InterfaceC2803a bVF;
    private static HashMap<Thread, cgd.C2805c> bVE = new HashMap<>();
    private static bzk.InterfaceC2681a bVG = new bzk.InterfaceC2681a() { // from class: com.kingroot.kinguser.bzj.1
        @Override // com.kingroot.kinguser.bzk.InterfaceC2681a
        /* renamed from: a */
        public final void mo5124a(Thread thread, Runnable runnable) {
            cgd.C2805c c2805c = new cgd.C2805c();
            c2805c.ceb = 3;
            c2805c.f2317jY = ((cgc) thread).m4347fs();
            c2805c.name = thread.getName();
            c2805c.priority = thread.getPriority();
            c2805c.ced = -1L;
            c2805c.cee = -1L;
            bzj.bVE.put(thread, c2805c);
            bzj.akj();
            bzj.bVF.mo4345a(c2805c, bzj.activeCount());
        }

        @Override // com.kingroot.kinguser.bzk.InterfaceC2681a
        public final void beforeExecute(Thread thread, Runnable runnable) {
            cgd.C2805c c2805c = (cgd.C2805c) bzj.bVE.get(thread);
            if (c2805c != null) {
                bzj.akj();
                bzj.bVF.mo4346a(c2805c);
                c2805c.ced = System.currentTimeMillis();
                c2805c.cee = Debug.threadCpuTimeNanos();
            }
        }

        @Override // com.kingroot.kinguser.bzk.InterfaceC2681a
        /* renamed from: b */
        public final void mo5123b(Thread thread, Runnable runnable) {
            cgd.C2805c c2805c = (cgd.C2805c) bzj.bVE.remove(thread);
            if (c2805c != null) {
                c2805c.ced = System.currentTimeMillis() - c2805c.ced;
                c2805c.cee = Debug.threadCpuTimeNanos() - c2805c.cee;
                bzj.akj();
                bzj.bVF.mo4344b(c2805c);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static void akj() {
        if (bVF == null) {
            bVF = bzi.akg();
        }
    }

    /* renamed from: e */
    public static HandlerThread m5126e(String str, int i, long j) {
        return new cgc(str, i, j);
    }

    public static int activeCount() {
        return bVE.size();
    }

    public static bzk.InterfaceC2681a akk() {
        return bVG;
    }
}
