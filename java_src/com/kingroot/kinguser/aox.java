package com.kingroot.kinguser;

import com.kingroot.master.app.KUApplication;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class aox extends apa implements boo {
    private static volatile aox aGI;
    private List<WeakReference<InterfaceC1399a>> aGJ = new ArrayList();

    /* renamed from: com.kingroot.kinguser.aox$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1399a {
        void onTurnIntoMobileNetwork();
    }

    /* renamed from: KC */
    public static aox m9872KC() {
        if (aGI == null) {
            synchronized (aox.class) {
                if (aGI == null) {
                    aGI = new aox();
                }
            }
        }
        return aGI;
    }

    private aox() {
    }

    @Override // com.kingroot.kinguser.apa
    /* renamed from: hJ */
    protected String mo9859hJ(String str) {
        return str;
    }

    @Override // com.kingroot.kinguser.apa
    /* renamed from: Kv */
    protected boolean mo9867Kv() {
        return false;
    }

    /* renamed from: a */
    public void m9869a(InterfaceC1399a interfaceC1399a) {
        for (WeakReference<InterfaceC1399a> weakReference : this.aGJ) {
            if (weakReference.get() == interfaceC1399a) {
                return;
            }
        }
        this.aGJ.add(new WeakReference<>(interfaceC1399a));
    }

    /* renamed from: KD */
    public void m9871KD() {
        boolean z;
        byte m1921O = C3748vb.m1921O(KUApplication.m13453ge());
        if (m1921O == 2 || m1921O == 1) {
            Set<bom> keySet = this.axW.keySet();
            boolean z2 = false;
            if (C3942yy.m1352c(keySet)) {
                z = false;
            } else {
                Iterator<bom> it = keySet.iterator();
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    bom next = it.next();
                    if (next.agG() || next.isRunning()) {
                        next.pause();
                        z2 = true;
                    } else {
                        z2 = z;
                    }
                }
            }
            if (z) {
                m9870KE();
            }
        }
    }

    /* renamed from: KE */
    private void m9870KE() {
        for (WeakReference<InterfaceC1399a> weakReference : this.aGJ) {
            InterfaceC1399a interfaceC1399a = weakReference.get();
            if (interfaceC1399a != null) {
                interfaceC1399a.onTurnIntoMobileNetwork();
            }
        }
    }
}
