package com.kingroot.kinguser;

import com.king.uranus.C0371A;
import com.king.uranus.C0414i;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.hc */
/* loaded from: classes.dex */
public class C3147hc extends RunnableC3305mg {

    /* renamed from: qP */
    final /* synthetic */ C3146hb f2752qP;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3147hc(C3146hb c3146hb) {
        this.f2752qP = c3146hb;
    }

    @Override // com.kingroot.kinguser.RunnableC3305mg, java.lang.Runnable
    public void run() {
        C0371A m3629aR;
        List m3617f;
        ConcurrentLinkedQueue concurrentLinkedQueue;
        ConcurrentLinkedQueue concurrentLinkedQueue2;
        List m3616g;
        m3629aR = this.f2752qP.m3629aR();
        if (m3629aR != null) {
            ArrayList<C0414i> arrayList = m3629aR.f157a;
            this.f2752qP.m3631a(arrayList);
            m3617f = this.f2752qP.m3617f(arrayList);
            concurrentLinkedQueue = this.f2752qP.f2747qK;
            concurrentLinkedQueue.addAll(m3617f);
            arrayList.removeAll(m3617f);
            if (arrayList.size() > 0) {
                m3616g = this.f2752qP.m3616g(arrayList);
                this.f2752qP.m3622c(m3616g);
            }
            concurrentLinkedQueue2 = this.f2752qP.f2747qK;
            if (concurrentLinkedQueue2.size() > 0) {
                this.f2752qP.m3615h();
            }
        }
    }
}
