package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseArray;
import android.view.View;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bwl {
    private static final bzc<bwl> bRb = new bzc<bwl>() { // from class: com.kingroot.kinguser.bwl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: aiQ */
        public bwl create() {
            return new bwl();
        }
    };
    private bws bRc;
    private final List<bww> bRd;
    private bwk bRe;
    private bwi bRf;
    private bwp bRg;
    private final Runnable bRh;
    private final C2650a bRi;
    private final Handler mHandler;
    private boolean mRunning;

    public static bwl aiO() {
        return bRb.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bwl$a */
    /* loaded from: classes.dex */
    public class C2650a extends bwn {
        private int bRq;
        private long bRr;
        private int mCount;

        private C2650a() {
            this.mCount = 1;
            this.bRq = 3;
            this.bRr = 0L;
        }

        /* renamed from: n */
        void m5302n(int i, long j) {
            this.mCount = 1;
            this.bRq = i;
            this.bRr = j;
        }

        @Override // com.kingroot.kinguser.bwn
        /* renamed from: ca */
        public void mo5298ca() {
            bww bwwVar = new bww();
            bwwVar.m5277bW(bwl.this.bRe.getContext());
            synchronized (bwl.this.bRd) {
                bwl.this.bRd.add(bwwVar);
            }
            if (this.mCount >= this.bRq) {
                synchronized (bwl.this) {
                    if (bwl.this.mRunning) {
                        bwl.this.aiP();
                    }
                }
                return;
            }
            this.mCount++;
            long currentTimeMillis = (this.bRr + (bwr.bSs * this.mCount)) - System.currentTimeMillis();
            if (currentTimeMillis > 0) {
                bwl.this.mHandler.postDelayed(bwl.this.bRi, currentTimeMillis);
            } else {
                bwl.this.mHandler.post(bwl.this.bRi);
            }
        }

        @Override // com.kingroot.kinguser.bwn
        /* renamed from: k */
        public void mo5297k(Throwable th) {
            if (bwl.this.bRg != null) {
                bwl.this.bRg.mo5295b(th, "stopTask", new byte[0]);
            }
        }
    }

    private bwl() {
        this.mRunning = false;
        this.bRd = new ArrayList();
        this.bRh = new bwn() { // from class: com.kingroot.kinguser.bwl.2
            @Override // com.kingroot.kinguser.bwn
            /* renamed from: ca */
            public void mo5298ca() {
                synchronized (bwl.this) {
                    if (bwl.this.mRunning) {
                        if (bwl.this.bRc != null) {
                            if (bwl.this.bRc.m5293cK(bwl.this.bRe.aiL())) {
                                long aiS = bwl.this.bRc.aiS();
                                bwl.this.bRi.m5302n((int) (bwl.this.bRe.aiL() / bwr.bSs), aiS);
                                long currentTimeMillis = (aiS + bwr.bSs) - System.currentTimeMillis();
                                if (currentTimeMillis > 0) {
                                    bwl.this.mHandler.postDelayed(bwl.this.bRi, currentTimeMillis);
                                } else {
                                    bwl.this.mHandler.post(bwl.this.bRi);
                                }
                            }
                        }
                    }
                }
            }

            @Override // com.kingroot.kinguser.bwn
            /* renamed from: k */
            public void mo5297k(Throwable th) {
                if (bwl.this.bRg != null) {
                    bwl.this.bRg.mo5295b(th, "startTask", new byte[0]);
                }
            }
        };
        this.bRi = new C2650a();
        HandlerThread handlerThread = new HandlerThread("TuringMMCore");
        handlerThread.start();
        this.mHandler = new Handler(handlerThread.getLooper());
    }

    /* renamed from: a */
    public void m5318a(bwi bwiVar) {
        this.bRf = bwiVar;
    }

    /* renamed from: a */
    public void m5312a(bwp bwpVar) {
        this.bRg = bwpVar;
    }

    /* renamed from: a */
    public synchronized boolean m5316a(bwk bwkVar) {
        boolean z = true;
        synchronized (this) {
            Context context = bwkVar.getContext();
            if (context == null) {
                z = false;
            } else {
                bwt aiV = bwt.aiV();
                if (!aiV.aiW()) {
                    aiV.init(context);
                }
                if (this.mRunning) {
                    aiP();
                }
                this.bRe = bwkVar;
                this.mRunning = true;
                if (this.bRc == null) {
                    this.bRc = new bws(context);
                }
                reset();
                this.mHandler.postDelayed(this.bRh, bwkVar.aiM());
            }
        }
        return z;
    }

    public synchronized boolean aiP() {
        final ArrayList arrayList;
        boolean z = false;
        synchronized (this) {
            if (this.mRunning) {
                this.mRunning = false;
                if (this.bRe != null) {
                    this.mHandler.removeCallbacks(this.bRh);
                    this.mHandler.removeCallbacks(this.bRi);
                    if (this.bRc != null) {
                        this.bRc.aiR();
                        if (((int) (this.bRc.aiT() / bwr.bSs)) < 3) {
                            onFailed(-100);
                        } else {
                            final SparseArray<bwu> aiU = this.bRc.aiU();
                            if (aiU.size() == 0) {
                                onFailed(-101);
                            } else {
                                synchronized (this.bRd) {
                                    arrayList = new ArrayList(this.bRd);
                                }
                                if (arrayList.size() < 3) {
                                    onFailed(-102);
                                } else {
                                    final int aiK = this.bRe.aiK();
                                    final int action = this.bRe.getAction();
                                    final int aab = this.bRe.aab();
                                    this.mHandler.post(new bwn() { // from class: com.kingroot.kinguser.bwl.3
                                        @Override // com.kingroot.kinguser.bwn
                                        /* renamed from: ca */
                                        public void mo5298ca() {
                                            boolean z2;
                                            try {
                                                byi m5301a = bwm.m5301a(aiK, action, bwl.this.bRe.getContext(), aab, aiU, arrayList);
                                                if (bwl.this.bRf != null) {
                                                    z2 = bwl.this.bRf.mo5333a(aiK, action, m5301a);
                                                } else {
                                                    z2 = true;
                                                }
                                                if (z2) {
                                                    bwt.aiV().m5285b(aiK, action, m5301a);
                                                }
                                            } catch (IllegalArgumentException e) {
                                            }
                                        }

                                        @Override // com.kingroot.kinguser.bwn
                                        /* renamed from: k */
                                        public void mo5297k(Throwable th) {
                                            if (bwl.this.bRg != null) {
                                                bwl.this.bRg.mo5295b(th, "stopTask", new byte[0]);
                                            }
                                        }
                                    });
                                    z = true;
                                }
                            }
                        }
                    } else {
                        z = true;
                    }
                }
            } else {
                z = true;
            }
        }
        return z;
    }

    private void onFailed(int i) {
        if (this.bRf != null) {
            this.bRf.onFailed(i);
        }
    }

    /* renamed from: a */
    public synchronized void m5320a(final Context context, final String str, final bwq bwqVar) {
        bwt aiV = bwt.aiV();
        if (!aiV.aiW()) {
            aiV.init(context);
        }
        this.mHandler.post(new bwn() { // from class: com.kingroot.kinguser.bwl.4
            @Override // com.kingroot.kinguser.bwn
            /* renamed from: ca */
            public void mo5298ca() {
                Map<byi, List<String>> aiY = bwt.aiV().aiY();
                if (aiY.size() == 0) {
                    bwqVar.onError(-1);
                    return;
                }
                bym m5242ch = bxh.ajA().m5242ch(context);
                int ajD = bxl.ajC().ajD();
                for (byi byiVar : aiY.keySet()) {
                    byiVar.bTW = System.currentTimeMillis();
                    byiVar.bTX = str;
                    byiVar.bUi = m5242ch;
                    byiVar.bUk = ajD;
                    Map<byr, String> m5182cm = byc.ajQ().m5182cm(context);
                    if (!m5182cm.isEmpty()) {
                        byiVar.bTY.addAll(m5182cm.keySet());
                    }
                    boolean z = false;
                    if (bwqVar instanceof bwh) {
                        z = bwl.this.m5319a((bwh) bwqVar, byiVar);
                    } else if (bwqVar instanceof bwj) {
                        z = bwl.this.m5317a((bwj) bwqVar, byiVar);
                    }
                    if (z) {
                        for (String str2 : aiY.get(byiVar)) {
                            try {
                                new File(str2).delete();
                            } catch (Throwable th) {
                            }
                        }
                        if (!m5182cm.isEmpty()) {
                            for (String str3 : m5182cm.values()) {
                                try {
                                    new File(str3).delete();
                                } catch (Throwable th2) {
                                }
                            }
                        }
                    }
                }
            }

            @Override // com.kingroot.kinguser.bwn
            /* renamed from: k */
            public void mo5297k(Throwable th) {
                if (bwl.this.bRg != null) {
                    bwl.this.bRg.mo5295b(th, "identify", new byte[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m5319a(bwh bwhVar, byi byiVar) {
        if (byiVar.bQZ == 0) {
            byq mo5335a = bwhVar.mo5335a(4103, byiVar);
            if (mo5335a != null && mo5335a.errorCode == 0) {
                return true;
            }
        } else {
            byp mo5334b = bwhVar.mo5334b(4105, byiVar);
            if (mo5334b != null && mo5334b.errCode == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m5317a(bwj bwjVar, byi byiVar) {
        if (byiVar.bQZ == 0) {
            byq m5332a = bwjVar.m5332a("userIdentify", "reportWup", byiVar);
            if (m5332a != null && m5332a.errorCode == 0) {
                return true;
            }
        } else {
            byp m5331b = bwjVar.m5331b("sensorReport", "sensorInsightReportWup", byiVar);
            if (m5331b != null && m5331b.errCode == 0) {
                return true;
            }
        }
        return false;
    }

    private void reset() {
        if (this.bRc != null) {
            this.bRc.reset();
        }
        synchronized (this.bRd) {
            this.bRd.clear();
        }
    }

    /* renamed from: a */
    public static boolean m5321a(Context context, int i, View view) {
        return bwy.aji().m5268b(context, i, view);
    }

    /* renamed from: c */
    public static boolean m5309c(int i, View view) {
        return byc.ajQ().m5180d(i, view);
    }

    /* renamed from: bU */
    public static void m5310bU(Context context) {
        bwy.aji().init(context);
    }
}
