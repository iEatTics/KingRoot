package com.kingroot.kinguser;

import android.os.Handler;
import android.support.annotation.NonNull;
import android.util.SparseArray;
/* loaded from: classes.dex */
public class ayd {

    /* renamed from: ZE */
    private static final Handler f1636ZE = new Handler(HandlerThreadC3843wn.m1547nw().getLooper());
    private static final SparseArray<RunnableC2019b> bcF = new SparseArray<>(3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ayd$a */
    /* loaded from: classes.dex */
    public static class C2018a {
        public final Runnable bcH;
        public final long bcI;

        /* renamed from: id */
        public final int f1637id;

        C2018a(int i, @NonNull Runnable runnable, long j) {
            this.f1637id = i;
            this.bcH = runnable;
            this.bcI = j;
        }

        /* renamed from: a */
        boolean m8030a(C2018a c2018a) {
            return this.f1637id == c2018a.f1637id && this.bcH == c2018a.bcH && this.bcI == c2018a.bcI;
        }
    }

    /* renamed from: com.kingroot.kinguser.ayd$b */
    /* loaded from: classes.dex */
    static class RunnableC2019b implements Runnable {
        private final C2018a bcJ;

        RunnableC2019b(@NonNull C2018a c2018a) {
            this.bcJ = c2018a;
        }

        @NonNull
        /* renamed from: UO */
        C2018a m8029UO() {
            return this.bcJ;
        }

        @Override // java.lang.Runnable
        public void run() {
            long currentTimeMillis = System.currentTimeMillis();
            aku.m10709Gn().m10708a(this.bcJ.f1637id, currentTimeMillis);
            try {
                this.bcJ.bcH.run();
            } catch (Throwable th) {
            }
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (currentTimeMillis2 < 0) {
                ayd.f1636ZE.postDelayed(this, this.bcJ.bcI);
            } else if (this.bcJ.bcI > currentTimeMillis2) {
                ayd.f1636ZE.postDelayed(this, this.bcJ.bcI - currentTimeMillis2);
            } else {
                ayd.f1636ZE.post(this);
            }
        }
    }

    /* renamed from: a */
    public static boolean m8032a(int i, @NonNull Runnable runnable, long j) {
        if (j <= 0) {
            return false;
        }
        final C2018a c2018a = new C2018a(i, runnable, j);
        f1636ZE.post(new Runnable() { // from class: com.kingroot.kinguser.ayd.1
            @Override // java.lang.Runnable
            public void run() {
                RunnableC2019b runnableC2019b = (RunnableC2019b) ayd.bcF.get(C2018a.this.f1637id);
                if (runnableC2019b != null) {
                    if (!runnableC2019b.m8029UO().m8030a(C2018a.this)) {
                        ayd.f1636ZE.removeCallbacks(runnableC2019b);
                    } else {
                        return;
                    }
                }
                RunnableC2019b runnableC2019b2 = new RunnableC2019b(C2018a.this);
                ayd.bcF.put(C2018a.this.f1637id, runnableC2019b2);
                long currentTimeMillis = System.currentTimeMillis();
                long m10707eS = aku.m10709Gn().m10707eS(C2018a.this.f1637id);
                if (m10707eS > currentTimeMillis) {
                    ayd.f1636ZE.post(runnableC2019b2);
                } else if (currentTimeMillis - m10707eS >= C2018a.this.bcI) {
                    ayd.f1636ZE.post(runnableC2019b2);
                } else {
                    ayd.f1636ZE.postDelayed(runnableC2019b2, (m10707eS + C2018a.this.bcI) - currentTimeMillis);
                }
            }
        });
        return true;
    }

    /* renamed from: hF */
    public static void m8031hF(final int i) {
        f1636ZE.post(new Runnable() { // from class: com.kingroot.kinguser.ayd.2
            @Override // java.lang.Runnable
            public void run() {
                RunnableC2019b runnableC2019b = (RunnableC2019b) ayd.bcF.get(i);
                if (runnableC2019b != null) {
                    ayd.f1636ZE.removeCallbacks(runnableC2019b);
                    ayd.bcF.delete(i);
                }
            }
        });
    }
}
