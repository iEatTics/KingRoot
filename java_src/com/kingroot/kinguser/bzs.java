package com.kingroot.kinguser;

import com.kingroot.kinguser.bzr;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bzs extends bzr.AbstractC2685b {

    /* renamed from: a */
    final /* synthetic */ boolean f2191a;
    final /* synthetic */ bzr bVT;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bzs(bzr bzrVar, List list, boolean z) {
        super(list);
        this.bVT = bzrVar;
        this.f2191a = z;
    }

    @Override // com.kingroot.kinguser.bzr.AbstractC2685b
    /* renamed from: b */
    public void mo5102b(bzr.InterfaceC2684a interfaceC2684a) {
        AtomicInteger atomicInteger;
        Object obj;
        List list;
        bzr.AbstractC2685b abstractC2685b;
        AtomicInteger atomicInteger2;
        int i;
        AtomicInteger atomicInteger3;
        Object obj2;
        List list2;
        bzr.AbstractC2685b abstractC2685b2;
        AtomicInteger atomicInteger4;
        try {
            atomicInteger2 = bzr.f2189MS;
            int andIncrement = atomicInteger2.getAndIncrement();
            i = bzr.f2188MR;
            if (andIncrement > i) {
                atomicInteger4 = bzr.f2189MS;
                int unused = bzr.f2188MR = atomicInteger4.get();
            }
            synchronized (this.bVT) {
                this.bVT.mo4974a(interfaceC2684a);
            }
            if (interfaceC2684a.mo5103a()) {
                obj2 = this.bVT.f2190MQ;
                synchronized (obj2) {
                    if (this.f2191a) {
                        list2 = bzr.f2187MO;
                        abstractC2685b2 = this.bVT.bVQ;
                        list2.remove(abstractC2685b2);
                    }
                    this.bVT.bVQ = null;
                }
            }
            atomicInteger3 = bzr.f2189MS;
            atomicInteger3.getAndDecrement();
        } catch (Throwable th) {
            if (interfaceC2684a.mo5103a()) {
                obj = this.bVT.f2190MQ;
                synchronized (obj) {
                    if (this.f2191a) {
                        list = bzr.f2187MO;
                        abstractC2685b = this.bVT.bVQ;
                        list.remove(abstractC2685b);
                    }
                    this.bVT.bVQ = null;
                }
            }
            atomicInteger = bzr.f2189MS;
            atomicInteger.getAndDecrement();
        }
    }
}
