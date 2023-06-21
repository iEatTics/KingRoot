package com.kingroot.kinguser;

import com.kingroot.kinguser.RunnableC3305mg;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.mh */
/* loaded from: classes.dex */
public class C3308mh extends RunnableC3305mg.AbstractC3307b {

    /* renamed from: vM */
    final /* synthetic */ RunnableC3305mg f3125vM;

    /* renamed from: vN */
    final /* synthetic */ boolean f3126vN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3308mh(RunnableC3305mg runnableC3305mg, List list, boolean z) {
        super(list);
        this.f3125vM = runnableC3305mg;
        this.f3126vN = z;
    }

    @Override // com.kingroot.kinguser.RunnableC3305mg.AbstractC3307b
    /* renamed from: b */
    public void mo3078b(RunnableC3305mg.InterfaceC3306a interfaceC3306a) {
        Object obj;
        List list;
        RunnableC3305mg.AbstractC3307b abstractC3307b;
        Object obj2;
        List list2;
        RunnableC3305mg.AbstractC3307b abstractC3307b2;
        Object obj3;
        List list3;
        RunnableC3305mg.AbstractC3307b abstractC3307b3;
        try {
            try {
                synchronized (this.f3125vM) {
                    this.f3125vM.mo3089a(interfaceC3306a);
                }
                if (interfaceC3306a.isRunning()) {
                    obj3 = this.f3125vM.f3121vJ;
                    synchronized (obj3) {
                        if (this.f3126vN) {
                            list3 = RunnableC3305mg.f3119vH;
                            abstractC3307b3 = this.f3125vM.f3120vI;
                            list3.remove(abstractC3307b3);
                        }
                        this.f3125vM.f3120vI = null;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                if (interfaceC3306a.isRunning()) {
                    obj = this.f3125vM.f3121vJ;
                    synchronized (obj) {
                        if (this.f3126vN) {
                            list = RunnableC3305mg.f3119vH;
                            abstractC3307b = this.f3125vM.f3120vI;
                            list.remove(abstractC3307b);
                        }
                        this.f3125vM.f3120vI = null;
                    }
                }
            }
        } catch (Throwable th) {
            if (interfaceC3306a.isRunning()) {
                obj2 = this.f3125vM.f3121vJ;
                synchronized (obj2) {
                    if (this.f3126vN) {
                        list2 = RunnableC3305mg.f3119vH;
                        abstractC3307b2 = this.f3125vM.f3120vI;
                        list2.remove(abstractC3307b2);
                    }
                    this.f3125vM.f3120vI = null;
                }
            }
            throw th;
        }
    }
}
