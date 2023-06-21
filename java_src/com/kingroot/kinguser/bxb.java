package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
class bxb {
    private int aie;
    private Map<Integer, byj> bSW = new HashMap();

    public bxb(int i) {
        this.aie = i;
    }

    /* renamed from: kN */
    public synchronized void m5262kN(int i) {
        byj byjVar = new byj();
        byjVar.bUr = i;
        byjVar.bJE = this.aie;
        byjVar.bUs = System.currentTimeMillis();
        this.bSW.put(Integer.valueOf(i), byjVar);
    }

    public List<byj> ajl() {
        return new ArrayList(this.bSW.values());
    }

    public void reset() {
        synchronized (this.bSW) {
            this.bSW.clear();
        }
    }
}
