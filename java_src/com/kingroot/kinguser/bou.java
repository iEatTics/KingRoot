package com.kingroot.kinguser;

import android.os.SystemClock;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class bou {
    private bpi bFN;

    /* renamed from: a */
    private long f1840a = 0;

    /* renamed from: c */
    private long f1841c = 0;

    /* renamed from: d */
    private long f1842d = 0;

    /* renamed from: e */
    private int f1843e = 0;
    private C2542a bFO = new C2542a((byte) 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bou$a */
    /* loaded from: classes.dex */
    public static class C2542a {

        /* renamed from: a */
        private long f1844a;

        /* renamed from: b */
        private long f1845b;
        private List bFP;

        /* renamed from: c */
        private int f1846c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.kingroot.kinguser.bou$a$a */
        /* loaded from: classes.dex */
        public static class C2543a {

            /* renamed from: a */
            public int f1847a;

            /* renamed from: b */
            public int f1848b = 0;

            public C2543a(int i) {
                this.f1847a = 0;
                this.f1847a = i;
            }
        }

        private C2542a() {
            this.f1844a = 0L;
            this.f1845b = 0L;
            this.f1846c = 0;
            this.bFP = new LinkedList();
        }

        /* synthetic */ C2542a(byte b) {
            this();
        }

        /* renamed from: a */
        public final int m6027a() {
            return this.f1846c;
        }

        /* renamed from: a */
        public final void m6026a(int i) {
            boolean z;
            boolean z2 = true;
            int i2 = 0;
            boolean z3 = i <= 0;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            int i3 = (int) (elapsedRealtime - this.f1844a);
            this.f1844a = elapsedRealtime;
            if (this.bFP.size() != 0) {
                Iterator it = this.bFP.iterator();
                while (true) {
                    z = z3;
                    if (!it.hasNext()) {
                        break;
                    }
                    C2543a c2543a = (C2543a) it.next();
                    c2543a.f1848b += i3;
                    if (z || c2543a.f1848b <= 2000) {
                        z3 = z;
                    } else {
                        c2543a.f1848b = 0;
                        c2543a.f1847a = i;
                        z3 = true;
                    }
                }
                if (!z && this.bFP.size() <= (2000 / bnz.f1796f) + 1) {
                    this.bFP.add(new C2543a(i));
                }
                if (elapsedRealtime - this.f1845b <= 200) {
                    z2 = false;
                }
            } else if (!z3) {
                this.bFP.add(new C2543a(i));
            }
            if (z2) {
                if (this.bFP.size() != 0) {
                    long j = 0;
                    for (C2543a c2543a2 : this.bFP) {
                        j = c2543a2.f1848b <= 2000 ? c2543a2.f1847a + j : j;
                    }
                    i2 = (int) ((1000 * j) / 2000);
                }
                this.f1846c = i2;
                this.f1845b = elapsedRealtime;
            }
        }
    }

    public bou(bpi bpiVar) {
        this.bFN = bpiVar;
    }

    /* renamed from: a */
    public final void m6032a() {
        this.f1840a = SystemClock.elapsedRealtime();
        this.f1841c = 0L;
        this.f1842d = 0L;
    }

    /* renamed from: a */
    public final void m6031a(int i, int i2) {
        this.f1843e += i2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.f1840a;
        this.f1840a = elapsedRealtime;
        bpi bpiVar = this.bFN;
        bpiVar.f1949j = j + bpiVar.f1949j;
        this.bFO.m6026a(i);
        this.bFN.f1953q = this.bFO.m6027a();
    }

    /* renamed from: b */
    public final void m6030b() {
        this.f1841c = System.currentTimeMillis();
    }

    /* renamed from: c */
    public final void m6029c() {
        this.f1842d = System.currentTimeMillis();
    }

    /* renamed from: d */
    public final long m6028d() {
        return this.f1842d - this.f1841c;
    }
}
