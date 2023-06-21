package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import shark.C4395a;
import tmsdk.common.BaseTMSReceiver;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class cfk {
    private ceu bYt;
    private PowerManager bZE;
    private C2776b ccA;
    private C1400ap ccB;
    private InterfaceC2775a ccz;
    private AtomicInteger ccC = new AtomicInteger(0);
    private boolean ccD = false;
    private Handler mHandler = new Handler(cfd.getLooper()) { // from class: com.kingroot.kinguser.cfk.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    cfk.this.amj();
                    cfk.this.ccz.amp();
                    return;
                case 1:
                    cfk.this.ami();
                    return;
                case 2:
                default:
                    return;
                case 3:
                    cfk.this.aml();
                    return;
            }
        }
    };
    private Runnable ccE = new Runnable() { // from class: com.kingroot.kinguser.cfk.2
        @Override // java.lang.Runnable
        public void run() {
            synchronized (cfk.this) {
                if (cfk.this.ccD) {
                    cfk.this.ami();
                    cfk.this.ccD = false;
                }
            }
        }
    };
    private boolean mIsRunning = false;
    private Context mContext = TMSDKContext.akS();

    /* renamed from: com.kingroot.kinguser.cfk$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2775a {
        void amp();

        void onClose();
    }

    public cfk(ceu ceuVar, InterfaceC2775a interfaceC2775a) {
        this.bYt = ceuVar;
        this.ccz = interfaceC2775a;
        try {
            this.bZE = (PowerManager) this.mContext.getSystemService("power");
        } catch (Throwable th) {
        }
    }

    public synchronized void amb() {
        if (!this.mIsRunning) {
            if (this.ccA == null) {
                this.ccA = new C2776b();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("action_keep_alive_close");
                intentFilter.addAction("action_keep_alive_cycle");
                try {
                    this.mContext.registerReceiver(this.ccA, intentFilter);
                } catch (Throwable th) {
                }
            }
            this.mHandler.sendEmptyMessage(3);
            this.mIsRunning = true;
        }
    }

    public synchronized void amc() {
        if (this.mIsRunning) {
            amm();
            if (this.ccA != null) {
                try {
                    this.mContext.unregisterReceiver(this.ccA);
                    this.ccA = null;
                } catch (Throwable th) {
                }
            }
            ami();
            this.mIsRunning = false;
        }
    }

    /* renamed from: fD */
    public C1400ap m4476fD() {
        synchronized (this) {
            if (this.ccB == null) {
                this.ccB = this.bYt.mo2728fK();
                if (this.ccB != null) {
                    m4479d(this.ccB);
                } else {
                    this.ccB = new C1400ap();
                    if (cfd.alE()) {
                        this.ccB.f1512hX = 30;
                        this.ccB.f1517ia = 30;
                    } else {
                        this.ccB.f1512hX = 270;
                        this.ccB.f1517ia = 300;
                    }
                    this.ccB.f1513hY = new ArrayList<>();
                    this.ccB.f1514hZ = amk();
                    this.ccB.f1518ib = true;
                    this.ccB.f1519ic = true;
                    this.ccB.f1520ie = 120;
                    this.ccB.f1521if = 10;
                }
            }
        }
        return this.ccB;
    }

    public int amg() {
        return this.ccC.get();
    }

    public void amh() {
        this.ccC.set(0);
    }

    /* renamed from: c */
    public void m4483c(C1400ap c1400ap) {
        if (c1400ap != null) {
            synchronized (this) {
                this.ccB = c1400ap;
                this.bYt.mo2738b(this.ccB);
                m4479d(this.ccB);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0028, code lost:
        if (r0 == false) goto L25;
     */
    /* renamed from: nV */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean m4473nV(String str) {
        boolean z = true;
        boolean z2 = false;
        C1400ap m4476fD = m4476fD();
        if (m4476fD == null) {
            return true;
        }
        boolean z3 = m4476fD.f1518ib || C4395a.bXd == cgr.anb();
        if (z3 && !m4476fD.f1519ic) {
            if (this.bZE != null) {
                try {
                    if (this.bZE.isScreenOn()) {
                        z = false;
                    }
                } catch (Throwable th) {
                }
            }
            z = false;
        }
        z2 = z3;
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cQ */
    public void m4481cQ(long j) {
        long j2 = 1000 * m4476fD().f1517ia;
        if (j2 >= j) {
            j = j2;
        }
        synchronized (this) {
            if (!this.ccD) {
                amj();
                this.ccD = true;
            }
        }
        cee.akW().m4785nI("action_keep_alive_after_send_end");
        cee.akW().m4786a("action_keep_alive_after_send_end", j, this.ccE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ami() {
        if (this.ccC.decrementAndGet() <= 0) {
            this.ccC.set(0);
            this.ccz.onClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void amj() {
        if (this.ccC.get() < 0) {
            this.ccC.set(0);
        }
        this.ccC.incrementAndGet();
    }

    /* renamed from: d */
    private static void m4479d(C1400ap c1400ap) {
        if (c1400ap != null) {
            if (c1400ap.f1514hZ != null && c1400ap.f1514hZ.size() > 0) {
                m4480cx(c1400ap.f1514hZ);
            } else {
                c1400ap.f1514hZ = amk();
            }
            if (c1400ap.f1512hX <= 30) {
                c1400ap.f1512hX = 30;
            }
            if (c1400ap.f1517ia <= 0) {
                c1400ap.f1517ia = 300;
            }
            if (c1400ap.f1520ie <= 0) {
                c1400ap.f1520ie = 120;
            }
            if (c1400ap.f1521if <= 0) {
                c1400ap.f1521if = 10;
            }
        }
    }

    private static ArrayList<C1235an> amk() {
        ArrayList<C1235an> arrayList = new ArrayList<>();
        C1235an c1235an = new C1235an();
        c1235an.f1488hv = m4474ln(0);
        c1235an.f1486hC = m4475lm(10);
        c1235an.f1487hD = m4475lm(60);
        arrayList.add(c1235an);
        C1235an c1235an2 = new C1235an();
        c1235an2.f1488hv = m4474ln(8);
        c1235an2.f1486hC = m4475lm(15);
        c1235an2.f1487hD = m4475lm(15);
        arrayList.add(c1235an2);
        C1235an c1235an3 = new C1235an();
        c1235an3.f1488hv = m4474ln(15);
        c1235an3.f1486hC = m4475lm(10);
        c1235an3.f1487hD = m4475lm(20);
        arrayList.add(c1235an3);
        return arrayList;
    }

    /* renamed from: cx */
    private static void m4480cx(List<C1235an> list) {
        if (list != null && list.size() != 0) {
            if (list.get(0).f1488hv > 0) {
                C1235an c1235an = list.get(list.size() - 1);
                C1235an c1235an2 = new C1235an();
                c1235an2.f1488hv = m4474ln(0);
                c1235an2.f1486hC = c1235an.f1486hC;
                c1235an2.f1487hD = c1235an.f1487hD;
                list.add(0, c1235an2);
            }
            try {
                Collections.sort(list, new Comparator<C1235an>() { // from class: com.kingroot.kinguser.cfk.3
                    @Override // java.util.Comparator
                    /* renamed from: a */
                    public final int compare(C1235an c1235an3, C1235an c1235an4) {
                        return c1235an3.f1488hv - c1235an4.f1488hv;
                    }
                });
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aml() {
        C1235an amn = amn();
        if (amn != null) {
            amm();
            if (m4473nV("execRule")) {
                this.mHandler.sendEmptyMessage(0);
                cfr.m4398b(this.mContext, "action_keep_alive_close", amn.f1486hC * 1000);
            }
            cfr.m4398b(this.mContext, "action_keep_alive_cycle", (amn.f1487hD + amn.f1486hC) * 1000);
        }
    }

    private void amm() {
        cfr.m4399aa(this.mContext, "action_keep_alive_close");
        cfr.m4399aa(this.mContext, "action_keep_alive_cycle");
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(3);
        this.mHandler.removeMessages(0);
    }

    private C1235an amn() {
        synchronized (this) {
            C1400ap m4476fD = m4476fD();
            if (m4476fD != null && m4476fD.f1514hZ != null && m4476fD.f1514hZ.size() > 0) {
                int amo = amo();
                for (int size = m4476fD.f1514hZ.size() - 1; size >= 0; size--) {
                    C1235an c1235an = m4476fD.f1514hZ.get(size);
                    if (c1235an.f1488hv <= amo) {
                        return c1235an;
                    }
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cfk$b */
    /* loaded from: classes.dex */
    public class C2776b extends BaseTMSReceiver {
        private C2776b() {
        }

        @Override // tmsdk.common.BaseTMSReceiver
        /* renamed from: f */
        public void mo5f(Context context, Intent intent) {
            String action = intent.getAction();
            String str = intent.getPackage();
            if (action != null && str != null && str.equals(TMSDKContext.akS().getPackageName())) {
                if (action.equals("action_keep_alive_cycle")) {
                    cfk.this.mHandler.sendEmptyMessage(3);
                } else if (action.equals("action_keep_alive_close")) {
                    cfk.this.mHandler.sendEmptyMessage(1);
                }
            }
        }
    }

    private int amo() {
        Calendar calendar = Calendar.getInstance();
        if (calendar == null) {
            return 0;
        }
        return calendar.get(13) + (calendar.get(11) * 3600) + (calendar.get(12) * 60);
    }

    /* renamed from: lm */
    private static final int m4475lm(int i) {
        return i * 60;
    }

    /* renamed from: ln */
    private static final int m4474ln(int i) {
        return m4475lm(i * 60);
    }
}
