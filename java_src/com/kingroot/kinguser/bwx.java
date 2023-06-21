package com.kingroot.kinguser;

import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bwx {
    private static final bzc<bwx> bRb = new bzc<bwx>() { // from class: com.kingroot.kinguser.bwx.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: ajh */
        public bwx create() {
            return new bwx();
        }
    };
    private Map<Integer, bxb> bSR = new HashMap();
    private int bSS = 0;

    bwx() {
    }

    public static bwx aje() {
        return bRb.get();
    }

    /* renamed from: aw */
    public void m5273aw(int i, int i2) {
        if (i2 == 0) {
            this.bSS++;
            if (!m5271kM(i)) {
                bxb bxbVar = new bxb(i);
                synchronized (this.bSR) {
                    this.bSR.put(Integer.valueOf(i), bxbVar);
                }
                return;
            }
            return;
        }
        bxb bxbVar2 = this.bSR.get(Integer.valueOf(i));
        if (bxbVar2 != null) {
            synchronized (this.bSR) {
                bxbVar2.m5262kN(i2);
            }
        }
    }

    /* renamed from: kM */
    public boolean m5271kM(int i) {
        return this.bSR.get(Integer.valueOf(i)) != null;
    }

    public int ajf() {
        return this.bSS;
    }

    public Map<Integer, bxb> ajg() {
        return new HashMap(this.bSR);
    }

    /* renamed from: gK */
    public void m5272gK() {
        synchronized (this.bSR) {
            for (bxb bxbVar : this.bSR.values()) {
                bxbVar.reset();
            }
        }
    }
}
