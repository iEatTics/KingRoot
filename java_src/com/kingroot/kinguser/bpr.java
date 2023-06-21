package com.kingroot.kinguser;

import com.kingroot.loader.common.KlConst;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class bpr {
    private static bpr bHH = new bpr();

    /* renamed from: a */
    private Map f1967a = new HashMap();

    /* renamed from: b */
    private Map f1968b = new HashMap();
    private bpp bHF;
    private bpp bHG;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bpr$a */
    /* loaded from: classes.dex */
    public static class ThreadFactoryC2558a implements ThreadFactory {

        /* renamed from: a */
        private static final AtomicInteger f1969a = new AtomicInteger(1);
        private final ThreadGroup bHI;
        private final AtomicInteger bHJ = new AtomicInteger(1);

        /* renamed from: d */
        private final String f1970d;

        ThreadFactoryC2558a(String str) {
            SecurityManager securityManager = System.getSecurityManager();
            this.bHI = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.f1970d = str + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + f1969a.getAndIncrement() + "-thread-";
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.bHI, runnable, this.f1970d + this.bHJ.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            try {
                thread.setPriority(bnz.f1794d);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return thread;
        }
    }

    private bpr() {
    }

    public static bpr ahd() {
        return bHH;
    }

    /* renamed from: b */
    private synchronized bpl m5885b(bon bonVar) {
        bpl bplVar;
        int maximumPoolSize;
        synchronized (this) {
            Integer num = (Integer) this.f1968b.get(bonVar);
            int m6061j = bok.m6061j(num == null ? bonVar == bon.Cate_DefaultEase ? 5 : 2 : num.intValue(), 1, bonVar == bon.Cate_DefaultEase ? 10 : 5);
            bpl bplVar2 = (bpl) this.f1967a.get(bonVar);
            if (bplVar2 == null) {
                bpk bpkVar = new bpk(64);
                bpl bplVar3 = new bpl(1, m6061j, 60L, TimeUnit.MILLISECONDS, bpkVar, new ThreadFactoryC2558a(bonVar.name()));
                bpkVar.m5898a(bplVar3);
                this.f1967a.put(bonVar, bplVar3);
                bplVar = bplVar3;
                maximumPoolSize = m6061j;
            } else {
                bplVar2.setMaximumPoolSize(m6061j);
                bplVar = bplVar2;
                maximumPoolSize = m6061j - bplVar2.getMaximumPoolSize();
            }
            if (this.bHF == null) {
                bpn bpnVar = new bpn(16);
                this.bHF = new bpp(1, (maximumPoolSize <= 0 ? 1 : maximumPoolSize) + 1, 60L, TimeUnit.MILLISECONDS, bpnVar, new ThreadFactoryC2558a("HallyDownload-DirectPool"));
                bpnVar.m5892a(this.bHF);
            } else {
                this.bHF.setMaximumPoolSize(this.bHF.getMaximumPoolSize() + maximumPoolSize);
            }
            if (bonVar != bon.Cate_DefaultEase) {
                if (this.bHG == null) {
                    bpn bpnVar2 = new bpn(16);
                    if (maximumPoolSize <= 0) {
                        maximumPoolSize = 1;
                    }
                    this.bHG = new bpp(1, maximumPoolSize + 1, 60L, TimeUnit.MILLISECONDS, bpnVar2, new ThreadFactoryC2558a("HallyDownload-SchedulePool"));
                    bpnVar2.m5892a(this.bHG);
                } else {
                    this.bHG.setMaximumPoolSize(maximumPoolSize + this.bHG.getMaximumPoolSize());
                }
            }
        }
        return bplVar;
    }

    /* renamed from: a */
    public final synchronized bpj m5886a(Runnable runnable, bon bonVar) {
        bpl bplVar;
        bplVar = (bpl) this.f1967a.get(bonVar);
        if (bplVar == null) {
            bplVar = m5885b(bonVar);
        }
        return new bpj(bplVar.submit(runnable));
    }

    /* renamed from: b */
    public final synchronized void m5884b(bon bonVar, int i) {
        if (bonVar != null && i > 0) {
            this.f1968b.put(bonVar, Integer.valueOf(bok.m6061j(i, 1, bonVar == bon.Cate_DefaultEase ? 10 : 5)));
            if (((bpl) this.f1967a.get(bonVar)) != null) {
                m5885b(bonVar);
            }
        }
    }

    /* renamed from: i */
    public final bpj m5883i(Runnable runnable) {
        return new bpj(this.bHF.submit(runnable));
    }

    /* renamed from: j */
    public final bpj m5882j(Runnable runnable) {
        return new bpj(this.bHG.submit(runnable));
    }
}
