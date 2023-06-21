package com.kingroot.kinguser;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class aux {
    protected WeakReference<InterfaceC1673a> aTg;
    protected Context mContext;

    /* renamed from: com.kingroot.kinguser.aux$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1673a {
        /* renamed from: a */
        void mo1837a(String str, boolean z, int i);
    }

    public aux(Context context) {
        this.mContext = context;
    }

    /* renamed from: a */
    public void m8885a(final String str, InterfaceC1673a interfaceC1673a) {
        this.aTg = new WeakReference<>(interfaceC1673a);
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.aux.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                InterfaceC1673a interfaceC1673a2;
                super.run();
                C3029eq c3029eq = new C3029eq();
                c3029eq.f2618nk = str;
                AtomicReference atomicReference = new AtomicReference();
                if (aju.m11400a(aux.this.mContext, c3029eq, atomicReference) == 0) {
                    C2995dj c2995dj = (C2995dj) atomicReference.get();
                    if (c2995dj != null && (interfaceC1673a2 = aux.this.aTg.get()) != null) {
                        if (aux.m8884c(c2995dj.f2456nl, c2995dj.f2458nn, c2995dj.f2457nm)) {
                            interfaceC1673a2.mo1837a(str, true, (int) ((c2995dj.f2456nl * 100) / ((c2995dj.f2456nl + c2995dj.f2458nn) + c2995dj.f2457nm)));
                            awd.m8685SG().m8684a(str, c2995dj.f2456nl, c2995dj.f2458nn, c2995dj.f2457nm);
                            return;
                        }
                        interfaceC1673a2.mo1837a(str, false, 0);
                        return;
                    }
                    return;
                }
                InterfaceC1673a interfaceC1673a3 = aux.this.aTg.get();
                if (interfaceC1673a3 != null) {
                    interfaceC1673a3.mo1837a(str, false, 0);
                }
            }
        }));
    }

    /* renamed from: c */
    public static boolean m8884c(long j, long j2, long j3) {
        long j4 = j + j2 + j3;
        return j4 > 100 && j4 > 0;
    }
}
