package com.kingroot.kinguser;

import com.kingroot.kingmaster.network.updatalist.CommonList;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class aem extends avj {
    private static final cce<aem> sInstance = new cce<aem>() { // from class: com.kingroot.kinguser.aem.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: uz */
        public aem create() {
            return new aem();
        }
    };
    private aeo afj;
    private CommonList afk;
    private WeakHashMap<CommonList.InterfaceC0599a, Integer> afl;
    private final Object mLock;

    private aem() {
        super(40294);
        this.mLock = new Object();
        this.afl = new WeakHashMap<>();
        this.afj = new aeo(aep.m12176nF());
    }

    /* renamed from: ux */
    public static aem m12183ux() {
        return sInstance.get();
    }

    /* renamed from: a */
    public CommonList m12186a(CommonList.InterfaceC0599a interfaceC0599a) {
        CommonList commonList;
        if (interfaceC0599a != null) {
            this.afl.put(interfaceC0599a, 0);
        }
        synchronized (this.mLock) {
            if (this.afk == null) {
                this.afk = m12184g(this.afj.m12177cO(2));
            }
            commonList = this.afk;
        }
        return commonList;
    }

    /* renamed from: g */
    private CommonList m12184g(int[] iArr) {
        CommonList commonList = new CommonList();
        C2585br Rw = m8833Rw();
        if (Rw != null && Rw.f2063kU != null) {
            ArrayList<C2565bq> arrayList = Rw.f2063kU;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= arrayList.size()) {
                    break;
                }
                C2565bq c2565bq = arrayList.get(i2);
                if (c2565bq.f2002kM != null && c2565bq.f2002kM.length() > 0 && c2565bq.f2003kN != null && c2565bq.f2003kN.length() > 0) {
                    try {
                        int intValue = Integer.valueOf(c2565bq.f2003kN).intValue();
                        if (m12185b(iArr, intValue)) {
                            commonList.nameList.put(c2565bq.f2002kM, Integer.valueOf(intValue));
                        }
                    } catch (Exception e) {
                    }
                }
                i = i2 + 1;
            }
        }
        return commonList;
    }

    /* renamed from: b */
    private boolean m12185b(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        synchronized (this.mLock) {
            this.afk = m12184g(this.afj.m12177cO(2));
            for (Map.Entry<CommonList.InterfaceC0599a, Integer> entry : this.afl.entrySet()) {
                CommonList.InterfaceC0599a key = entry.getKey();
                if (key != null) {
                    key.mo8829uA();
                }
            }
        }
    }
}
