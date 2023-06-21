package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.kingroot.kinguser.cez;
import com.kingroot.kinguser.cff;
import com.p019qq.taf.jce.JceStruct;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import tmsdk.common.TMSDKContext;
import tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver;
/* loaded from: classes.dex */
public class cfh extends cec implements cff.InterfaceC2742b, cff.InterfaceC2743c {
    private cff bYN;
    private ceu bYt;
    private ExecutorService cam;
    private cco cbH;
    private Context mContext;
    private final String TAG = "SharkProtocolQueue";

    /* renamed from: yb */
    private boolean f2305yb = false;
    private TreeMap<Integer, cfp<JceStruct, cck, C2761b>> cbj = new TreeMap<>();
    private Map<Integer, C2760a> cbE = new HashMap();
    private ArrayList<C2762c> cbF = new ArrayList<>();
    private cfs<Long> cbG = new cfs<>(1000);
    private boolean cbI = false;
    private boolean cbJ = false;
    private boolean cbK = false;
    private boolean cbL = false;
    private boolean cbM = false;
    private boolean cbN = false;
    private boolean cbO = false;
    private LinkedList<cex> cbP = null;
    private boolean cbQ = false;
    private boolean cbR = false;
    private boolean cbS = false;
    private boolean cbT = false;
    private Handler cbk = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.cfh.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 11:
                    Object[] objArr = (Object[]) message.obj;
                    C2762c c2762c = (C2762c) objArr[0];
                    if (c2762c.cbu > 0) {
                        if (c2762c.ccj != null) {
                            c2762c.ccj.m4960a(c2762c.bux, c2762c.cbu, c2762c.bZA, ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue(), c2762c.cci);
                            return;
                        }
                        return;
                    }
                    c2762c.cbA.mo457a(c2762c.bZA, ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue(), c2762c.cbz);
                    return;
                default:
                    return;
            }
        }
    };
    private Handler cav = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cfh.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            final cfp cfpVar;
            final C2760a c2760a;
            C2760a c2760a2;
            int i;
            int size;
            switch (message.what) {
                case 1:
                    cfh.this.cav.removeMessages(1);
                    RunnableC2763d runnableC2763d = new RunnableC2763d();
                    ArrayList arrayList = new ArrayList();
                    synchronized (cfh.this.cbF) {
                        Iterator it = cfh.this.cbF.iterator();
                        i = 0;
                        while (it.hasNext()) {
                            C2762c c2762c = (C2762c) it.next();
                            boolean m4955o = cfh.this.cbH != null ? cfh.this.cbH.m4955o(c2762c.mCmdId, c2762c.cbx) : true;
                            if ((c2762c.mFlag & 1073741824) == 0) {
                                if (!c2762c.ccl.akI()) {
                                    if (m4955o) {
                                        runnableC2763d.m4499a(Integer.valueOf(c2762c.bZA), c2762c);
                                        i++;
                                    } else {
                                        arrayList.add(c2762c);
                                    }
                                } else {
                                    cfc.alC().m4652hF(c2762c.bZA);
                                }
                            } else if (!m4955o) {
                                arrayList.add(c2762c);
                            } else {
                                runnableC2763d.ccp.add(c2762c);
                                i++;
                            }
                        }
                        cfh.this.cbF.clear();
                        if (arrayList.size() > 0) {
                            cfh.this.cbF.addAll(arrayList);
                        }
                    }
                    if (i > 0) {
                        cfh.this.cam.submit(runnableC2763d);
                        return;
                    }
                    return;
                case 2:
                    cfd.bZU = true;
                    synchronized (cfh.this.cbF) {
                        size = cfh.this.cbF.size();
                    }
                    if (size > 0) {
                        cfh.this.cav.sendEmptyMessage(1);
                    }
                    if (cfh.this.cbI) {
                        cfh.this.refresh();
                    }
                    if (cfh.this.cbJ) {
                        cfh.this.m4550KD();
                    }
                    if (cfh.this.cbK) {
                        cfh.this.onReady();
                    }
                    if (cfh.this.cbL) {
                        cfh.this.alZ();
                    }
                    if (cfh.this.cbM) {
                        cfh.this.ama();
                    }
                    if (cfh.this.cbN) {
                        cfh.this.alM();
                    }
                    if (cfh.this.cbO) {
                        cfh.this.alN();
                    }
                    if (cfh.this.cbQ) {
                        cfh.this.alY();
                    }
                    if (cfh.this.cbP != null) {
                        Iterator it2 = cfh.this.cbP.iterator();
                        while (it2.hasNext()) {
                            cex cexVar = (cex) it2.next();
                            if (cexVar != null) {
                                cfh.this.m4514m(cexVar.bZh, cexVar.bZi, cexVar.bZj);
                            }
                        }
                        cfh.this.cbP = null;
                    }
                    if (cfh.this.cbR) {
                        cfh.this.cbR = false;
                        String guid = cfh.this.getGuid();
                        if (!TextUtils.isEmpty(guid)) {
                            cfh.this.m4549U(0, guid);
                        }
                    }
                    if (cfh.this.cbS) {
                        cfh.this.amb();
                    }
                    if (cfh.this.cbT) {
                        cfh.this.amc();
                        return;
                    }
                    return;
                case 3:
                    HashSet<Integer> hashSet = new HashSet();
                    synchronized (cfh.this.cbE) {
                        if (cfh.this.cbE.size() > 0) {
                            long currentTimeMillis = System.currentTimeMillis();
                            for (Map.Entry entry : cfh.this.cbE.entrySet()) {
                                if (currentTimeMillis - ((C2760a) entry.getValue()).ccd >= 1800000) {
                                    hashSet.add(entry.getKey());
                                }
                            }
                        }
                    }
                    if (hashSet.size() > 0) {
                        for (Integer num : hashSet) {
                            synchronized (cfh.this.cbE) {
                                c2760a2 = (C2760a) cfh.this.cbE.remove(num);
                            }
                            if (c2760a2 != null && c2760a2.pushType == 0) {
                                cfh.this.m4546a(c2760a2.cce.seqNo, c2760a2.f2306jW, c2760a2.cce.cmd, (JceStruct) null, -2, -1000000001);
                            }
                        }
                        return;
                    }
                    return;
                case 4:
                    HashMap hashMap = new HashMap();
                    synchronized (cfh.this.cbE) {
                        hashMap.putAll(cfh.this.cbE);
                        cfh.this.cbE.clear();
                    }
                    if (hashMap.size() > 0) {
                        for (Map.Entry entry2 : hashMap.entrySet()) {
                            C2760a c2760a3 = (C2760a) entry2.getValue();
                            ((Integer) entry2.getKey()).intValue();
                            if (c2760a3.pushType == 0) {
                                cfh.this.m4546a(c2760a3.cce.seqNo, c2760a3.f2306jW, c2760a3.cce.cmd, (JceStruct) null, -2, -1000000001);
                            }
                        }
                        return;
                    }
                    return;
                case 5:
                    final int i2 = message.arg1;
                    synchronized (cfh.this.cbj) {
                        cfpVar = (cfp) cfh.this.cbj.get(Integer.valueOf(i2));
                    }
                    synchronized (cfh.this.cbE) {
                        c2760a = (C2760a) cfh.this.cbE.remove(Integer.valueOf(i2));
                    }
                    if (cfpVar != null && c2760a != null) {
                        bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfh.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (c2760a.pushType == 0) {
                                    cfh.this.m4543a(c2760a.f2306jW, c2760a.cce, c2760a.ccf, cfpVar);
                                } else {
                                    cfh.this.m4532b(c2760a.f2306jW, c2760a.cce, c2760a.ccf, cfpVar);
                                }
                            }
                        }, "shark callback: check cached push");
                        return;
                    }
                    return;
                case 6:
                    cfh.this.cbH = null;
                    if (cfd.bZU) {
                        cfh.this.cav.sendEmptyMessage(1);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private List<ccg> cbU = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cfh$a */
    /* loaded from: classes.dex */
    public class C2760a {
        long ccd;
        C2235bg cce;
        byte[] ccf;

        /* renamed from: jW */
        long f2306jW;
        int pushType;

        public C2760a(int i, long j, long j2, C2235bg c2235bg, byte[] bArr) {
            this.pushType = 0;
            this.pushType = i;
            this.ccd = j;
            this.f2306jW = j2;
            this.cce = c2235bg;
            this.ccf = bArr;
        }
    }

    public boolean alX() {
        return this.f2305yb;
    }

    /* renamed from: a */
    public static boolean m4542a(C2235bg c2235bg) {
        return (c2235bg == null || c2235bg.f1669jX == 0) ? false : true;
    }

    /* renamed from: b */
    public static boolean m4531b(C2235bg c2235bg) {
        return (c2235bg == null || c2235bg.f1669jX != 0 || c2235bg.f1671kk == null || c2235bg.f1671kk.f1664jW == 0) ? false : true;
    }

    /* renamed from: c */
    public static boolean m4527c(C2235bg c2235bg) {
        return (c2235bg == null || m4542a(c2235bg) || m4531b(c2235bg)) ? false : true;
    }

    @Override // com.kingroot.kinguser.cff.InterfaceC2742b
    /* renamed from: a */
    public long mo4535a(boolean z, int i, C2235bg c2235bg) {
        cfp<JceStruct, cck, C2761b> cfpVar;
        if (c2235bg == null || !m4531b(c2235bg)) {
            return -1L;
        }
        long j = 0;
        if (c2235bg.f1671kk != null) {
            j = c2235bg.f1671kk.f1664jW;
        }
        m4545a(j, c2235bg.cmd, i, c2235bg.seqNo, -1000000001);
        if (c2235bg.retCode != 0 || this.cbG.m4395x(Long.valueOf(j))) {
            return -1L;
        }
        this.cbG.push(Long.valueOf(j));
        synchronized (this.cbj) {
            cfpVar = this.cbj.get(Integer.valueOf(c2235bg.cmd));
        }
        if (cfpVar == null) {
            synchronized (this.cbE) {
                this.cbE.put(Integer.valueOf(c2235bg.cmd), new C2760a(0, System.currentTimeMillis(), j, c2235bg, this.bYN.m4586fw().bZv.getBytes()));
            }
            this.cav.removeMessages(3);
            this.cav.sendEmptyMessageDelayed(3, 1800000L);
            return -1L;
        }
        m4543a(j, c2235bg, this.bYN.m4586fw().bZv.getBytes(), cfpVar);
        if (cfpVar.cdu != null) {
            return cfpVar.cdu.bVi;
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0021 A[Catch: Exception -> 0x008b, TryCatch #1 {Exception -> 0x008b, blocks: (B:8:0x0019, B:10:0x0021, B:12:0x0031, B:23:0x007b), top: B:29:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0031 A[Catch: Exception -> 0x008b, TRY_LEAVE, TryCatch #1 {Exception -> 0x008b, blocks: (B:8:0x0019, B:10:0x0021, B:12:0x0031, B:23:0x007b), top: B:29:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007b A[Catch: Exception -> 0x008b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x008b, blocks: (B:8:0x0019, B:10:0x0021, B:12:0x0031, B:23:0x007b), top: B:29:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m4543a(long j, C2235bg c2235bg, byte[] bArr, cfp<JceStruct, cck, C2761b> cfpVar) {
        byte[] bArr2;
        JceStruct jceStruct;
        cfp<Long, Integer, JceStruct> mo2772a;
        try {
            if (c2235bg.data != null) {
                if (cfpVar.cdu.ccg) {
                    try {
                        bArr2 = ceq.m4740a(this.mContext, bArr, c2235bg.data, c2235bg.flag);
                        jceStruct = null;
                    } catch (Exception e) {
                        m4547a(c2235bg.seqNo, j, c2235bg.cmd, (JceStruct) null, -1);
                        bArr2 = null;
                        jceStruct = null;
                    }
                } else if (cfpVar.first != null) {
                    try {
                        bArr2 = null;
                        jceStruct = ceq.m4739a(this.mContext, bArr, c2235bg.data, cfpVar.first, false, c2235bg.flag);
                    } catch (Exception e2) {
                        m4547a(c2235bg.seqNo, j, c2235bg.cmd, (JceStruct) null, -1);
                    }
                }
                if (!cfpVar.cdu.ccg) {
                    mo2772a = ((ccl) cfpVar.second).m4959a(c2235bg.seqNo, j, c2235bg.cmd, bArr2);
                } else {
                    mo2772a = cfpVar.second.mo2772a(c2235bg.seqNo, j, c2235bg.cmd, jceStruct);
                }
                if (mo2772a == null) {
                    m4547a(c2235bg.seqNo, j, mo2772a.second.intValue(), mo2772a.cdu, 1);
                    return;
                }
                return;
            }
            if (!cfpVar.cdu.ccg) {
            }
            if (mo2772a == null) {
            }
        } catch (Exception e3) {
            return;
        }
        bArr2 = null;
        jceStruct = null;
    }

    @Override // com.kingroot.kinguser.cff.InterfaceC2742b
    /* renamed from: b */
    public long mo4528b(boolean z, int i, C2235bg c2235bg) {
        cfp<JceStruct, cck, C2761b> cfpVar;
        if (c2235bg == null || !m4527c(c2235bg) || c2235bg.retCode != 0) {
            return -1L;
        }
        synchronized (this.cbj) {
            cfpVar = this.cbj.get(Integer.valueOf(c2235bg.cmd));
        }
        if (cfpVar == null) {
            synchronized (this.cbE) {
                this.cbE.put(Integer.valueOf(c2235bg.cmd), new C2760a(1, System.currentTimeMillis(), 0L, c2235bg, this.bYN.m4586fw().bZv.getBytes()));
            }
            this.cav.removeMessages(3);
            this.cav.sendEmptyMessageDelayed(3, 1800000L);
            return -1L;
        }
        m4532b(0L, c2235bg, this.bYN.m4586fw().bZv.getBytes(), cfpVar);
        if (cfpVar.cdu != null) {
            return cfpVar.cdu.bVi;
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003b A[Catch: Exception -> 0x0085, TRY_LEAVE, TryCatch #1 {Exception -> 0x0085, blocks: (B:7:0x0023, B:9:0x002b, B:11:0x003b, B:21:0x0075), top: B:27:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0075 A[Catch: Exception -> 0x0085, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x0085, blocks: (B:7:0x0023, B:9:0x002b, B:11:0x003b, B:21:0x0075), top: B:27:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b A[Catch: Exception -> 0x0085, TryCatch #1 {Exception -> 0x0085, blocks: (B:7:0x0023, B:9:0x002b, B:11:0x003b, B:21:0x0075), top: B:27:0x0023 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m4532b(long j, C2235bg c2235bg, byte[] bArr, cfp<JceStruct, cck, C2761b> cfpVar) {
        byte[] bArr2;
        cfp<Long, Integer, JceStruct> mo2772a;
        JceStruct jceStruct = null;
        try {
            if (c2235bg.data != null) {
                if (cfpVar.cdu.ccg) {
                    try {
                        bArr2 = ceq.m4740a(this.mContext, this.bYN.m4586fw().bZv.getBytes(), c2235bg.data, c2235bg.flag);
                    } catch (Exception e) {
                        bArr2 = null;
                    }
                } else if (cfpVar.first != null) {
                    try {
                        bArr2 = null;
                        jceStruct = ceq.m4739a(this.mContext, this.bYN.m4586fw().bZv.getBytes(), c2235bg.data, cfpVar.first, false, c2235bg.flag);
                    } catch (Exception e2) {
                    }
                }
                if (!cfpVar.cdu.ccg) {
                    mo2772a = ((ccl) cfpVar.second).m4959a(c2235bg.seqNo, j, c2235bg.cmd, bArr2);
                } else {
                    mo2772a = cfpVar.second.mo2772a(c2235bg.seqNo, j, c2235bg.cmd, jceStruct);
                }
                if (mo2772a == null) {
                    m4548a(c2235bg.seqNo, mo2772a.second.intValue(), mo2772a.cdu);
                    return;
                }
                return;
            }
            if (!cfpVar.cdu.ccg) {
            }
            if (mo2772a == null) {
            }
        } catch (Exception e3) {
            return;
        }
        bArr2 = null;
    }

    void alY() {
        if (cfd.bZU) {
            this.cav.removeMessages(4);
            this.cav.sendEmptyMessage(4);
            return;
        }
        this.cbQ = true;
    }

    /* renamed from: a */
    public WeakReference<ccn> m4547a(int i, long j, int i2, JceStruct jceStruct, int i3) {
        return m4546a(i, j, i2, jceStruct, i3, 0);
    }

    /* renamed from: a */
    public WeakReference<ccn> m4546a(int i, long j, int i2, JceStruct jceStruct, int i3, int i4) {
        C1468ar c1468ar = new C1468ar();
        c1468ar.cmd = i2;
        c1468ar.status = i3;
        if (jceStruct != null) {
            c1468ar.f1543iA = cew.m4683b(jceStruct);
        }
        C2762c c2762c = new C2762c(0, 0, -1L, 1103, jceStruct, ceq.m4736a(c1468ar), null, 1073741824, null, null);
        c2762c.bZA = i;
        c2762c.f2307jW = j;
        c2762c.retCode = i4;
        synchronized (this.cbF) {
            this.cbF.add(c2762c);
        }
        if (cfd.bZU) {
            this.cav.sendEmptyMessage(1);
        }
        return new WeakReference<>(c2762c.ccl);
    }

    /* renamed from: a */
    public WeakReference<ccn> m4548a(int i, final int i2, JceStruct jceStruct) {
        return cfd.alH().mo4493a(i2, jceStruct, null, 0, new cci() { // from class: com.kingroot.kinguser.cfh.3
            @Override // com.kingroot.kinguser.cci
            /* renamed from: a */
            public void mo457a(int i3, int i4, int i5, int i6, JceStruct jceStruct2) {
                int i7 = i2;
            }
        });
    }

    /* renamed from: a */
    public void m4545a(long j, int i, int i2, int i3, int i4) {
        C2762c c2762c = new C2762c(Process.myPid(), 0, 0L, i, null, new byte[0], null, 1073741824, null, null);
        c2762c.retCode = i4;
        c2762c.bZA = i3;
        c2762c.f2307jW = j;
        synchronized (this.cbF) {
            this.cbF.add(c2762c);
        }
        if (cfd.bZU) {
            this.cav.sendEmptyMessage(1);
        }
    }

    /* renamed from: com.kingroot.kinguser.cfh$d */
    /* loaded from: classes.dex */
    class RunnableC2763d implements Runnable {
        private TreeMap<Integer, C2762c> cco;
        private ArrayList<C2762c> ccp;
        private Handler ccq;
        private Handler ccr;

        private RunnableC2763d() {
            this.cco = new TreeMap<>();
            this.ccp = new ArrayList<>();
            this.ccq = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cfh.d.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    cfn cfnVar = (cfn) message.obj;
                    C2235bg c2235bg = new C2235bg();
                    c2235bg.retCode = -11050000;
                    c2235bg.f1669jX = message.what;
                    if (cfnVar != null) {
                        c2235bg.cmd = cfnVar.bZh;
                    }
                    RunnableC2763d.this.m4497d(c2235bg);
                }
            };
            this.ccr = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cfh.d.2
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    switch (message.what) {
                        case 1:
                            C2235bg c2235bg = new C2235bg();
                            c2235bg.retCode = -10000017;
                            c2235bg.f1669jX = message.arg1;
                            c2235bg.cmd = message.arg2;
                            RunnableC2763d.this.m4497d(c2235bg);
                            return;
                        default:
                            return;
                    }
                }
            };
        }

        public Set<Map.Entry<Integer, C2762c>> alW() {
            TreeMap treeMap;
            synchronized (this.cco) {
                treeMap = (TreeMap) this.cco.clone();
            }
            return treeMap.entrySet();
        }

        /* renamed from: a */
        public void m4499a(Integer num, C2762c c2762c) {
            this.cco.put(num, c2762c);
        }

        /* renamed from: lk */
        public boolean m4496lk(int i) {
            boolean containsKey;
            synchronized (this.cco) {
                containsKey = this.cco.containsKey(Integer.valueOf(i));
            }
            return containsKey;
        }

        @Override // java.lang.Runnable
        public void run() {
            long j;
            long j2 = 0;
            try {
                ArrayList<C2036az> arrayList = new ArrayList<>();
                ArrayList<C2036az> arrayList2 = new ArrayList<>();
                ArrayList<C2036az> arrayList3 = new ArrayList<>();
                ArrayList<C2036az> arrayList4 = new ArrayList<>();
                cez.C2723b m4586fw = cfh.this.bYN.m4586fw();
                for (Map.Entry<Integer, C2762c> entry : alW()) {
                    if (!entry.getValue().ccl.akI()) {
                        if (entry.getValue().alO()) {
                            this.ccr.obtainMessage(1, entry.getValue().bZA, entry.getValue().mCmdId).sendToTarget();
                        } else {
                            entry.getValue().ccl.setState(1);
                            C2036az c2036az = new C2036az();
                            c2036az.cmd = entry.getValue().mCmdId;
                            c2036az.seqNo = entry.getValue().bZA;
                            c2036az.f1642jY = entry.getValue().cbx;
                            c2036az.f1641jX = 0;
                            c2036az.data = null;
                            TextUtils.isEmpty(m4586fw.bZv);
                            if (entry.getValue().cch != null) {
                                c2036az.data = ceq.m4741a(cfh.this.mContext, entry.getValue().cch, c2036az.cmd, c2036az);
                            } else {
                                c2036az.data = ceq.m4744a(cfh.this.mContext, entry.getValue().cby, c2036az.cmd, c2036az);
                            }
                            if (entry.getValue().ccm > 0) {
                                this.ccq.sendMessageDelayed(Message.obtain(this.ccq, c2036az.seqNo, new cfn(c2036az.cmd)), entry.getValue().ccm);
                            }
                            if ((entry.getValue().mFlag & 2048) != 0) {
                                arrayList.add(c2036az);
                            } else if ((entry.getValue().mFlag & 512) != 0) {
                                arrayList2.add(c2036az);
                            } else if ((entry.getValue().mFlag & 1024) != 0) {
                                arrayList3.add(c2036az);
                            } else {
                                arrayList4.add(c2036az);
                            }
                            cfc.alC().m4661a("SharkProtocolQueue", c2036az.cmd, c2036az.seqNo, c2036az, 0);
                            if (entry.getValue().ccn > j2) {
                                j = entry.getValue().ccn;
                                j2 = j;
                            }
                        }
                    }
                    j = j2;
                    j2 = j;
                }
                Iterator<C2762c> it = this.ccp.iterator();
                while (it.hasNext()) {
                    C2762c next = it.next();
                    if (next.alO()) {
                        if (next.mCmdId == 1103) {
                        }
                    } else {
                        C2036az c2036az2 = new C2036az();
                        c2036az2.cmd = next.mCmdId;
                        c2036az2.seqNo = cfb.aly().alo();
                        c2036az2.f1641jX = next.bZA;
                        c2036az2.data = null;
                        c2036az2.retCode = next.retCode;
                        c2036az2.f1643jZ = next.cck;
                        C1997ay c1997ay = new C1997ay();
                        c1997ay.f1634jW = next.f2307jW;
                        c2036az2.f1644ka = c1997ay;
                        TextUtils.isEmpty(m4586fw.bZv);
                        try {
                            if (next.cch != null) {
                                c2036az2.data = ceq.m4741a(cfh.this.mContext, next.cch, c2036az2.cmd, c2036az2);
                            } else {
                                c2036az2.data = ceq.m4744a(cfh.this.mContext, next.cby, c2036az2.cmd, c2036az2);
                            }
                        } catch (Exception e) {
                        }
                        if ((next.mFlag & 2048) != 0) {
                            arrayList.add(c2036az2);
                        } else if ((next.mFlag & 512) != 0) {
                            arrayList2.add(c2036az2);
                        } else if ((next.mFlag & 1024) != 0) {
                            arrayList3.add(c2036az2);
                        } else {
                            arrayList4.add(c2036az2);
                        }
                        cfc.alC().m4661a("SharkProtocolQueue", c2036az2.cmd, c2036az2.seqNo, c2036az2, 0);
                    }
                }
                if (arrayList.size() > 0) {
                    cfh.this.bYN.m4624a(2048, j2, true, arrayList, new cff.InterfaceC2741a() { // from class: com.kingroot.kinguser.cfh.d.3
                        @Override // com.kingroot.kinguser.cff.InterfaceC2741a
                        /* renamed from: a */
                        public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList5) {
                            RunnableC2763d.this.m4498b(z, i, i2, arrayList5);
                        }
                    });
                }
                if (arrayList2.size() > 0) {
                    cfh.this.bYN.m4624a(512, j2, true, arrayList2, new cff.InterfaceC2741a() { // from class: com.kingroot.kinguser.cfh.d.4
                        @Override // com.kingroot.kinguser.cff.InterfaceC2741a
                        /* renamed from: a */
                        public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList5) {
                            RunnableC2763d.this.m4498b(z, i, i2, arrayList5);
                        }
                    });
                }
                if (arrayList3.size() > 0) {
                    cfh.this.bYN.m4624a(1024, j2, true, arrayList3, new cff.InterfaceC2741a() { // from class: com.kingroot.kinguser.cfh.d.5
                        @Override // com.kingroot.kinguser.cff.InterfaceC2741a
                        /* renamed from: a */
                        public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList5) {
                            RunnableC2763d.this.m4498b(z, i, i2, arrayList5);
                        }
                    });
                }
                if (arrayList4.size() > 0) {
                    cfh.this.bYN.m4624a(0, j2, true, arrayList4, new cff.InterfaceC2741a() { // from class: com.kingroot.kinguser.cfh.d.6
                        @Override // com.kingroot.kinguser.cff.InterfaceC2741a
                        /* renamed from: a */
                        public void mo4412a(boolean z, int i, int i2, ArrayList<C2235bg> arrayList5) {
                            RunnableC2763d.this.m4498b(z, i, i2, arrayList5);
                        }
                    });
                }
            } catch (Exception e2) {
                m4495ll(-10001200);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public void m4498b(boolean z, int i, int i2, ArrayList<C2235bg> arrayList) {
            if (i == 0) {
                Iterator<C2235bg> it = arrayList.iterator();
                while (it.hasNext()) {
                    C2235bg next = it.next();
                    if (m4496lk(next.f1669jX)) {
                        m4497d(next);
                    } else if (cfh.m4531b(next)) {
                        cfh.this.mo4535a(z, i2, next);
                    } else if (cfh.m4527c(next)) {
                        cfh.this.mo4528b(z, i2, next);
                    }
                }
                return;
            }
            m4495ll(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m4497d(C2235bg c2235bg) {
            byte[] bArr;
            JceStruct jceStruct = null;
            this.ccq.removeMessages(c2235bg.f1669jX);
            synchronized (this.cco) {
                C2762c c2762c = this.cco.get(Integer.valueOf(c2235bg.f1669jX));
                if (c2762c != null) {
                    this.cco.remove(Integer.valueOf(c2235bg.f1669jX));
                    if (c2235bg.data == null || c2235bg.retCode != 0) {
                        bArr = null;
                    } else {
                        try {
                            if (c2762c.ccj == null || c2762c.cbu <= 0) {
                                jceStruct = ceq.m4739a(cfh.this.mContext, cfh.this.bYN.m4586fw().bZv.getBytes(), c2235bg.data, c2762c.cbz, false, c2235bg.flag);
                                bArr = null;
                            } else {
                                bArr = ceq.m4740a(cfh.this.mContext, cfh.this.bYN.m4586fw().bZv.getBytes(), c2235bg.data, c2235bg.flag);
                            }
                            if (jceStruct == null && bArr == null) {
                                try {
                                    if (c2762c.cbz != null) {
                                        c2235bg.retCode = cen.m4765kY(-11000300);
                                    }
                                } catch (Exception e) {
                                    c2235bg.retCode = cen.m4765kY(-11000900);
                                    if (c2762c.cci != bArr) {
                                    }
                                    if (c2762c.cbz != jceStruct) {
                                    }
                                    m4503a(c2235bg, c2762c, Integer.valueOf(c2235bg.cmd), Integer.valueOf(c2235bg.retCode), Integer.valueOf(c2235bg.f1670jZ));
                                }
                            }
                        } catch (Exception e2) {
                            bArr = null;
                        }
                    }
                    if (c2762c.cci != bArr) {
                        c2762c.cci = bArr;
                    }
                    if (c2762c.cbz != jceStruct) {
                        c2762c.cbz = jceStruct;
                    }
                    try {
                        m4503a(c2235bg, c2762c, Integer.valueOf(c2235bg.cmd), Integer.valueOf(c2235bg.retCode), Integer.valueOf(c2235bg.f1670jZ));
                    } catch (Exception e3) {
                    }
                }
            }
        }

        /* renamed from: ll */
        private void m4495ll(int i) {
            Set<Map.Entry<Integer, C2762c>> alW = alW();
            synchronized (this.cco) {
                this.cco.clear();
            }
            for (Map.Entry<Integer, C2762c> entry : alW) {
                try {
                    m4503a((C2235bg) null, entry.getValue(), Integer.valueOf(entry.getValue().mCmdId), Integer.valueOf(i), (Integer) (-1));
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: a */
        private void m4503a(C2235bg c2235bg, final C2762c c2762c, final Integer num, Integer num2, final Integer num3) {
            c2762c.ccl.setState(2);
            final int m4765kY = cen.m4765kY(num2.intValue());
            if (c2235bg == null) {
                cfc.alC().m4659a("SharkProtocolQueue", num.intValue(), c2762c.bZA, c2235bg, 30, m4765kY);
                cfc.alC().m4651lf(c2762c.bZA);
            } else {
                cfc.alC().m4659a("SharkProtocolQueue", num.intValue(), c2235bg.f1669jX, c2235bg, 30, m4765kY);
                cfc.alC().m4651lf(c2235bg.f1669jX);
            }
            if (c2762c.cbA != null || c2762c.ccj != null) {
                switch (ccm.m4958kT(c2762c.mFlag)) {
                    case 8:
                        cfh.this.cbk.sendMessage(cfh.this.cbk.obtainMessage(11, new Object[]{c2762c, num, Integer.valueOf(m4765kY), num3}));
                        return;
                    case 16:
                        if (c2762c.ccj != null && c2762c.cbu > 0) {
                            c2762c.ccj.m4960a(c2762c.bux, c2762c.cbu, c2762c.bZA, num.intValue(), m4765kY, num3.intValue(), c2762c.cci);
                            return;
                        } else {
                            c2762c.cbA.mo457a(c2762c.bZA, num.intValue(), m4765kY, num3.intValue(), c2762c.cbz);
                            return;
                        }
                    default:
                        bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfh.d.7
                            @Override // java.lang.Runnable
                            public void run() {
                                if (c2762c.ccj != null && c2762c.cbu > 0) {
                                    c2762c.ccj.m4960a(c2762c.bux, c2762c.cbu, c2762c.bZA, num.intValue(), m4765kY, num3.intValue(), c2762c.cci);
                                } else {
                                    c2762c.cbA.mo457a(c2762c.bZA, num.intValue(), m4765kY, num3.intValue(), c2762c.cbz);
                                }
                            }
                        }, "shark callback");
                        return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cfh$c */
    /* loaded from: classes.dex */
    public class C2762c {
        public int bZA;
        public int bux;
        public cci cbA;
        public int cbu;
        public long cbx;
        public JceStruct cby;
        public JceStruct cbz;
        public byte[] cch;
        public byte[] cci;
        public ccj ccj;
        public int cck;

        /* renamed from: jW */
        public long f2307jW;
        public int mCmdId;
        public int mFlag;
        public int retCode;
        public long ccm = -1;
        public long ccn = 0;
        public long caS = System.currentTimeMillis();
        public ccn ccl = new ccn();

        C2762c(int i, int i2, long j, int i3, JceStruct jceStruct, byte[] bArr, JceStruct jceStruct2, int i4, cci cciVar, ccj ccjVar) {
            this.bux = i;
            this.cbu = i2;
            this.cbx = j;
            this.mCmdId = i3;
            this.cby = jceStruct;
            this.cch = bArr;
            this.cbz = jceStruct2;
            this.mFlag = i4;
            this.cbA = cciVar;
            this.ccj = ccjVar;
        }

        public boolean alO() {
            long abs = Math.abs(System.currentTimeMillis() - this.caS);
            boolean z = abs >= ((this.ccm > 0L ? 1 : (this.ccm == 0L ? 0 : -1)) > 0 ? this.ccm : 180000L);
            if (z) {
                StringBuilder sb = new StringBuilder();
                sb.append("cmdId|").append(this.mCmdId);
                sb.append("|mIpcSeqNo|").append(this.cbu);
                sb.append("|mSeqNo|").append(this.bZA);
                sb.append("|pushId|").append(this.f2307jW);
                sb.append("|mCallerIdent|").append(this.cbx);
                sb.append("|callBackTimeout|").append(this.ccm);
                sb.append("|time(s)|").append(abs / 1000);
                cfe.m4632c("ocean", "[ocean][time_out]SharkProtocolQueue.SharkSendTask.isTimeOut(), " + sb.toString(), null, null);
            }
            return z;
        }
    }

    @Override // com.kingroot.kinguser.cdw
    /* renamed from: I */
    public void mo4351I(Context context) {
        this.mContext = context;
    }

    @Override // com.kingroot.kinguser.cdw
    public int aka() {
        return 1;
    }

    /* renamed from: e */
    public void m4522e(boolean z, String str) {
        cfd.m4648eV(z);
        this.bYN = new cff(TMSDKContext.akS(), this.bYt, this, this, z, str);
        this.cam = Executors.newSingleThreadExecutor();
        if (this.f2305yb) {
            SharkNetworkReceiver.alR().m10a(new SharkNetworkReceiver.InterfaceC4422b() { // from class: com.kingroot.kinguser.cfh.4
                @Override // tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.InterfaceC4422b
                public void alD() {
                    cfh.this.m4550KD();
                }
            });
            cey.alt();
            cfc.alC().m4656b(this.bYt);
        }
        this.cav.sendEmptyMessage(2);
    }

    /* renamed from: c */
    public void m4526c(ceu ceuVar) {
        this.bYt = ceuVar;
        this.f2305yb = this.bYt.mo2730fI();
    }

    public void refresh() {
        if (cfd.bZU) {
            this.bYN.refresh();
        } else {
            this.cbI = true;
        }
    }

    public ceu alL() {
        return this.bYt;
    }

    public String getGuid() {
        return this.bYN == null ? "" : this.bYN.getGuid();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public void m4549U(final int i, final String str) {
        final ArrayList arrayList = new ArrayList();
        synchronized (this.cbU) {
            if (this.cbU.size() > 0) {
                arrayList.addAll(this.cbU);
                this.cbU.clear();
            }
        }
        if (arrayList.size() > 0) {
            bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfh.5
                @Override // java.lang.Runnable
                public void run() {
                    for (ccg ccgVar : arrayList) {
                        ccgVar.m4963T(i, str);
                    }
                }
            }, "shark callback: guid got");
        }
    }

    /* renamed from: KD */
    public void m4550KD() {
        if (cfd.bZU) {
            if (this.bYN != null) {
                this.bYN.m4626KD();
                return;
            }
            return;
        }
        this.cbJ = true;
    }

    public void onReady() {
        if (cfd.bZU) {
            if (this.bYN != null) {
                this.bYN.onReady();
                return;
            }
            return;
        }
        this.cbK = true;
    }

    /* renamed from: b */
    public WeakReference<ccn> m4533b(int i, int i2, int i3, long j, long j2, int i4, JceStruct jceStruct, byte[] bArr, JceStruct jceStruct2, int i5, cci cciVar, ccj ccjVar, long j3, long j4) {
        if (i3 > 0) {
            return m4547a(i3, j, i4, jceStruct, 1);
        }
        C2762c c2762c = new C2762c(i, i2, j2, i4, jceStruct, bArr, jceStruct2, i5, cciVar, ccjVar);
        c2762c.bZA = cfb.aly().alo();
        c2762c.ccm = j3;
        c2762c.ccn = j4;
        synchronized (this.cbF) {
            this.cbF.add(c2762c);
        }
        cfc.alC().m4657b(c2762c.bZA, j3, null);
        if (cfd.bZU) {
            this.cav.sendEmptyMessage(1);
        }
        return new WeakReference<>(c2762c.ccl);
    }

    @Override // com.kingroot.kinguser.cff.InterfaceC2743c
    /* renamed from: a */
    public void mo4544a(long j, int i, JceStruct jceStruct, int i2, cck cckVar, boolean z) {
        if (cckVar != null) {
            synchronized (this.cbj) {
                this.cbj.put(Integer.valueOf(i), new cfp<>(jceStruct, cckVar, new C2761b(z, j)));
            }
            if (cfd.bZU) {
                this.cav.obtainMessage(5, i, 0).sendToTarget();
            }
        }
    }

    public void alZ() {
        if (cfd.bZU) {
            this.bYN.alK().alZ();
        } else {
            this.cbL = true;
        }
    }

    /* renamed from: m */
    public void m4514m(int i, int i2, int i3) {
        if (cfd.bZU) {
            this.bYN.m4577m(i, i2, i3);
            return;
        }
        if (this.cbP == null) {
            this.cbP = new LinkedList<>();
        }
        this.cbP.add(new cex(i, i2, i3));
    }

    /* renamed from: aA */
    public cck m4534aA(int i, int i2) {
        cck cckVar = null;
        synchronized (this.cbj) {
            if (this.cbj.containsKey(Integer.valueOf(i))) {
                cckVar = this.cbj.remove(Integer.valueOf(i)).second;
            }
        }
        return cckVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ama() {
        if (cfd.bZU) {
            this.bYN.alK().m4455W(0, "tcp_control");
        } else {
            this.cbM = true;
        }
    }

    public void alM() {
        if (cfd.bZU) {
            if (this.bYN != null) {
                this.bYN.alM();
                return;
            }
            return;
        }
        this.cbN = true;
    }

    public void alN() {
        if (cfd.bZU) {
            this.bYN.alN();
        } else {
            this.cbO = true;
        }
    }

    public void amb() {
        if (this.f2305yb) {
            if (cfd.bZU) {
                this.bYN.alK().amb();
            } else {
                this.cbS = true;
            }
        }
    }

    public void amc() {
        if (this.f2305yb) {
            if (cfd.bZU) {
                this.bYN.alK().amc();
            } else {
                this.cbT = true;
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.cfh$b */
    /* loaded from: classes.dex */
    public static class C2761b {
        public long bVi;
        public boolean ccg;

        public C2761b(boolean z, long j) {
            this.ccg = z;
            this.bVi = j;
        }
    }
}
