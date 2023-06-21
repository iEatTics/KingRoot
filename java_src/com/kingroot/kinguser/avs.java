package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class avs extends avj {
    private static volatile avs aUe;
    private C2585br aNa;
    private final Object mLock;

    private avs() {
        super(40372);
        this.mLock = new Object();
    }

    /* renamed from: RY */
    public static avs m8774RY() {
        if (aUe == null) {
            synchronized (avs.class) {
                if (aUe == null) {
                    aUe = new avs();
                }
            }
        }
        return aUe;
    }

    /* renamed from: V */
    private boolean m8773V(int i, int i2) {
        return (i & i2) > 0;
    }

    /* renamed from: W */
    private List<String> m8772W(int i, int i2) {
        C2585br m8775Og = m8775Og();
        ArrayList arrayList = new ArrayList();
        if (m8775Og != null && m8775Og.f2063kU != null && m8775Og.f2063kU.size() > 0) {
            Iterator<C2565bq> it = m8775Og.f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                String str = next.f2002kM;
                int m13013dK = aab.m13013dK(next.f2003kN);
                int m13013dK2 = aab.m13013dK(next.f2004kO);
                if (str != null && m13013dK == i && m8773V(m13013dK2, i2)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: ha */
    public List<String> m8771ha(int i) {
        return m8772W(0, i);
    }

    /* renamed from: hb */
    public List<String> m8770hb(int i) {
        return m8772W(1, i);
    }

    /* renamed from: hc */
    public List<String> m8769hc(int i) {
        return m8772W(2, i);
    }

    /* renamed from: hd */
    public List<String> m8768hd(int i) {
        return m8772W(3, i);
    }

    /* renamed from: he */
    public List<String> m8767he(int i) {
        return m8772W(4, i);
    }

    /* renamed from: Og */
    private C2585br m8775Og() {
        C2585br c2585br;
        synchronized (this.mLock) {
            if (this.aNa == null) {
                this.aNa = m8833Rw();
            }
            c2585br = this.aNa;
        }
        return c2585br;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        synchronized (this.mLock) {
            this.aNa = m8833Rw();
        }
    }
}
