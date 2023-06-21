package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.ben;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class beg implements ben.InterfaceC2134a {
    private static final String TAG = aiq.asi + "_KJobManager";
    private static final cce<beg> sInstance = new cce<beg>() { // from class: com.kingroot.kinguser.beg.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Zn */
        public beg create() {
            return new beg();
        }
    };
    private C3637tk anQ;
    private final ben bkT;
    private final ben bkU;
    private final ExecutorC2124a bkV;
    private final AtomicInteger bkW;
    private final Object bkX;

    /* renamed from: Zj */
    public static beg m7461Zj() {
        return sInstance.get();
    }

    private beg() {
        this.bkW = new AtomicInteger(0);
        this.anQ = C3637tk.m2167cS("KJobManager");
        this.bkX = new Object();
        this.bkT = new ben(bdz.CORE_POOL_SIZE, bdz.MAXIMUM_POOL_SIZE, 3L, new ben.C2135b(), bdz.bkh, 10, bec.Normal);
        this.bkU = new ben(bdz.bkf, bdz.bkg, 3L, new ben.C2135b(), bdz.bkh, 10, bec.Light_Weight);
        this.bkU.m7417a(this);
        this.bkT.m7417a(this);
        this.bkV = new ExecutorC2124a();
    }

    /* renamed from: b */
    public void m7451b(@NonNull bek bekVar) {
        m7450c(bej.m7421c(bekVar));
    }

    /* renamed from: a */
    public void m7453a(@NonNull bek bekVar, List<Object> list) {
        m7456a(bej.m7421c(bekVar), list);
    }

    /* renamed from: c */
    public boolean m7450c(@NonNull bed bedVar) {
        C3948zd.m1327k(bedVar);
        return m7448e(bedVar);
    }

    /* renamed from: a */
    public boolean m7454a(@NonNull bed bedVar, Object... objArr) {
        if (objArr == null) {
            return m7450c(bedVar);
        }
        C3948zd.m1327k(bedVar);
        return m7456a(bedVar, Arrays.asList(objArr));
    }

    /* renamed from: a */
    public boolean m7456a(@NonNull bed bedVar, final List<Object> list) {
        C3948zd.m1327k(bedVar);
        if (!C3942yy.m1351d(list)) {
            bedVar.bkC = new bed.InterfaceC2117a() { // from class: com.kingroot.kinguser.beg.2
                @Override // com.kingroot.kinguser.bed.InterfaceC2117a
                /* renamed from: nF */
                public List<Object> mo7445nF() {
                    return list;
                }
            };
        }
        return m7448e(bedVar);
    }

    /* renamed from: d */
    public void m7449d(bed bedVar) {
        m7455a(bedVar, false);
    }

    /* renamed from: a */
    public void m7455a(bed bedVar, boolean z) {
        Future m7474Zh;
        synchronized (this.bkX) {
            C3948zd.m1327k(bedVar);
            List<bee> arrayList = new ArrayList<>();
            switch (bedVar.m7482Zd()) {
                case Normal:
                    arrayList = this.bkT.m7412k(bedVar);
                    break;
                case Light_Weight:
                    arrayList = this.bkU.m7412k(bedVar);
                    break;
                case RunOnMain:
                    this.bkV.m7444d(bedVar.m7483Zc());
                    break;
            }
            if (!C3942yy.m1351d(arrayList)) {
                for (bee beeVar : arrayList) {
                    if (beeVar != null && (m7474Zh = beeVar.m7474Zh()) != null) {
                        m7474Zh.cancel(z);
                    }
                }
            }
        }
    }

    /* renamed from: e */
    private boolean m7448e(@NonNull bed bedVar) {
        boolean z;
        synchronized (this.bkX) {
            if (m7447f(bedVar)) {
                z = false;
            } else {
                switch (bedVar.m7482Zd()) {
                    case Normal:
                        bee m7463b = bef.m7463b(bedVar);
                        m7463b.m7469a(this.bkT.submit(m7463b));
                        m7463b.m7465ct(90000L);
                        bedVar.m7479a(beb.WAITING);
                        bedVar.m7480Zf();
                        break;
                    case Light_Weight:
                        bee m7463b2 = bef.m7463b(bedVar);
                        m7463b2.m7469a(this.bkU.submit(m7463b2));
                        m7463b2.m7465ct(20000L);
                        bedVar.m7479a(beb.WAITING);
                        bedVar.m7480Zf();
                        break;
                    case RunOnMain:
                        this.bkV.execute(bedVar.m7483Zc());
                        break;
                }
                z = true;
            }
        }
        return z;
    }

    /* renamed from: f */
    private boolean m7447f(bed bedVar) {
        if (bedVar.m7481Ze()) {
            return this.bkT.m7413j(bedVar) || this.bkU.m7413j(bedVar);
        }
        return false;
    }

    @Override // com.kingroot.kinguser.ben.InterfaceC2134a
    /* renamed from: a */
    public void mo7409a(ben benVar, bee beeVar) {
        beh.m7443Zo().mo7433a(beh.m7441c(beeVar.m7475Zg().m7482Zd()), beeVar.m7473Zi());
        beh.m7443Zo().mo7435a(beh.m7441c(beeVar.m7475Zg().m7482Zd()));
        beh.m7443Zo().mo7434a(beh.m7441c(beeVar.m7475Zg().m7482Zd()), benVar.m7418Zu());
        m7460Zk();
    }

    @Override // com.kingroot.kinguser.ben.InterfaceC2134a
    /* renamed from: b */
    public void mo7408b(ben benVar, bee beeVar) {
        m7459Zl();
    }

    /* renamed from: Zk */
    private void m7460Zk() {
        if (KApplication.m13450hT() == 1 && this.bkW.decrementAndGet() == 0 && m7458Zm() == 0 && this.anQ != null) {
            this.anQ.release();
        }
    }

    /* renamed from: Zl */
    private void m7459Zl() {
        if (KApplication.m13450hT() == 1) {
            if ((this.bkW.incrementAndGet() > 0 || m7458Zm() != 0) && this.anQ != null && !this.anQ.m2164jN()) {
                this.anQ.lock();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.beg$a */
    /* loaded from: classes.dex */
    public static class ExecutorC2124a implements Executor {
        private ExecutorC2124a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            C3840wl.m1552c(runnable);
        }

        /* renamed from: d */
        public void m7444d(@NonNull Runnable runnable) {
            C3840wl.m1550d(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public int m7457a(bec becVar) {
        switch (becVar) {
            case Normal:
                return this.bkT.getCorePoolSize();
            case Light_Weight:
                return this.bkU.getCorePoolSize();
            default:
                return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int m7452b(bec becVar) {
        switch (becVar) {
            case Normal:
                return this.bkT.getMaximumPoolSize();
            case Light_Weight:
                return this.bkU.getMaximumPoolSize();
            default:
                return 0;
        }
    }

    /* renamed from: Zm */
    int m7458Zm() {
        return this.bkT.getQueue().size() + this.bkU.getQueue().size();
    }
}
