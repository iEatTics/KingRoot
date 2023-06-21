package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.kingroot.kinguser.cff;
import com.kingroot.kinguser.cfk;
import com.kingroot.kinguser.cfl;
import com.kingroot.kinguser.cft;
import com.kingroot.kinguser.cfv;
import com.kingroot.kinguser.cfx;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import tmsdk.common.TMSDKContext;
import tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver;
/* loaded from: classes.dex */
public class cfo implements cfk.InterfaceC2775a, cft.InterfaceC2794b, cft.InterfaceC2795c, cfx.InterfaceC2801a, SharkNetworkReceiver.InterfaceC4421a {
    private cff bYN;
    private ceu bYt;
    protected cfl.InterfaceC2779a cau;
    private cfy ccY;
    private cev ccZ;
    private cck cda;
    private InterfaceC2785d cdb;
    private cfk cdc;
    private cft cdd;
    private HandlerThread cdl;
    private Handler cdm;
    private Context mContext;
    private boolean bYx = false;
    private int cde = 0;
    private long cdf = 15000;
    private long cdg = 0;
    private boolean cdh = false;
    private LinkedList<C2787f> cdi = new LinkedList<>();
    private final Object cdj = new Object();
    private byte cdk = 0;
    private boolean cdn = false;
    private cfw<C2787f> cdo = new cfw<>(new Comparator<C2787f>() { // from class: com.kingroot.kinguser.cfo.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(C2787f c2787f, C2787f c2787f2) {
            return ccm.m4957kU(c2787f2.flag) - ccm.m4957kU(c2787f.flag);
        }
    });

    /* renamed from: com.kingroot.kinguser.cfo$d */
    /* loaded from: classes.dex */
    public interface InterfaceC2785d {
        /* renamed from: a */
        void mo4409a(cff.C2744d c2744d);
    }

    /* renamed from: c */
    static /* synthetic */ int m4435c(cfo cfoVar) {
        int i = cfoVar.cde;
        cfoVar.cde = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cfo$f */
    /* loaded from: classes.dex */
    public class C2787f {
        public cff.C2744d bYH;
        public ccn cdt;
        public int flag;

        public C2787f(int i, ccn ccnVar, cff.C2744d c2744d) {
            this.flag = 0;
            this.cdt = null;
            this.bYH = null;
            this.flag = i;
            this.cdt = ccnVar;
            this.bYH = c2744d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cfo$b */
    /* loaded from: classes.dex */
    public class C2783b extends AbstractC2784c {
        private int cdq;
        private byte cdr;
        private String mReason;

        public C2783b(int i, int i2, String str, byte b) {
            super(10999, i);
            this.cdq = 0;
            this.mReason = "";
            this.cdr = (byte) 0;
            this.cdq = i2;
            this.mReason = str;
            this.cdr = b;
        }

        @Override // com.kingroot.kinguser.cfo.AbstractC2784c
        /* renamed from: e */
        protected void mo4410e(C2235bg c2235bg) {
            cfc.alC().m4659a("TmsTcpManager", 999, this.seqNo, c2235bg, 30, 0);
            cfc.alC().m4651lf(this.seqNo);
            cfc.alC().m4655c(this.cdr);
        }

        @Override // com.kingroot.kinguser.cfo.AbstractC2784c
        /* renamed from: aB */
        protected void mo4411aB(int i, int i2) {
            if (this.cdq > 0) {
                cfo.this.cdn = true;
                cfo.this.cdk = (byte) 0;
            }
            boolean z = this.cdq <= 0 && cen.m4764kZ(i) && cfo.this.cde < 3 && cfo.this.cdc.amg() > 0;
            cfc.alC().m4659a("TmsTcpManager", 999, this.seqNo, null, 30, i);
            cfc.alC().m4663K(this.seqNo, z ? false : true);
            cfc.alC().m4655c(this.cdr);
            if (z) {
                int i3 = this.cdq + 1;
                this.cdq = i3;
                cfo.this.m4453a(13, "hb_retry:" + this.mReason + ":" + i, i3, 2000L, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cfo$a */
    /* loaded from: classes.dex */
    public class C2782a extends AbstractC2784c {
        private int cdq;
        private String mReason;

        public C2782a(int i, int i2, String str) {
            super(10997, i);
            this.cdq = 0;
            this.mReason = "";
            this.cdq = i2;
            this.mReason = str;
        }

        @Override // com.kingroot.kinguser.cfo.AbstractC2784c
        /* renamed from: e */
        protected void mo4410e(C2235bg c2235bg) {
            cfo.this.cdn = false;
            cfo.this.cdk = (byte) 1;
            cfo.this.cdh = false;
            cfc.alC().m4659a("TmsTcpManager", 997, this.seqNo, c2235bg, 30, 0);
            cfc.alC().m4651lf(this.seqNo);
            cfo.this.m4453a(2, null, 0, 0L, true);
        }

        @Override // com.kingroot.kinguser.cfo.AbstractC2784c
        /* renamed from: aB */
        protected void mo4411aB(int i, int i2) {
            int m4765kY = cen.m4765kY(i);
            boolean z = this.cdq <= 0 && cen.m4764kZ(m4765kY) && cfo.this.cde < 3 && cfo.this.cdc.amg() > 0;
            cfo.this.cdn = true;
            cfo.this.cdk = (byte) 0;
            cfo.this.cdh = true;
            cfc.alC().m4659a("TmsTcpManager", 997, this.seqNo, null, 30, m4765kY);
            cfc.alC().m4663K(this.seqNo, !z);
            cfo.this.m4453a(3, null, m4765kY, 0L, true);
            if (z) {
                cfo.m4435c(cfo.this);
                int i3 = this.cdq + 1;
                this.cdq = i3;
                cfo.this.m4453a(11, "delay_fp_retry:" + this.mReason + ":" + m4765kY, i3, 1000 * cfo.this.cdc.m4476fD().f1520ie, true);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.cfo$e */
    /* loaded from: classes.dex */
    class HandlerC2786e extends Handler {
        public HandlerC2786e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long j;
            switch (message.what) {
                case 0:
                    synchronized (cfo.this.cdj) {
                        C2787f c2787f = (C2787f) cfo.this.cdo.poll();
                        if (c2787f != null && c2787f.bYH != null) {
                            int i = 0;
                            cfm cfmVar = null;
                            if (c2787f.bYH.alO()) {
                                i = -17;
                                j = 0;
                            } else {
                                if ((c2787f.bYH.alQ() || c2787f.bYH.caJ) ? false : true) {
                                    if (cfo.this.cdk == 1) {
                                        if (!cfo.this.ccY.amM()) {
                                            if (!c2787f.bYH.caI) {
                                                cfo.this.m4425h(c2787f.bYH);
                                                synchronized (cfo.this.cdj) {
                                                    cfo.this.cdi.add(c2787f);
                                                }
                                                cfo.this.m4453a(11, "conn_broken_didnt_monitored", 0, 0L, true);
                                                return;
                                            }
                                            return;
                                        }
                                    } else if (cfo.this.cdk != 2) {
                                        if (cfo.this.cdk == 0) {
                                            if (!c2787f.bYH.caI) {
                                                cfo.this.m4425h(c2787f.bYH);
                                                synchronized (cfo.this.cdj) {
                                                    cfo.this.cdi.add(c2787f);
                                                }
                                                cfo.this.m4453a(11, "others_depend_on_fp", 0, 0L, true);
                                                return;
                                            }
                                            return;
                                        }
                                    } else if (!c2787f.bYH.caI) {
                                        cfo.this.m4423i(c2787f.bYH);
                                        synchronized (cfo.this.cdj) {
                                            cfo.this.cdi.add(c2787f);
                                        }
                                        return;
                                    } else {
                                        return;
                                    }
                                } else if (cfo.this.cdn) {
                                    cfo.this.cdn = false;
                                    i = cfo.this.m4415nW("disconnected_before_send");
                                    if (!c2787f.bYH.caJ) {
                                        cfo.this.cdk = (byte) 0;
                                    }
                                } else if (!cfo.this.ccY.amM()) {
                                    i = cfo.this.ams();
                                    if (!c2787f.bYH.caJ) {
                                        cfo.this.cdk = (byte) 0;
                                    }
                                }
                                if (i != 0) {
                                    j = 0;
                                } else {
                                    if (c2787f.bYH.caQ != null && c2787f.bYH.caQ.size() > 0) {
                                        Iterator<C2036az> it = c2787f.bYH.caQ.iterator();
                                        while (it.hasNext()) {
                                            C2036az next = it.next();
                                            if (next != null) {
                                                cfc.alC().m4661a("TmsTcpManager", next.cmd, next.seqNo, next, 11);
                                                if (next.f1641jX == 0) {
                                                    cfm cfmVar2 = cfmVar == null ? new cfm() : cfmVar;
                                                    cfmVar2.m4458lo(next.cmd);
                                                    cfmVar = cfmVar2;
                                                }
                                            }
                                        }
                                    }
                                    byte[] m4737a = ceq.m4737a(c2787f.bYH, true, cfo.this.bYN.getGuid(), cfo.this.bYt);
                                    if (m4737a == null) {
                                        i = -1500;
                                        j = 0;
                                    } else {
                                        long currentTimeMillis = System.currentTimeMillis();
                                        ccn ccnVar = c2787f.cdt;
                                        if (ccnVar == null) {
                                            i = cfo.this.ccY.m4363a(c2787f.bYH, m4737a);
                                        } else {
                                            ccnVar.setState(1);
                                            if (!ccnVar.akI()) {
                                                i = cfo.this.ccY.m4363a(c2787f.bYH, m4737a);
                                                ccnVar.setState(2);
                                            } else {
                                                i = -11;
                                                cfmVar = null;
                                                j = 0;
                                            }
                                        }
                                        j = System.currentTimeMillis() - currentTimeMillis;
                                        if (i == 0 && c2787f.bYH != null) {
                                            c2787f.bYH.caT = true;
                                        }
                                    }
                                }
                            }
                            int i2 = (i == 0 || i == -11) ? i : i - 40000000;
                            if (cfmVar != null) {
                                cfmVar.ccN = String.valueOf(ceq.m4729cs(cfo.this.mContext));
                                cfmVar.ccP = j;
                                cfmVar.bQX = cfo.this.ccY.amG();
                                cfmVar.errorCode = i2;
                                cfmVar.m4459g(cfo.this.bYt);
                            }
                            if (i2 == 0 || i2 == -11) {
                                cfl.m4470a(c2787f.bYH, 14, i2, 0);
                                synchronized (cfo.this.cdj) {
                                    if (!cfo.this.cdo.isEmpty()) {
                                        cfo.this.m4453a(0, null, 0, 0L, true);
                                    }
                                }
                                return;
                            }
                            cfl.m4470a(c2787f.bYH, 14, i2, 0);
                            cfo.this.m4451a(c2787f, i2);
                            LinkedList linkedList = new LinkedList();
                            synchronized (cfo.this.cdj) {
                                while (true) {
                                    C2787f c2787f2 = (C2787f) cfo.this.cdo.poll();
                                    if (c2787f2 != null) {
                                        linkedList.add(c2787f2);
                                    }
                                }
                            }
                            if (linkedList.size() > 0) {
                                Iterator it2 = linkedList.iterator();
                                while (it2.hasNext()) {
                                    C2787f c2787f3 = (C2787f) it2.next();
                                    ccn ccnVar2 = c2787f3.cdt;
                                    if (ccnVar2 != null) {
                                        ccnVar2.setState(2);
                                    }
                                    cfo.this.m4451a(c2787f3, i2);
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                case 1:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                default:
                    return;
                case 2:
                    LinkedList linkedList2 = null;
                    synchronized (cfo.this.cdj) {
                        if (cfo.this.cdi != null && cfo.this.cdi.size() > 0) {
                            linkedList2 = (LinkedList) cfo.this.cdi.clone();
                            cfo.this.cdi.clear();
                        }
                    }
                    if (linkedList2 != null && linkedList2.size() > 0) {
                        synchronized (cfo.this.cdj) {
                            Iterator it3 = linkedList2.iterator();
                            while (it3.hasNext()) {
                                C2787f c2787f4 = (C2787f) it3.next();
                                if (c2787f4 != null) {
                                    cfo.this.cdo.add(c2787f4);
                                }
                            }
                        }
                        cfo.this.m4453a(0, null, 0, 0L, true);
                    }
                    cfo.this.amv();
                    return;
                case 3:
                    cfo.this.m4418lq(3);
                    synchronized (cfo.this.cdj) {
                        if (cfo.this.cdi != null && cfo.this.cdi.size() > 0) {
                            LinkedList linkedList3 = (LinkedList) cfo.this.cdi.clone();
                            cfo.this.cdi.clear();
                            cfe.m4636b("TmsTcpManager", "fp failed, waiting tasks count: " + linkedList3.size(), null, null);
                            int i3 = message.arg1;
                            Iterator it4 = linkedList3.iterator();
                            while (it4.hasNext()) {
                                C2787f c2787f5 = (C2787f) it4.next();
                                if (c2787f5 != null && c2787f5.bYH != null && c2787f5.bYH.caQ != null && c2787f5.bYH.caQ.size() > 0) {
                                    Iterator<C2036az> it5 = c2787f5.bYH.caQ.iterator();
                                    while (it5.hasNext()) {
                                        C2036az next2 = it5.next();
                                        if (next2 != null) {
                                            cfc.alC().m4660a("TmsTcpManager", next2.cmd, next2.seqNo, next2, 9, (-700000000) + i3, (String) null);
                                        }
                                    }
                                    cfo.this.m4451a(c2787f5, (-700000000) + i3);
                                }
                            }
                        }
                    }
                    return;
                case 4:
                    cfo.this.amt();
                    return;
                case 9:
                    if (cfo.this.cdc.amg() > 0 && cfo.this.cde < 3) {
                        cfo.m4435c(cfo.this);
                        cfo.this.m4453a(11, "delay_fp_network_connected", 0, 1000 * cfo.this.cdc.m4476fD().f1521if, true);
                        return;
                    }
                    return;
                case 11:
                    cfo.this.m4454X(message.arg1, new StringBuilder().append(message.obj).toString());
                    return;
                case 12:
                    synchronized (cfo.this.cdj) {
                        if (cfo.this.cdi != null && cfo.this.cdi.size() > 0) {
                            LinkedList linkedList4 = (LinkedList) cfo.this.cdi.clone();
                            cfo.this.cdi.clear();
                            Iterator it6 = linkedList4.iterator();
                            while (it6.hasNext()) {
                                C2787f c2787f6 = (C2787f) it6.next();
                                if (c2787f6 != null && c2787f6.bYH != null && c2787f6.bYH.caQ != null && c2787f6.bYH.caQ.size() > 0) {
                                    Iterator<C2036az> it7 = c2787f6.bYH.caQ.iterator();
                                    while (it7.hasNext()) {
                                        C2036az next3 = it7.next();
                                        if (next3 != null) {
                                            cfc.alC().m4660a("TmsTcpManager", next3.cmd, next3.seqNo, next3, 10, -40001300, (String) null);
                                        }
                                    }
                                    cfo.this.m4451a(c2787f6, -40001300);
                                }
                            }
                        }
                    }
                    return;
                case 13:
                    cfo.this.m4456V(message.arg1, new StringBuilder().append(message.obj).toString());
                    return;
            }
        }
    }

    public cfo(ceu ceuVar, cfu cfuVar, cfl.InterfaceC2779a interfaceC2779a, InterfaceC2785d interfaceC2785d, cev cevVar, cff.InterfaceC2743c interfaceC2743c, cff cffVar) {
        this.mContext = null;
        this.ccY = null;
        this.cdl = null;
        this.cdm = null;
        this.mContext = TMSDKContext.akS();
        this.ccY = new cfy(this.mContext, this, cfuVar);
        m4430eY(cfuVar.mo4382fB());
        this.cdl = bze.ajZ().m5139nD("sendHandlerThread");
        this.cdl.start();
        this.cdm = new HandlerC2786e(this.cdl.getLooper());
        this.bYt = ceuVar;
        this.cau = interfaceC2779a;
        this.ccZ = cevVar;
        this.cdb = interfaceC2785d;
        this.bYN = cffVar;
        this.cdd = new cft(this.mContext, this, this);
        this.cdc = new cfk(ceuVar, this);
        m4440b(interfaceC2743c);
        SharkNetworkReceiver.alR().m11a(this);
    }

    /* renamed from: eY */
    private void m4430eY(boolean z) {
        this.bYx = z;
        if (z) {
            this.cdf = 15000L;
        }
    }

    /* renamed from: b */
    private void m4440b(cff.InterfaceC2743c interfaceC2743c) {
        this.cda = new cck() { // from class: com.kingroot.kinguser.cfo.2
            @Override // com.kingroot.kinguser.cck
            /* renamed from: a */
            public cfp<Long, Integer, JceStruct> mo2772a(int i, long j, int i2, JceStruct jceStruct) {
                if (jceStruct == null) {
                    return null;
                }
                switch (i2) {
                    case 11101:
                        return cfo.this.m4452a(j, (C1400ap) jceStruct);
                    default:
                        return null;
                }
            }
        };
        interfaceC2743c.mo4544a(0L, 11101, new C1400ap(), 0, this.cda, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public cfp<Long, Integer, JceStruct> m4452a(long j, C1400ap c1400ap) {
        if (c1400ap == null) {
            return null;
        }
        this.cdc.m4483c(c1400ap);
        C1051al c1051al = new C1051al();
        c1051al.f1468hr = c1400ap.f1515hr;
        c1051al.f1469hs = c1400ap.f1516hs;
        return new cfp<>(Long.valueOf(j), 1101, c1051al);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4451a(C2787f c2787f, int i) {
        if (c2787f != null && this.ccZ != null) {
            this.ccZ.mo4471a(c2787f.bYH, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m4432e(cff.C2744d c2744d) {
        if (!this.ccY.amN()) {
            this.cau.mo4465b(true, -40220000, c2744d);
        } else if (cej.akX()) {
            this.cau.mo4465b(true, -40230000, c2744d);
        } else {
            C2787f c2787f = new C2787f(32, null, c2744d);
            if (this.cdk == 1) {
                m4429f(c2744d);
            } else if (this.cdk == 2) {
                m4423i(c2744d);
                synchronized (this.cdj) {
                    this.cdi.add(c2787f);
                }
            } else if (this.cdk == 0) {
                m4425h(c2744d);
                synchronized (this.cdj) {
                    this.cdi.add(c2787f);
                }
                m4453a(11, "delay_send_for_others", 0, 0L, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m4429f(cff.C2744d c2744d) {
        if (!this.ccY.amN()) {
            this.cau.mo4465b(true, -40220000, c2744d);
        } else if (cej.akX()) {
            this.cau.mo4465b(true, -40230000, c2744d);
        } else {
            m4418lq(4);
            m4427g(c2744d);
            if (!c2744d.caI) {
                m4434cR(c2744d.caP);
            }
            C2787f c2787f = new C2787f(32, null, c2744d);
            synchronized (this.cdj) {
                this.cdo.add(c2787f);
            }
            m4453a(0, null, 0, 0L, true);
        }
    }

    /* renamed from: g */
    private void m4427g(cff.C2744d c2744d) {
        if (c2744d != null && c2744d.caQ != null && c2744d.caQ.size() > 0) {
            Iterator<C2036az> it = c2744d.caQ.iterator();
            while (it.hasNext()) {
                C2036az next = it.next();
                if (next != null) {
                    cfc.alC().m4661a("TmsTcpManager", next.cmd, next.seqNo, next, 6);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m4425h(cff.C2744d c2744d) {
        if (c2744d != null && c2744d.caQ != null && c2744d.caQ.size() > 0) {
            Iterator<C2036az> it = c2744d.caQ.iterator();
            while (it.hasNext()) {
                C2036az next = it.next();
                if (next != null) {
                    cfc.alC().m4661a("TmsTcpManager", next.cmd, next.seqNo, next, 8);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m4423i(cff.C2744d c2744d) {
        if (c2744d != null && c2744d.caQ != null && c2744d.caQ.size() > 0) {
            Iterator<C2036az> it = c2744d.caQ.iterator();
            while (it.hasNext()) {
                C2036az next = it.next();
                if (next != null) {
                    cfc.alC().m4661a("TmsTcpManager", next.cmd, next.seqNo, next, 7);
                }
            }
        }
    }

    /* renamed from: cR */
    private void m4434cR(long j) {
        amy();
        this.cdc.m4481cQ(j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void alZ() {
        if (cej.akX()) {
            this.cdc.ami();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int ams() {
        if (this.ccY.amM()) {
            return 0;
        }
        if (!this.ccY.amN()) {
            return -220000;
        }
        return this.ccY.amP();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: nW */
    public int m4415nW(String str) {
        return this.ccY.amQ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void amt() {
        if (this.cdc.amg() <= 0) {
            this.cdc.amh();
            this.cdk = (byte) 0;
            this.cde = 0;
            amx();
            synchronized (this.cdj) {
                this.cdo.clear();
            }
            long currentTimeMillis = System.currentTimeMillis();
            int amO = this.ccY.amO();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            cfu amq = this.ccY.amq();
            if (amq != null && amq.mo4388eP(true) != null) {
                cfm cfmVar = new cfm();
                cfv.C2797b mo4388eP = amq.mo4388eP(true);
                cfmVar.ccK = mo4388eP.amE();
                cfmVar.ccL = String.valueOf(mo4388eP.getPort());
                cfmVar.ccN = String.valueOf(ceq.m4729cs(this.mContext));
                cfmVar.bQX = this.ccY.amG();
                cfmVar.errorCode = amO;
                cfmVar.ccP = currentTimeMillis2;
                cfmVar.m4461e(this.bYt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m4453a(int i, Object obj, int i2, long j, boolean z) {
        if (this.cdm != null) {
            if (z) {
                this.cdm.removeMessages(i);
            }
            this.cdm.sendMessageDelayed(Message.obtain(this.cdm, i, i2, 0, obj), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lq */
    public final void m4418lq(int i) {
        if (this.cdm != null) {
            this.cdm.removeMessages(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V */
    public void m4456V(int i, String str) {
        ArrayList arrayList = new ArrayList();
        C2036az c2036az = new C2036az();
        c2036az.cmd = 999;
        c2036az.seqNo = cfb.aly().alo();
        arrayList.add(c2036az);
        byte alB = cfb.alA().alB();
        long j = i <= 0 ? 30L : 60L;
        cff.C2744d c2744d = new cff.C2744d(1024, false, true, false, 0L, arrayList, new C2783b(c2036az.seqNo, i, str, alB), 1000 * j);
        c2744d.caU = alB;
        cfc.alC().m4657b(c2036az.seqNo, 1000 * j, str);
        cfc.alC().m4654c(alB, c2744d.caN);
        this.cdb.mo4409a(c2744d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean amu() {
        if (this.cdk == 1) {
            return true;
        }
        if (this.cdk == 2) {
            return this.cdg > 0 && Math.abs(System.currentTimeMillis() - this.cdg) < 10000;
        }
        return this.cdg <= 0 || Math.abs(System.currentTimeMillis() - this.cdg) > 1800000 || !this.cdh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public void m4455W(int i, String str) {
        m4453a(11, str, i, 0L, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X */
    public void m4454X(int i, String str) {
        if (this.cdk != 1 && this.cdk != 2) {
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(currentTimeMillis - this.cdg) < this.cdf) {
                m4453a(12, null, 0, 0L, true);
                m4453a(11, "delay_too_freq:" + str, i, this.cdf, true);
                return;
            }
            int i2 = this.cdc.m4476fD().f1521if;
            if (cey.alt().m4680cP(1000 * i2)) {
                m4453a(11, "delay_waitfor_stable:" + str, i, 1000 * i2, true);
                return;
            }
            this.cdg = currentTimeMillis;
            this.cdk = (byte) 2;
            m4418lq(11);
            C2036az c2036az = new C2036az();
            c2036az.cmd = 997;
            c2036az.seqNo = cfb.aly().alo();
            c2036az.data = ceq.m4744a(this.mContext, (JceStruct) null, c2036az.cmd, c2036az);
            ArrayList arrayList = new ArrayList();
            arrayList.add(c2036az);
            cfc.alC().m4657b(c2036az.seqNo, -1L, str);
            this.cdb.mo4409a(new cff.C2744d(1024, false, false, true, 0L, arrayList, new C2782a(c2036az.seqNo, i, str), 0L));
        }
    }

    public void amb() {
        this.cdc.amb();
    }

    public void amc() {
        this.cdc.amc();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void amv() {
        amx();
        amw();
    }

    private synchronized void amw() {
        if (this.cdd != null) {
            this.cdd.start();
        }
    }

    private synchronized void amx() {
        if (this.cdd != null) {
            this.cdd.stop();
        }
    }

    private synchronized void amy() {
        if (this.cdd != null) {
            this.cdd.reset();
        }
    }

    @Override // com.kingroot.kinguser.cfk.InterfaceC2775a
    public void amp() {
        m4455W(0, "tcp_control");
    }

    @Override // com.kingroot.kinguser.cfk.InterfaceC2775a
    public void onClose() {
        m4453a(4, null, 0, 0L, true);
    }

    @Override // com.kingroot.kinguser.cft.InterfaceC2795c
    public void amz() {
        if (this.cdk == 1) {
            m4453a(13, "onHeartBeat", 0, 0L, true);
        }
    }

    @Override // com.kingroot.kinguser.cft.InterfaceC2794b
    public int amA() {
        return this.cdc.m4476fD().f1512hX;
    }

    @Override // com.kingroot.kinguser.cfx.InterfaceC2801a
    /* renamed from: c */
    public void mo4366c(int i, byte[] bArr) {
        this.cde = 0;
        if ((this.bYx || cgl.m4331lu(65539)) && bArr != null && !cfd.m4649ag(bArr)) {
            cfe.m4631e("TmsTcpManager", bArr);
        }
        this.cau.mo4466a(true, 0, bArr, null);
    }

    @Override // com.kingroot.kinguser.cfx.InterfaceC2801a
    /* renamed from: d */
    public void mo4365d(int i, Object obj) {
        switch (i) {
            case 10:
            case 11:
            case 12:
                this.cdn = true;
                this.cdk = (byte) 0;
                if (this.cdc.amg() > 0 && this.cde < 3) {
                    this.cde++;
                    m4453a(11, "delay_fp_for_connect_broken" + i, 0, 1000 * this.cdc.m4476fD().f1520ie, true);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.cfx.InterfaceC2801a
    /* renamed from: lr */
    public void mo4364lr(int i) {
    }

    @Override // tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.InterfaceC4421a
    public void onConnected() {
        this.cdh = false;
        if (this.cdc.amg() > 0) {
            m4453a(9, null, 0, 0L, true);
        }
    }

    @Override // tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.InterfaceC4421a
    public void onDisconnected() {
        this.cdc.amg();
        this.cdn = true;
        this.cdk = (byte) 0;
        m4418lq(9);
    }

    /* renamed from: com.kingroot.kinguser.cfo$c */
    /* loaded from: classes.dex */
    abstract class AbstractC2784c implements cff.InterfaceC2741a {
        int cds;
        int seqNo;

        /* renamed from: aB */
        protected abstract void mo4411aB(int i, int i2);

        /* renamed from: e */
        protected abstract void mo4410e(C2235bg c2235bg);

        public AbstractC2784c(int i, int i2) {
            this.cds = 0;
            this.seqNo = 0;
            this.cds = i;
            this.seqNo = i2;
        }

        @Override // com.kingroot.kinguser.cff.InterfaceC2741a
        /* renamed from: a */
        public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList) {
            if (i != 0) {
                mo4411aB(i, -1);
            } else if (this.cds == 10999 && i == 0) {
                mo4410e(null);
            } else if (arrayList == null || arrayList.size() == 0) {
                mo4411aB(-41250000, -1);
            } else {
                Iterator<C2235bg> it = arrayList.iterator();
                while (it.hasNext()) {
                    C2235bg next = it.next();
                    if (next != null && next.cmd == this.cds) {
                        if (next.retCode == 0 && next.f1670jZ == 0) {
                            mo4410e(next);
                            return;
                        } else {
                            mo4411aB(next.retCode, next.f1670jZ);
                            return;
                        }
                    }
                }
                mo4411aB(-41250000, -1);
            }
        }
    }
}
