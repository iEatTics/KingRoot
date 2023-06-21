package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.util.Pair;
import com.kingroot.kinguser.cfb;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public final class cfg {
    private static cfg cbl = null;
    private ceu bYW;
    private int bux = Process.myPid();
    private ArrayList<C2752a> cbh = new ArrayList<>();
    private TreeMap<Integer, C2752a> cbi = new TreeMap<>();
    private TreeMap<Integer, Pair<JceStruct, cck>> cbj = new TreeMap<>();
    private Handler cbk = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.cfg.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 11:
                    Object[] objArr = (Object[]) message.obj;
                    C2752a c2752a = (C2752a) objArr[0];
                    if (c2752a.cbA != null) {
                        c2752a.cbA.mo457a(((Integer) objArr[1]).intValue(), c2752a.mCmdId, ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue(), c2752a.cbz);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private Handler cav = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cfg.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    try {
                        cfg.this.cav.removeMessages(1);
                        RunnableC2753b runnableC2753b = new RunnableC2753b();
                        synchronized (cfg.this.cbh) {
                            Iterator it = cfg.this.cbh.iterator();
                            while (it.hasNext()) {
                                C2752a c2752a = (C2752a) it.next();
                                runnableC2753b.m4551a(Integer.valueOf(c2752a.cbu), c2752a);
                                if ((c2752a.mFlag & 1073741824) == 0) {
                                    cfg.this.cbi.put(Integer.valueOf(c2752a.cbu), c2752a);
                                }
                            }
                            cfg.this.cbh.clear();
                        }
                        cfg.this.cbg.submit(runnableC2753b);
                        return;
                    } catch (Exception e) {
                        return;
                    }
                default:
                    return;
            }
        }
    };
    private Handler cax = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cfg.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    cfg.this.m4561a((C2752a) message.obj);
                    return;
                default:
                    return;
            }
        }
    };
    private cfb.C2725a cbf = new cfb.C2725a();
    private ExecutorService cbg = Executors.newSingleThreadExecutor();

    public static synchronized cfg alV() {
        cfg cfgVar;
        synchronized (cfg.class) {
            if (cbl == null) {
                cbl = new cfg(((cfh) ced.m4790j(cfh.class)).alL());
            }
            cfgVar = cbl;
        }
        return cfgVar;
    }

    private cfg(ceu ceuVar) {
        this.bYW = ceuVar;
    }

    /* renamed from: a */
    public final void m4562a(final long j, final int i, JceStruct jceStruct, final int i2, cck cckVar) {
        synchronized (this.cbj) {
            if (!this.cbj.containsKey(Integer.valueOf(i))) {
                this.cbj.put(Integer.valueOf(i), new Pair<>(jceStruct, cckVar));
                bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfg.4
                    @Override // java.lang.Runnable
                    public void run() {
                        cfg.this.bYW.m4688b(j, i, i2);
                    }
                }, "shark register push");
            } else {
                String str = "[shark_push]registerSharkPush(), only one listener is allowed for current version! callIdent: " + j + " cmdId: " + i + " flag: " + i2;
                if (cfd.alG()) {
                    throw new RuntimeException(str);
                }
            }
        }
    }

    /* renamed from: aA */
    public final cck m4557aA(final int i, final int i2) {
        cck cckVar = null;
        synchronized (this.cbj) {
            if (this.cbj.containsKey(Integer.valueOf(i))) {
                cckVar = (cck) this.cbj.remove(Integer.valueOf(i)).second;
                bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfg.5
                    @Override // java.lang.Runnable
                    public void run() {
                        cfg.this.bYW.m4689az(i, i2);
                    }
                }, "shark unregist push");
            }
        }
        return cckVar;
    }

    /* renamed from: a */
    public final void m4563a(int i, long j, int i2, long j2, int i3, JceStruct jceStruct, JceStruct jceStruct2, int i4, cci cciVar, long j3, long j4) {
        C2752a c2752a = new C2752a(i, this.cbf.alo(), i2, j2, j, i3, jceStruct, jceStruct2, i4, cciVar, j3, j4);
        synchronized (this.cbh) {
            this.cbh.add(c2752a);
        }
        this.cav.sendEmptyMessage(1);
    }

    /* renamed from: a */
    public final void m4564a(int i, final int i2, final int i3, final int i4, final byte[] bArr, final int i5, final int i6) {
        if (this.bux == i) {
            bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfg.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        synchronized (cfg.this.cbi) {
                            C2752a c2752a = (C2752a) cfg.this.cbi.get(Integer.valueOf(i2));
                            if (c2752a != null) {
                                JceStruct m4735a = ceq.m4735a(bArr, c2752a.cbz);
                                if (c2752a.cbz != m4735a) {
                                    c2752a.cbz = m4735a;
                                }
                                c2752a.mCmdId = i4;
                                cfg.this.m4560a(c2752a, Integer.valueOf(i3), Integer.valueOf(i5), Integer.valueOf(i6));
                                cfg.this.cbi.remove(Integer.valueOf(i2));
                            }
                        }
                    } catch (Exception e) {
                    }
                }
            }, "shark callback");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4561a(final C2752a c2752a) {
        this.cax.removeMessages(0, c2752a);
        if (this.cbi.containsKey(Integer.valueOf(c2752a.cbu))) {
            bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfg.7
                @Override // java.lang.Runnable
                public void run() {
                    cfg.this.m4564a(Process.myPid(), c2752a.cbu, 0, c2752a.mCmdId, null, cen.m4765kY(-2050000), 0);
                }
            }, "sharkProcessProxyTimeout");
        }
    }

    /* renamed from: a */
    protected final void m4560a(C2752a c2752a, Integer num, Integer num2, Integer num3) {
        if (c2752a.cbA != null) {
            cfe.m4637a("ocean", "[ocean]procallback: ECmd|" + c2752a.mCmdId + "|ipcSeqNo|" + c2752a.cbu + "|seqNo|" + num + "|ret|" + num2 + "|dataRetCode|" + num3 + "|ident|" + c2752a.cbx, null, null);
            switch (ccm.m4958kT(c2752a.mFlag)) {
                case 8:
                    this.cbk.sendMessage(this.cbk.obtainMessage(11, new Object[]{c2752a, num, num2, num3}));
                    return;
                case 16:
                    c2752a.cbA.mo457a(num.intValue(), c2752a.mCmdId, num2.intValue(), num3.intValue(), c2752a.cbz);
                    return;
                default:
                    c2752a.cbA.mo457a(num.intValue(), c2752a.mCmdId, num2.intValue(), num3.intValue(), c2752a.cbz);
                    return;
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.cfg$a */
    /* loaded from: classes.dex */
    public class C2752a {
        public int bux;
        public cci cbA;
        public long cbB;
        public long cbC = System.currentTimeMillis();
        public int cbu;
        public int cbv;
        public long cbw;
        public long cbx;
        public JceStruct cby;
        public JceStruct cbz;
        public int mCmdId;
        public int mFlag;
        public long mTimeout;

        C2752a(int i, int i2, int i3, long j, long j2, int i4, JceStruct jceStruct, JceStruct jceStruct2, int i5, cci cciVar, long j3, long j4) {
            this.mTimeout = -1L;
            this.cbB = -1L;
            this.bux = i;
            this.cbu = i2;
            this.cbv = i3;
            this.cbw = j;
            this.mCmdId = i4;
            this.cbx = j2;
            this.cby = jceStruct;
            this.cbz = jceStruct2;
            this.mFlag = i5;
            this.cbA = cciVar;
            this.mTimeout = j3;
            this.cbB = j4;
        }

        public boolean alO() {
            long abs = Math.abs(System.currentTimeMillis() - this.cbC);
            boolean z = abs >= ((this.mTimeout > 0L ? 1 : (this.mTimeout == 0L ? 0 : -1)) > 0 ? this.mTimeout : 185000L);
            if (z) {
                StringBuilder sb = new StringBuilder();
                sb.append("cmdId|").append(this.mCmdId);
                sb.append("|mIpcSeqNo|").append(this.cbu);
                sb.append("|mPushSeqNo|").append(this.cbv);
                sb.append("|mPushId|").append(this.cbw);
                sb.append("|mCallerIdent|").append(this.cbx);
                sb.append("|mTimeout|").append(this.mTimeout);
                sb.append("|time(s)|").append(abs / 1000);
                cfe.m4632c("ocean", "[ocean][time_out]SharkProcessProxy.SharkProxyTask.isTimeOut(), " + sb.toString(), null, null);
            }
            return z;
        }
    }

    /* renamed from: com.kingroot.kinguser.cfg$b */
    /* loaded from: classes.dex */
    class RunnableC2753b implements Runnable {
        private TreeMap<Integer, C2752a> cbD;

        private RunnableC2753b() {
            this.cbD = new TreeMap<>();
        }

        public Set<Map.Entry<Integer, C2752a>> alW() {
            TreeMap treeMap;
            synchronized (this.cbD) {
                treeMap = (TreeMap) this.cbD.clone();
            }
            return treeMap.entrySet();
        }

        /* renamed from: a */
        public void m4551a(Integer num, C2752a c2752a) {
            this.cbD.put(num, c2752a);
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean amN = cgr.amN();
            for (Map.Entry<Integer, C2752a> entry : alW()) {
                if (!amN) {
                    cfg.this.m4564a(Process.myPid(), entry.getValue().cbu, 0, entry.getValue().mCmdId, null, -1000002, 0);
                } else if (!entry.getValue().alO()) {
                    cfg.this.cax.sendMessageDelayed(Message.obtain(cfg.this.cax, 0, entry.getValue()), 185000L);
                    cfg.this.bYW.m4690a(entry.getValue().bux, entry.getValue().cbx, entry.getValue().cbu, entry.getValue().cbv, entry.getValue().cbw, entry.getValue().mCmdId, ceq.m4736a(entry.getValue().cby), entry.getValue().mFlag, entry.getValue().mTimeout, entry.getValue().cbB, entry.getValue().cbC);
                } else {
                    cfg.this.m4564a(Process.myPid(), entry.getValue().cbu, 0, entry.getValue().mCmdId, null, -1000017, 0);
                    cfg.this.bYW.mo2713i(entry.getValue().mCmdId, -1000017);
                }
            }
        }
    }
}
