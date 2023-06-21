package com.kingroot.kinguser;

import com.king.uranus.C0414i;
import com.kingroot.kinguser.C3176ic;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
/* renamed from: com.kingroot.kinguser.ht */
/* loaded from: classes.dex */
class C3164ht implements C3176ic.InterfaceC3177a<Object> {

    /* renamed from: qQ */
    final /* synthetic */ C3163hs f2754qQ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3164ht(C3163hs c3163hs) {
        this.f2754qQ = c3163hs;
    }

    @Override // com.kingroot.kinguser.C3176ic.InterfaceC3177a
    /* renamed from: i */
    public Object mo3481i(List<Object> list) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        ConcurrentLinkedQueue concurrentLinkedQueue2;
        List m3624c;
        ArrayList arrayList = new ArrayList();
        concurrentLinkedQueue = this.f2754qQ.f2753qP.f2747qK;
        Iterator it = concurrentLinkedQueue.iterator();
        while (it.hasNext()) {
            try {
                m3624c = this.f2754qQ.f2753qP.m3624c((C0414i) it.next());
                if (m3624c != null) {
                    arrayList.addAll(m3624c);
                }
            } catch (Throwable th) {
            }
        }
        this.f2754qQ.f2753qP.m3622c(arrayList);
        concurrentLinkedQueue2 = this.f2754qQ.f2753qP.f2747qK;
        concurrentLinkedQueue2.clear();
        return null;
    }
}
