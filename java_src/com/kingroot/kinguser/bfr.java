package com.kingroot.kinguser;

import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bfr extends avj {
    private static volatile bfr bnq;
    private AtomicBoolean amT;
    private bed aoL;
    private List<UrlCheckRule> bnr;
    private final Object mLock;

    private bfr() {
        super(40576);
        this.bnr = new ArrayList();
        this.mLock = new Object();
        this.amT = new AtomicBoolean(true);
        this.aoL = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bfr.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                C2585br Rw = bfr.this.m8833Rw();
                if (Rw != null && Rw.f2063kU != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<C2565bq> it = Rw.f2063kU.iterator();
                    while (it.hasNext()) {
                        arrayList.add(bfr.this.m7238b(it.next()));
                    }
                    synchronized (bfr.this.mLock) {
                        bfr.this.bnr.clear();
                        bfr.this.bnr.addAll(arrayList);
                    }
                    bfr.this.amT.set(false);
                }
                bfp.aay().m7251bP(bfr.this.bnr);
            }
        });
        m7236dO(false);
    }

    public static bfr aaH() {
        if (bnq == null) {
            synchronized (bfr.class) {
                if (bnq == null) {
                    bnq = new bfr();
                }
            }
        }
        return bnq;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        this.amT.set(true);
        m7236dO(false);
    }

    /* renamed from: dO */
    public void m7236dO(boolean z) {
        if (this.amT.get() || z) {
            beg.m7461Zj().m7450c(this.aoL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public UrlCheckRule m7238b(C2565bq c2565bq) {
        String valueOf;
        try {
            int parseInt = Integer.parseInt(c2565bq.f2002kM);
            if (parseInt == 3) {
                try {
                    valueOf = String.valueOf(C3952zh.m1312pq().getApplicationInfo(c2565bq.f2003kN, 0).uid);
                } catch (Exception e) {
                }
            } else {
                valueOf = c2565bq.f2003kN;
            }
            return new UrlCheckRule(parseInt, valueOf, "1".equals(c2565bq.f2004kO) ? 1 : 0, true);
        } catch (Exception e2) {
            return null;
        }
    }
}
