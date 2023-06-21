package com.kingroot.kinguser;

import android.os.Looper;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.statics.ActionStatsID;
import com.kingroot.common.utils.system.KmVTCmdResult;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.kinguser.cbw;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class acm implements cbw {
    private static final cce<acm> sInstance = new cce<acm>() { // from class: com.kingroot.kinguser.acm.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: rR */
        public acm create() {
            return new acm();
        }
    };

    /* renamed from: ZL */
    private volatile boolean f1387ZL;
    private final Object aaA;
    private final Object aaB;
    private int aaC;
    private final Object aaD;
    private volatile abm aaa;
    private final AtomicInteger aax;
    private InterfaceC3797vr aay;
    private final List<cbw.InterfaceC2700a> aaz;

    /* renamed from: rL */
    public static acm m12714rL() {
        return sInstance.get();
    }

    private acm() {
        this.aaa = null;
        this.f1387ZL = false;
        this.aax = new AtomicInteger(0);
        this.aay = C3799vt.m1728lT();
        this.aaz = new ArrayList();
        this.aaA = new Object();
        this.aaB = new Object();
        this.aaC = 0;
        this.aaD = new Object();
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: a */
    public void mo4997a(cbw.InterfaceC2700a interfaceC2700a) {
        if (interfaceC2700a != null) {
            synchronized (this.aaz) {
                this.aaz.add(interfaceC2700a);
            }
        }
    }

    /* renamed from: an */
    private synchronized void m12722an(boolean z) {
        synchronized (this.aaz) {
            for (cbw.InterfaceC2700a interfaceC2700a : this.aaz) {
                if (interfaceC2700a != null) {
                    interfaceC2700a.mo4994ad(z);
                }
            }
        }
    }

    protected void finalize() {
        closeShell();
        super.finalize();
    }

    /* renamed from: b */
    private void m12721b(abs absVar) {
        abv.m12747ry().m12749a(absVar);
    }

    public void registerRootHolder(String str) {
        abs absVar;
        if (!TextUtils.isEmpty(str)) {
            try {
                absVar = (abs) Class.forName(str).newInstance();
            } catch (ClassNotFoundException e) {
                absVar = null;
            } catch (IllegalAccessException e2) {
                absVar = null;
            } catch (InstantiationException e3) {
                absVar = null;
            }
            if (absVar == null) {
            }
            m12721b(absVar);
        }
    }

    /* renamed from: rM */
    private abm m12713rM() {
        abm m12820ep;
        abm m12820ep2;
        abm m12820ep3;
        abm m12820ep4;
        if (abd.m12839qb() < 18 || (m12820ep4 = abj.m12820ep("ku.sud")) == null) {
            if (!abf.m12838qP()) {
                File file = new File(abu.f1378ZV);
                if (file.exists() && (m12820ep3 = abj.m12820ep(file.getAbsolutePath())) != null) {
                    return m12820ep3;
                }
            }
            File file2 = new File(abu.f1379ZW);
            if (!file2.exists() || (m12820ep2 = abj.m12820ep(file2.getAbsolutePath())) == null) {
                File file3 = new File("/system/usr/ikm/ikmsu");
                if (!file3.exists() || (m12820ep = abj.m12820ep(file3.getAbsolutePath())) == null) {
                    return null;
                }
                return m12820ep;
            }
            return m12820ep2;
        }
        return m12820ep4;
    }

    @Override // com.kingroot.kinguser.cbw
    public void closeShell() {
        synchronized (this.aaB) {
            if (this.aaa != null) {
                this.aaa.shutdown();
                this.aaa = null;
            }
        }
    }

    /* renamed from: d */
    private void m12717d(abm abmVar) {
        if (abmVar != null) {
            synchronized (this.aaB) {
                closeShell();
                this.aaa = abmVar;
            }
        }
    }

    /* renamed from: rN */
    private abm m12712rN() {
        abm abmVar;
        synchronized (this.aaB) {
            abmVar = this.aaa;
        }
        return abmVar;
    }

    public boolean isRootPermition() {
        return isRootPermition(false);
    }

    @Override // com.kingroot.kinguser.cbw
    public boolean isRootPermition(boolean z) {
        if (z) {
            m12709rQ();
        }
        abm m12712rN = m12712rN();
        boolean z2 = (m12712rN == null || m12712rN.m12799qR()) ? false : true;
        if (!z2 && z) {
            synchronized (this.aaA) {
                abm m12712rN2 = m12712rN();
                z2 = (m12712rN2 == null || m12712rN2.m12799qR()) ? false : true;
                if (!z2) {
                    this.aay.mo1746bi(ActionStatsID.EMID_KingCom_Got_Root_Count);
                    z2 = m12711rO();
                    if (z2) {
                        this.aay.mo1746bi(ActionStatsID.EMID_KingCom_Got_Root_Success_Count);
                    }
                }
            }
        }
        m12722an(z2);
        C3823wb.m1590V(z2);
        return z2;
    }

    /* renamed from: rO */
    private boolean m12711rO() {
        abm m12748rr = abv.m12747ry().m12748rr();
        if (m12748rr != null) {
            m12717d(m12748rr);
            if (!this.f1387ZL) {
                this.f1387ZL = aco.m12704e(m12748rr);
            }
            return true;
        }
        return false;
    }

    @Override // com.kingroot.kinguser.cbw
    public boolean isRootPermitionInBackupSu() {
        m12709rQ();
        boolean isRootPermition = isRootPermition(false);
        if (!isRootPermition) {
            synchronized (this.aaA) {
                isRootPermition = m12710rP();
            }
        }
        return isRootPermition;
    }

    /* renamed from: rP */
    private synchronized boolean m12710rP() {
        boolean z;
        abm m12713rM = m12713rM();
        if (m12713rM != null) {
            m12717d(m12713rM);
            if (!this.f1387ZL) {
                this.f1387ZL = aco.m12704e(m12713rM);
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    public VTCmdResult runRootCommand(String str, String str2, boolean z) {
        return mo4998a(new VTCommand(str, str2, z ? 120000L : 0L));
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    @Override // com.kingroot.kinguser.cbw
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public KmVTCmdResult mo4998a(VTCommand vTCommand) {
        VTCmdResult vTCmdResult;
        Exception exc;
        m12709rQ();
        if (!isRootPermition()) {
            return new KmVTCmdResult(vTCommand.mCmdFlag, 1, "", "Run Root Cmd Permission Denied");
        }
        VTCmdResult vTCmdResult2 = null;
        try {
            abm m12712rN = m12712rN();
            if (m12712rN != null) {
                vTCmdResult2 = m12712rN.m12806b(m12718d(vTCommand));
                try {
                    this.aax.set(0);
                    m12719ch(1);
                } catch (Exception e) {
                    vTCmdResult = vTCmdResult2;
                    exc = e;
                    m12716d(exc);
                    if (vTCmdResult != null) {
                    }
                }
            }
            vTCmdResult = vTCmdResult2;
        } catch (Exception e2) {
            vTCmdResult = null;
            exc = e2;
        }
        if (vTCmdResult != null) {
            return new KmVTCmdResult(vTCommand.mCmdFlag, 2, "", "Run Root Cmd Exception");
        }
        return new KmVTCmdResult(vTCmdResult);
    }

    @Override // com.kingroot.kinguser.cbw
    public List<VTCmdResult> runRootCommands(List<String> list) {
        return mo4996e(list, true);
    }

    @Override // com.kingroot.kinguser.cbw
    /* renamed from: e */
    public List<VTCmdResult> mo4996e(List<String> list, boolean z) {
        m12709rQ();
        if (!isRootPermition()) {
            return new ArrayList(list.size());
        }
        List<VTCmdResult> list2 = null;
        try {
            abm m12712rN = m12712rN();
            if (m12712rN == null) {
                return null;
            }
            list2 = m12712rN.m12800h(m12723U(list), z);
            this.aax.set(0);
            m12719ch(1);
            return list2;
        } catch (Exception e) {
            m12716d(e);
            return list2;
        }
    }

    /* renamed from: hK */
    protected boolean m12715hK() {
        InterfaceC3519rh m13448hV = KApplication.m13448hV();
        if (!(m13448hV instanceof AbstractC3514re)) {
            return false;
        }
        return ((AbstractC3514re) m13448hV).m2487hK();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    @Override // com.kingroot.kinguser.cbw
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<VTCmdResult> mo4995q(List<VTCommand> list) {
        List<VTCmdResult> list2;
        if (C3942yy.m1351d(list)) {
            return Collections.emptyList();
        }
        m12709rQ();
        if (!isRootPermition()) {
            return new ArrayList(list.size());
        }
        List<VTCmdResult> list3 = null;
        try {
            abm m12712rN = m12712rN();
            if (m12712rN == null) {
                list2 = null;
            } else {
                ArrayList arrayList = new ArrayList(list.size());
                for (VTCommand vTCommand : list) {
                    if (vTCommand != null) {
                        arrayList.add(m12718d(vTCommand));
                    }
                }
                list2 = m12712rN.m12808R(arrayList);
                try {
                    this.aax.set(0);
                    m12719ch(1);
                } catch (Exception e) {
                    list3 = list2;
                    e = e;
                    m12716d(e);
                    list2 = list3;
                    if (list2 != null) {
                    }
                }
            }
        } catch (Exception e2) {
            e = e2;
        }
        if (list2 != null) {
            return new ArrayList(list.size());
        }
        return list2;
    }

    /* renamed from: d */
    protected VTCommand m12718d(VTCommand vTCommand) {
        if (!m12715hK()) {
            return vTCommand;
        }
        return new VTCommand(vTCommand.mCmdFlag, abk.m12809ev(vTCommand.mCmdValue), vTCommand.mTimeout);
    }

    /* renamed from: U */
    protected List<String> m12723U(List<String> list) {
        return m12715hK() ? abk.m12817Q(list) : list;
    }

    /* renamed from: d */
    private void m12716d(Exception exc) {
        if (exc != null) {
            if ((exc instanceof IOException) || (exc instanceof InterruptedException)) {
                m12719ch(0);
                if (this.aax.incrementAndGet() >= 3) {
                    closeShell();
                    this.aax.set(0);
                }
            }
        }
    }

    /* renamed from: rQ */
    private void m12709rQ() {
        if (C3954zj.m1304pt() && Looper.myLooper() == Looper.getMainLooper()) {
            new RuntimeException("Root Shell Run In Main Thread").fillInStackTrace();
            C3954zj.m1308c("Root Shell Run In Main Thread");
        }
    }

    /* renamed from: ch */
    private void m12719ch(int i) {
        if (i == 1) {
            synchronized (this.aaD) {
                int i2 = this.aaC + 1;
                this.aaC = i2;
                if (i2 >= 50) {
                    this.aaC = 0;
                    this.aay.mo1733w(ActionStatsID.EMID_KingCom_Root_Shell_Run_Success, 50);
                }
            }
        } else if (i == 0) {
            this.aay.mo1746bi(ActionStatsID.EMID_KingCom_Root_Shell_Run_Throw_Exception);
        }
    }
}
