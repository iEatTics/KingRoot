package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class avt extends avj {
    private static String TAG = "ku_cloud_list_CleanProcessCloudListManager";
    private static final cce<avt> sInstance = new cce<avt>() { // from class: com.kingroot.kinguser.avt.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Sa */
        public avt create() {
            return new avt();
        }
    };
    private C2585br aNa;
    private final Object mLock;

    /* renamed from: RZ */
    public static avt m8765RZ() {
        return sInstance.get();
    }

    private avt() {
        super(40386);
        this.mLock = new Object();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        synchronized (this.mLock) {
            this.aNa = m8833Rw();
        }
    }

    /* renamed from: hf */
    public List<String> m8762hf(int i) {
        return m8763X(1, i);
    }

    /* renamed from: hg */
    public List<String> m8761hg(int i) {
        return m8763X(2, i);
    }

    /* renamed from: hh */
    public List<String> m8760hh(int i) {
        return m8763X(3, i);
    }

    /* renamed from: V */
    private boolean m8764V(int i, int i2) {
        return (i & i2) > 0;
    }

    /* renamed from: X */
    private List<String> m8763X(int i, int i2) {
        C2585br m8766Og = m8766Og();
        ArrayList arrayList = new ArrayList();
        if (m8766Og != null && m8766Og.f2063kU != null && m8766Og.f2063kU.size() > 0) {
            Iterator<C2565bq> it = m8766Og.f2063kU.iterator();
            while (it.hasNext()) {
                C2565bq next = it.next();
                String str = next.f2003kN;
                int m13013dK = aab.m13013dK(next.f2002kM);
                int m13013dK2 = aab.m13013dK(next.f2004kO);
                if (str != null && m13013dK == i && m8764V(m13013dK2, i2)) {
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: Og */
    private C2585br m8766Og() {
        C2585br c2585br;
        synchronized (this.mLock) {
            if (this.aNa == null) {
                this.aNa = m8833Rw();
            }
            c2585br = this.aNa;
        }
        return c2585br;
    }
}
