package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.kinguser.cer;
import com.kingroot.kinguser.cez;
import com.kingroot.kinguser.cfl;
import com.kingroot.kinguser.cfo;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class cff implements cfo.InterfaceC2785d {
    private ceu bYW;
    private cfl cad;
    private cez cae;
    private cer caf;
    private cfq cag;
    private boolean can;
    private InterfaceC2742b cat;
    private Context mContext;
    private SparseArray<cgf> cah = null;
    private final Object avz = new Object();
    private C2744d cai = null;
    private C2744d caj = null;
    private ArrayList<C2744d> cak = new ArrayList<>();
    private LinkedHashMap<Integer, C2744d> cal = new LinkedHashMap<>();
    private long cao = 0;
    private boolean cap = false;
    private boolean caq = false;
    private long car = 0;
    private long cas = 0;
    private cfl.InterfaceC2779a cau = new cfl.InterfaceC2779a() { // from class: com.kingroot.kinguser.cff.1
        @Override // com.kingroot.kinguser.cfl.InterfaceC2779a
        /* renamed from: b */
        public void mo4465b(boolean z, int i, C2744d c2744d) {
            if (i != 0) {
                cff.this.m4607a(z, i, c2744d);
            }
        }

        @Override // com.kingroot.kinguser.cfl.InterfaceC2779a
        /* renamed from: a */
        public void mo4466a(boolean z, int i, byte[] bArr, C2744d c2744d) {
            C2744d c2744d2;
            C2744d c2744d3;
            C2744d c2744d4;
            if (i != 0) {
                cff.this.m4607a(z, i, c2744d);
            } else if (bArr == null) {
                cff.this.m4607a(z, -21000005, c2744d);
            } else if (cfd.m4649ag(bArr)) {
                int m4653d = cfc.alC().m4653d(bArr[0]);
                if (m4653d >= 0) {
                    synchronized (cff.this.cal) {
                        c2744d4 = (C2744d) cff.this.cal.get(Integer.valueOf(m4653d));
                    }
                    if (c2744d4 != null) {
                        cff.this.m4604a(z, c2744d4, 0, 0, (ArrayList<C2235bg>) null);
                    }
                }
            } else {
                try {
                    C2273bh m4685ae = cew.m4685ae(bArr);
                    if (m4685ae == null) {
                        cff.this.m4607a(z, -21000400, c2744d);
                    } else {
                        C2273bh c2273bh = m4685ae;
                        ArrayList<C2235bg> arrayList = c2273bh.f1676km;
                        int i2 = c2273bh.f1675jX;
                        if (cff.this.cai == null || cff.this.cai.caN != i2) {
                            if (cff.this.caj == null || cff.this.caj.caN != i2) {
                                synchronized (cff.this.cal) {
                                    c2744d2 = (C2744d) cff.this.cal.get(Integer.valueOf(i2));
                                }
                                c2744d3 = c2744d2;
                            } else {
                                c2744d3 = cff.this.caj;
                            }
                        } else {
                            c2744d3 = cff.this.cai;
                        }
                        if (arrayList == null) {
                            cff.this.m4604a(z, c2744d3, -21000005, c2273bh.seqNo, (ArrayList<C2235bg>) null);
                        } else {
                            cff.m4629G(arrayList);
                            if (!cff.this.m4628H(arrayList)) {
                                ArrayList m4621a = cff.this.m4621a(c2744d3, z, c2273bh, arrayList);
                                if (m4621a != null && m4621a.size() > 0) {
                                    Iterator it = m4621a.iterator();
                                    while (it.hasNext()) {
                                        C2235bg c2235bg = (C2235bg) it.next();
                                        if (c2235bg != null) {
                                            cfc.alC().m4658a("SharkNetwork", c2235bg.cmd, c2235bg.f1669jX, c2235bg, 17, i, bArr != null ? String.format("%d/%d", Integer.valueOf(bArr.length + 4), Integer.valueOf(arrayList.size())) : null);
                                            cfm m4457lp = cfm.m4457lp(c2235bg.f1669jX);
                                            if (m4457lp != null) {
                                                m4457lp.ccN = String.valueOf(ceq.m4729cs(cff.this.mContext));
                                                m4457lp.errorCode = c2235bg.retCode;
                                                m4457lp.m4458lo(c2235bg.cmd);
                                                m4457lp.m4460f(cff.this.bYW);
                                            }
                                        }
                                    }
                                }
                                cff.this.m4604a(z, c2744d3, 0, c2273bh.seqNo, m4621a);
                                cff.this.alI();
                            } else {
                                cfe.m4636b("ocean", "[ocean]密钥过期，自动交换密钥重发", null, null);
                                cff.this.can = true;
                                cff.this.cav.removeMessages(1);
                                cff.this.cav.sendEmptyMessageDelayed(1, 2000L);
                            }
                        }
                    }
                } catch (Exception e) {
                    cff.this.m4607a(z, -21000400, c2744d);
                }
            }
        }
    };
    private Handler cav = new HandlerC27312(cfd.getLooper());
    private long caw = 0;
    private Handler cax = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cff.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    cff.this.m4600b((C2744d) message.obj);
                    return;
                default:
                    return;
            }
        }
    };
    private ExecutorService cam = Executors.newSingleThreadExecutor();

    /* renamed from: com.kingroot.kinguser.cff$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2741a {
        /* renamed from: a */
        void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList);
    }

    /* renamed from: com.kingroot.kinguser.cff$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2742b {
        /* renamed from: a */
        long mo4535a(boolean z, int i, C2235bg c2235bg);

        /* renamed from: b */
        long mo4528b(boolean z, int i, C2235bg c2235bg);
    }

    /* renamed from: com.kingroot.kinguser.cff$c */
    /* loaded from: classes.dex */
    public interface InterfaceC2743c {
        /* renamed from: a */
        void mo4544a(long j, int i, JceStruct jceStruct, int i2, cck cckVar, boolean z);
    }

    /* renamed from: com.kingroot.kinguser.cff$2 */
    /* loaded from: classes.dex */
    class HandlerC27312 extends Handler {
        HandlerC27312(Looper looper) {
            super(looper);
        }

        /* renamed from: b */
        private void m4567b(final boolean z, final C2744d c2744d) {
            cff.this.cam.submit(new Runnable() { // from class: com.kingroot.kinguser.cff.2.1
                @Override // java.lang.Runnable
                public void run() {
                    cgf cgfVar;
                    if (cff.this.cah != null) {
                        if (!c2744d.caJ) {
                            synchronized (cff.this.cah) {
                                cgf cgfVar2 = (cgf) cff.this.cah.get(997);
                                if (cgfVar2 != null && !cgfVar2.amW()) {
                                    c2744d.caL = true;
                                }
                            }
                        }
                        ArrayList<C2036az> arrayList = c2744d.caQ;
                        if (arrayList != null && arrayList.size() > 0) {
                            Iterator<C2036az> it = arrayList.iterator();
                            while (it.hasNext()) {
                                C2036az next = it.next();
                                if (next != null) {
                                    synchronized (cff.this.cah) {
                                        cgfVar = (cgf) cff.this.cah.get(next.cmd);
                                    }
                                    if (cgfVar != null) {
                                        if (cgfVar.amW()) {
                                            cgfVar.amX();
                                        } else {
                                            it.remove();
                                            cfe.m4636b("SharkNetwork", "network ctrl donot connect, cmdid : " + next.cmd, null, null);
                                            C2235bg c2235bg = new C2235bg();
                                            c2235bg.cmd = next.cmd;
                                            c2235bg.retCode = -7;
                                            cff.this.m4602a(true, false, c2744d, -20000007, 0, c2235bg);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    ArrayList<C2036az> arrayList2 = c2744d.caQ;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        try {
                            cff.this.m4605a(z, c2744d);
                        } catch (Exception e) {
                        }
                    }
                }
            });
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    cff.this.cav.removeMessages(0);
                    if (cff.this.cai == null || message.arg1 != 1) {
                        if (cff.this.caj != null && message.arg1 == 2) {
                            m4567b(true, cff.this.caj);
                            return;
                        }
                        return;
                    }
                    m4567b(false, cff.this.cai);
                    return;
                case 1:
                    cff.this.cav.removeMessages(1);
                    cez.C2723b m4674fw = cff.this.cae.m4674fw();
                    if (TextUtils.isEmpty(m4674fw.bZu) || TextUtils.isEmpty(m4674fw.bZv)) {
                        cff.this.m4579li(2);
                        synchronized (cff.this.avz) {
                            if (!cff.this.cap || ceh.m4776a(System.currentTimeMillis(), cff.this.car, 3)) {
                                cff.this.cap = true;
                                cff.this.car = System.currentTimeMillis();
                                cff.this.cav.removeMessages(2);
                                cff.this.cav.sendEmptyMessage(2);
                            }
                        }
                    } else if (cff.this.can) {
                        cff.this.m4579li(3);
                        synchronized (cff.this.avz) {
                            if (!cff.this.cap || ceh.m4776a(System.currentTimeMillis(), cff.this.car, 3)) {
                                cff.this.cap = true;
                                cff.this.car = System.currentTimeMillis();
                                cff.this.cav.removeMessages(2);
                                cff.this.cav.sendEmptyMessageDelayed(2, 1000L);
                            }
                        }
                        return;
                    } else if (cff.this.caf.alb()) {
                        cff.this.m4579li(4);
                        synchronized (cff.this.avz) {
                            if (!cff.this.caq || ceh.m4776a(System.currentTimeMillis(), cff.this.cas, 3)) {
                                cff.this.caq = true;
                                cff.this.cas = System.currentTimeMillis();
                                cff.this.cav.removeMessages(3);
                                cff.this.cav.sendEmptyMessageDelayed(3, 1000L);
                            }
                        }
                        return;
                    } else {
                        synchronized (cff.this.cak) {
                            if (cff.this.cak.size() > 0) {
                                ArrayList arrayList = (ArrayList) cff.this.cak.clone();
                                cff.this.cak.clear();
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    C2744d c2744d = (C2744d) it.next();
                                    if (c2744d != null) {
                                        if (cff.this.can) {
                                            cff.this.m4579li(3);
                                            synchronized (cff.this.avz) {
                                                if (!cff.this.cap || ceh.m4776a(System.currentTimeMillis(), cff.this.car, 3)) {
                                                    cff.this.cap = true;
                                                    cff.this.car = System.currentTimeMillis();
                                                    cff.this.cav.removeMessages(2);
                                                    cff.this.cav.sendEmptyMessageDelayed(2, 1000L);
                                                }
                                            }
                                        } else if (c2744d.caI) {
                                            m4567b(false, c2744d);
                                        } else {
                                            m4567b(true, c2744d);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return;
                case 2:
                    cff.this.cav.removeMessages(2);
                    cff.this.cam.submit(new Runnable() { // from class: com.kingroot.kinguser.cff.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            cff.this.cav.removeMessages(2);
                            if (cff.this.cao <= 0 || Math.abs(System.currentTimeMillis() - cff.this.cao) > 20000) {
                                try {
                                    cff.this.cae.m4677a(new cez.InterfaceC2722a() { // from class: com.kingroot.kinguser.cff.2.2.1
                                        @Override // com.kingroot.kinguser.cez.InterfaceC2722a
                                        /* renamed from: l */
                                        public void mo4566l(int i, int i2, int i3) {
                                            int m4765kY = cen.m4765kY(i3);
                                            cfc.alC().m4659a("SharkNetwork", i2, i, null, 30, m4765kY);
                                            cfc.alC().m4651lf(i);
                                            synchronized (cff.this.avz) {
                                                cff.this.cap = false;
                                            }
                                            if (m4765kY == 0) {
                                                cff.this.cao = System.currentTimeMillis();
                                                cff.this.can = false;
                                                synchronized (cff.this.avz) {
                                                    if (cff.this.caq) {
                                                        cff.this.caq = false;
                                                    }
                                                }
                                                ArrayList<C2744d> arrayList2 = new ArrayList();
                                                synchronized (cff.this.cal) {
                                                    if (cff.this.cal.size() > 0) {
                                                        for (C2744d c2744d2 : cff.this.cal.values()) {
                                                            if (!c2744d2.caG && !c2744d2.caH) {
                                                                arrayList2.add(c2744d2);
                                                            }
                                                        }
                                                        cff.this.cal.clear();
                                                    }
                                                }
                                                if (arrayList2.size() > 0) {
                                                    for (C2744d c2744d3 : arrayList2) {
                                                        cff.this.m4593c(c2744d3);
                                                    }
                                                    synchronized (cff.this.cak) {
                                                        cff.this.cak.addAll(arrayList2);
                                                    }
                                                }
                                                cff.this.cav.sendEmptyMessage(1);
                                                return;
                                            }
                                            cff.this.m4603a(false, true, m4765kY > 0 ? Math.abs(-900000000) + m4765kY : m4765kY - 900000000);
                                        }
                                    });
                                    return;
                                } catch (Exception e) {
                                    synchronized (cff.this.avz) {
                                        cff.this.cap = false;
                                        cff.this.m4603a(false, true, -920000014);
                                        return;
                                    }
                                }
                            }
                            synchronized (cff.this.avz) {
                                cff.this.cap = false;
                            }
                            cff.this.can = false;
                            cff.this.cav.sendEmptyMessage(1);
                        }
                    });
                    return;
                case 3:
                    cff.this.cav.removeMessages(3);
                    cff.this.cam.submit(new Runnable() { // from class: com.kingroot.kinguser.cff.2.3
                        @Override // java.lang.Runnable
                        public void run() {
                            cff.this.cav.removeMessages(3);
                            try {
                                cff.this.caf.m4728a(new cer.InterfaceC2717a() { // from class: com.kingroot.kinguser.cff.2.3.1
                                    @Override // com.kingroot.kinguser.cer.InterfaceC2717a
                                    /* renamed from: a */
                                    public void mo4565a(int i, int i2, int i3, String str) {
                                        int i4;
                                        int m4765kY = cen.m4765kY(i3);
                                        cer.m4721c(cff.this.mContext, m4765kY, str);
                                        cfc.alC().m4659a("SharkNetwork", i2, i, null, 30, m4765kY);
                                        cfc.alC().m4651lf(i);
                                        synchronized (cff.this.avz) {
                                            cff.this.caq = false;
                                        }
                                        if (m4765kY == 0) {
                                            cff.this.cav.sendEmptyMessage(1);
                                            return;
                                        }
                                        if (m4765kY > 0) {
                                            i4 = Math.abs(-800000000) + m4765kY;
                                        } else {
                                            i4 = m4765kY - 800000000;
                                        }
                                        cff.this.m4603a(false, false, i4);
                                    }
                                });
                            } catch (Exception e) {
                                synchronized (cff.this.avz) {
                                    cff.this.caq = false;
                                    cff.this.m4603a(false, false, -820000014);
                                }
                            }
                        }
                    });
                    return;
                case 4:
                    cff.this.cam.submit(new Runnable() { // from class: com.kingroot.kinguser.cff.2.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (cff.this.caf != null) {
                                cff.this.caf.m4717eI(true);
                            }
                        }
                    });
                    return;
                case 5:
                case 6:
                case 7:
                default:
                    return;
                case 8:
                    cff.this.cag.amB();
                    return;
                case 9:
                    cff.this.cag.m4408L(0, false);
                    return;
                case 10:
                    cff.this.m4625Rd();
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void alI() {
        if (this.bYW.mo2730fI() && (this.caw == 0 || System.currentTimeMillis() - this.caw > 300000)) {
            this.caw = System.currentTimeMillis();
            this.cav.removeMessages(8);
            this.cav.sendEmptyMessageDelayed(8, 5000L);
        }
    }

    private synchronized void alJ() {
        if (this.bYW.mo2730fI()) {
            this.cav.removeMessages(10);
            this.cav.sendEmptyMessageDelayed(10, 10000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Rd */
    public void m4625Rd() {
        String mo2727fL = this.bYW.mo2727fL();
        String mo2726fM = this.bYW.mo2726fM();
        if (!TextUtils.isEmpty(mo2727fL) && !TextUtils.isEmpty(mo2726fM) && !mo2727fL.equals(mo2726fM)) {
            alM();
        } else if (!TextUtils.isEmpty(mo2727fL) && TextUtils.isEmpty(mo2726fM)) {
            this.bYW.mo2732cf(mo2727fL);
        }
        String mo2717fV = this.bYW.mo2717fV();
        String mo2716fW = this.bYW.mo2716fW();
        if (!TextUtils.isEmpty(mo2717fV) && !TextUtils.isEmpty(mo2716fW) && !mo2717fV.equals(mo2716fW)) {
            alN();
        } else if (!TextUtils.isEmpty(mo2717fV) && TextUtils.isEmpty(mo2716fW)) {
            this.bYW.mo2712i(mo2717fV, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: li */
    public void m4579li(int i) {
        ArrayList arrayList;
        synchronized (this.cak) {
            arrayList = (ArrayList) this.cak.clone();
        }
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C2744d c2744d = (C2744d) it.next();
                if (c2744d != null && c2744d.caQ != null && c2744d.caQ.size() > 0) {
                    Iterator<C2036az> it2 = c2744d.caQ.iterator();
                    while (it2.hasNext()) {
                        C2036az next = it2.next();
                        if (next != null) {
                            cfc.alC().m4661a("SharkNetwork", next.cmd, next.seqNo, next, i);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.cff$d */
    /* loaded from: classes.dex */
    public static class C2744d {
        public int caE;
        public boolean caF;
        public boolean caI;
        public boolean caJ;
        public cez.C2723b caO;
        public long caP;
        public ArrayList<C2036az> caQ;
        public InterfaceC2741a caR;
        public long caV;
        public boolean caG = false;
        public boolean caH = false;
        public boolean caK = false;
        public boolean caL = false;
        public boolean caM = false;
        public long caS = System.currentTimeMillis();
        public boolean caT = false;
        public byte caU = 0;
        public int caN = cfb.alz().alo();

        public C2744d(int i, boolean z, boolean z2, boolean z3, long j, ArrayList<C2036az> arrayList, InterfaceC2741a interfaceC2741a, long j2) {
            this.caE = 0;
            this.caF = false;
            this.caI = false;
            this.caJ = false;
            this.caV = -1L;
            this.caE = i;
            this.caF = z;
            this.caI = z2;
            this.caJ = z3;
            this.caP = j;
            this.caQ = arrayList;
            this.caR = interfaceC2741a;
            this.caV = j2;
        }

        public boolean alO() {
            long abs;
            C2036az c2036az;
            boolean z = Math.abs(System.currentTimeMillis() - this.caS) >= 180000;
            if (z) {
                cfe.m4632c("ocean", "[ocean][time_out]SharkNetwork.SharkSend.isTimeOut(), SharkSend.seqNoTag: " + this.caN + " time(s): " + (abs / 1000), null, null);
                if (this.caQ != null) {
                    int size = this.caQ.size();
                    for (int i = 0; i < size; i++) {
                        if (this.caQ.get(i) != null) {
                            cfe.m4632c("ocean", "[ocean][time_out]SharkNetwork.SharkSend.isTimeOut(), cmdId|" + c2036az.cmd + "|seqNo|" + c2036az.seqNo, null, null);
                        }
                    }
                }
            }
            return z;
        }

        public boolean alP() {
            return this.caI || this.caJ;
        }

        public boolean alQ() {
            return this.caF;
        }
    }

    public cff(Context context, ceu ceuVar, InterfaceC2742b interfaceC2742b, InterfaceC2743c interfaceC2743c, boolean z, String str) {
        this.mContext = context;
        this.bYW = ceuVar;
        this.cat = interfaceC2742b;
        this.cae = new cez(context, this);
        this.caf = new cer(context, this, z);
        this.cag = new cfq(context, this, z);
        this.cad = new cfl(this.bYW.mo2730fI(), context, ceuVar, z, this.cau, this, interfaceC2743c, this, str);
        if (this.bYW.mo2730fI()) {
            m4622a(interfaceC2743c);
            this.cag.m4401c(interfaceC2743c);
            alI();
            alJ();
        }
    }

    /* renamed from: a */
    private void m4622a(InterfaceC2743c interfaceC2743c) {
        interfaceC2743c.mo4544a(0L, 10155, new C1348ao(), 0, new cck() { // from class: com.kingroot.kinguser.cff.4
            @Override // com.kingroot.kinguser.cck
            /* renamed from: a */
            public cfp<Long, Integer, JceStruct> mo2772a(int i, long j, int i2, JceStruct jceStruct) {
                if (jceStruct == null) {
                    return null;
                }
                switch (i2) {
                    case 10155:
                        return cff.this.m4623a(j, i, (C1348ao) jceStruct);
                    default:
                        return null;
                }
            }
        }, false);
    }

    /* renamed from: a */
    public void m4624a(int i, long j, boolean z, ArrayList<C2036az> arrayList, InterfaceC2741a interfaceC2741a) {
        mo4409a(new C2744d(i, false, false, false, j, arrayList, interfaceC2741a, 0L));
        if (z) {
            this.caf.m4717eI(false);
        }
    }

    @Override // com.kingroot.kinguser.cfo.InterfaceC2785d
    /* renamed from: a */
    public void mo4409a(C2744d c2744d) {
        if (c2744d != null && c2744d.caR != null && c2744d.caQ != null && c2744d.caQ.size() > 0) {
            synchronized (this.cak) {
                this.cak.add(c2744d);
            }
            Iterator<C2036az> it = c2744d.caQ.iterator();
            while (it.hasNext()) {
                C2036az next = it.next();
                if (next != null) {
                    cfc.alC().m4661a("SharkNetwork", next.cmd, next.seqNo, next, 1);
                }
            }
            this.cav.sendEmptyMessage(1);
        }
    }

    /* renamed from: m */
    public void m4577m(int i, int i2, int i3) {
        if (i2 > 0) {
            if (this.cah == null) {
                synchronized (cff.class) {
                    if (this.cah == null) {
                        this.cah = new SparseArray<>();
                    }
                }
            }
            cgf cgfVar = new cgf("network_control_" + i, i2 * 1000, i3);
            synchronized (this.cah) {
                this.cah.append(i, cgfVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m4608a(ArrayList<C2036az> arrayList, InterfaceC2741a interfaceC2741a) {
        this.cai = new C2744d(0, true, false, false, 0L, arrayList, interfaceC2741a, 0L);
        this.cai.caG = true;
        this.cav.obtainMessage(0, 1, 0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void m4594b(ArrayList<C2036az> arrayList, InterfaceC2741a interfaceC2741a) {
        this.caj = new C2744d(0, true, false, false, 0L, arrayList, interfaceC2741a, 0L);
        this.caj.caH = true;
        this.cav.obtainMessage(0, 2, 0).sendToTarget();
    }

    public cfo alK() {
        return this.cad.alK();
    }

    public void refresh() {
        this.caf.alc();
    }

    public String getGuid() {
        return this.caf.getGuid();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ceu alL() {
        return this.bYW;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: fw */
    public cez.C2723b m4586fw() {
        return this.cae.m4674fw();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lj */
    public C2744d m4578lj(int i) {
        C2744d remove;
        synchronized (this.cal) {
            remove = this.cal.remove(Integer.valueOf(i));
        }
        return remove;
    }

    /* renamed from: a */
    protected cez.C2723b m4605a(boolean z, C2744d c2744d) {
        cez.C2723b c2723b;
        if (c2744d == null) {
            return null;
        }
        if (z) {
            cez.C2723b m4674fw = this.cae.m4674fw();
            c2744d.caO = m4674fw;
            Iterator<C2036az> it = c2744d.caQ.iterator();
            while (it.hasNext()) {
                C2036az next = it.next();
                if (next != null && next.data != null && next.data.length > 0 && (next.flag & 2) == 0) {
                    next.data = ceq.encrypt(next.data, m4674fw.bZv.getBytes());
                    byte[] bArr = next.data;
                }
            }
            c2723b = m4674fw;
        } else {
            c2723b = null;
        }
        if (c2744d.caQ != null && c2744d.caQ.size() > 0) {
            Iterator<C2036az> it2 = c2744d.caQ.iterator();
            while (it2.hasNext()) {
                C2036az next2 = it2.next();
                if (next2 != null) {
                    if (next2.f1641jX == 0) {
                        c2744d.caM = true;
                    }
                    cfc.alC().m4661a("SharkNetwork", next2.cmd, next2.seqNo, next2, 5);
                }
            }
        }
        synchronized (this.cal) {
            this.cal.put(Integer.valueOf(c2744d.caN), c2744d);
        }
        this.cax.sendMessageDelayed(Message.obtain(this.cax, 1, c2744d), c2744d.caV > 0 ? c2744d.caV : 180000L);
        this.cad.m4468d(c2744d);
        return c2723b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4607a(boolean z, int i, C2744d c2744d) {
        if (c2744d != null) {
            ArrayList arrayList = new ArrayList();
            if (this.cai != null && this.cai.caN == c2744d.caN) {
                arrayList.add(this.cai);
                m4578lj(this.cai.caN);
            } else if (this.caj != null && this.caj.caN == c2744d.caN) {
                arrayList.add(this.caj);
                m4578lj(this.caj.caN);
            } else {
                arrayList.add(c2744d);
                m4578lj(c2744d.caN);
                synchronized (this.cak) {
                    arrayList.addAll(this.cak);
                    this.cak.clear();
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                m4604a(z, (C2744d) it.next(), i, 0, (ArrayList<C2235bg>) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4603a(boolean z, boolean z2, int i) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.cal) {
            arrayList.addAll(this.cal.values());
            this.cal.clear();
        }
        synchronized (this.cak) {
            arrayList.addAll(this.cak);
            this.cak.clear();
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m4604a(z, (C2744d) it.next(), i, 0, (ArrayList<C2235bg>) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4600b(final C2744d c2744d) {
        if (c2744d != null) {
            this.cax.removeMessages(1, c2744d);
            bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cff.5
                @Override // java.lang.Runnable
                public void run() {
                    int i;
                    C2744d m4578lj = cff.this.m4578lj(c2744d.caN);
                    if (m4578lj != null) {
                        if (m4578lj.caT) {
                            i = -21050000;
                        } else {
                            i = -21000020;
                        }
                        cff.this.m4604a(c2744d.caK, m4578lj, i, 0, (ArrayList<C2235bg>) null);
                    }
                }
            }, "runTimeout");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4604a(boolean z, C2744d c2744d, int i, int i2, ArrayList<C2235bg> arrayList) {
        m4601a(false, z, c2744d, i, i2, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4602a(boolean z, boolean z2, C2744d c2744d, int i, int i2, C2235bg c2235bg) {
        ArrayList<C2235bg> arrayList = new ArrayList<>();
        arrayList.add(c2235bg);
        m4601a(z, z2, c2744d, i, i2, arrayList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (r4.caQ.size() > 0) goto L4;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m4601a(boolean z, boolean z2, C2744d c2744d, int i, int i2, ArrayList<C2235bg> arrayList) {
        if (c2744d != null) {
            if (z) {
                try {
                    if (c2744d.caQ != null) {
                    }
                } catch (Exception e) {
                    return;
                }
            }
            m4578lj(c2744d.caN);
            c2744d.caR.mo4412a(z2, i, i2, arrayList);
        }
    }

    /* renamed from: a */
    private boolean m4606a(boolean z, C2273bh c2273bh, C2235bg c2235bg) {
        boolean z2;
        if (c2235bg == null) {
            return false;
        }
        if (cfh.m4531b(c2235bg)) {
            this.cat.mo4535a(z, c2273bh.seqNo, c2235bg);
            String str = "[ocean]guid|" + this.caf.getGuid() + "|push|通道|" + (z ? "tcp|" : "http|") + "sharkSeqNo|" + c2273bh.seqNo + "|ECmd|" + c2235bg.cmd + "|seqNo|" + c2235bg.seqNo + "|refSeqNo|" + c2235bg.f1669jX + "|ret|0" + (c2235bg.f1671kk != null ? "|pushId|" + c2235bg.f1671kk.f1664jW : "");
            cfe.m4636b("ocean", str, null, c2235bg);
            cgl.m4332d(65541, str);
            z2 = true;
        } else if (cfh.m4527c(c2235bg)) {
            this.cat.mo4528b(z, c2273bh.seqNo, c2235bg);
            String str2 = "[ocean]guid|" + this.caf.getGuid() + "|gift|通道|" + (z ? "tcp|" : "http|") + "sharkSeqNo|" + c2273bh.seqNo + "|ECmd|" + c2235bg.cmd + "|seqNo|" + c2235bg.seqNo + "|refSeqNo|" + c2235bg.f1669jX + "|ret|0" + (c2235bg.f1671kk != null ? "|pushId|" + c2235bg.f1671kk.f1664jW : "");
            cfe.m4636b("ocean", str2, null, c2235bg);
            cgl.m4332d(65541, str2);
            z2 = true;
        } else {
            z2 = false;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m4593c(C2744d c2744d) {
        if (c2744d != null && c2744d.caQ != null && c2744d.caO != null && c2744d.caO.bZv != null) {
            Iterator<C2036az> it = c2744d.caQ.iterator();
            while (it.hasNext()) {
                C2036az next = it.next();
                if (next != null && next.data != null) {
                    if ((next.flag & 2) == 0) {
                        next.data = ceq.decrypt(next.data, c2744d.caO.bZv.getBytes());
                    }
                    byte[] bArr = next.data;
                    cfc.alC().m4661a("SharkNetwork", next.cmd, next.seqNo, next, 13);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final ArrayList<C2235bg> m4621a(C2744d c2744d, boolean z, C2273bh c2273bh, ArrayList<C2235bg> arrayList) {
        if (arrayList == null) {
            return null;
        }
        ArrayList<C2235bg> arrayList2 = new ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C2235bg c2235bg = arrayList.get(i);
            if (c2235bg != null && !m4606a(z, c2273bh, c2235bg)) {
                arrayList2.add(c2235bg);
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public static void m4629G(ArrayList<C2235bg> arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<C2235bg> it = arrayList.iterator();
            while (it.hasNext()) {
                C2235bg next = it.next();
                if (next != null && next.retCode == 3) {
                    ceq.akZ();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H */
    public boolean m4628H(ArrayList<C2235bg> arrayList) {
        if (arrayList == null || arrayList.size() != 1) {
            return false;
        }
        C2235bg c2235bg = arrayList.get(0);
        if (c2235bg == null) {
            return false;
        }
        return 2 == c2235bg.retCode;
    }

    /* renamed from: KD */
    public void m4626KD() {
        cfu amq;
        if (this.bYW.mo2730fI() && (amq = this.cad.amq()) != null) {
            amq.mo4390KD();
        }
    }

    public void onReady() {
        this.caf.m4717eI(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public cfp<Long, Integer, JceStruct> m4623a(long j, int i, C1348ao c1348ao) {
        if (c1348ao == null) {
            return null;
        }
        cfu amq = this.cad.amq();
        if (amq != null) {
            amq.mo4389a(j, i, c1348ao);
        }
        C1032ak c1032ak = new C1032ak();
        c1032ak.f1461hr = c1348ao.f1506hr;
        return new cfp<>(Long.valueOf(j), 156, c1032ak);
    }

    public void alM() {
        if (this.cav != null) {
            this.cav.removeMessages(4);
            this.cav.sendEmptyMessageDelayed(4, 15000L);
        }
    }

    public void alN() {
        if (this.cav != null) {
            this.cav.removeMessages(9);
            this.cav.sendEmptyMessageDelayed(9, 2000L);
        }
    }
}
