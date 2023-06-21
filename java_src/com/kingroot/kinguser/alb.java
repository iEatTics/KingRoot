package com.kingroot.kinguser;

import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.agq;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.deletereport.interfaces.IDeleteReportService;
import com.kingroot.kinguser.util.protect.RebootStat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class alb {
    private static alb avO = null;
    private static bed avP = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.alb.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            boolean m10645fc;
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            int i = -1;
            if (mo7445nF.size() > 0 && (mo7445nF.get(0) instanceof Integer)) {
                i = ((Integer) mo7445nF.get(0)).intValue();
            }
            if (abc.m12845qK().isRootPermition(true) && akr.m11154BL().m11152BN()) {
                if (i == 0) {
                    try {
                        Thread.sleep(30000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                alb m10654GK = alb.m10654GK();
                synchronized (bho.bqT) {
                    m10645fc = m10654GK.m10645fc(i);
                }
                if (m10645fc) {
                    avw m8727Sm = avw.m8727Sm();
                    m10654GK.syncProtectPackages(m8727Sm.m8726Sn());
                    m10654GK.syncMonitorPackages(m8727Sm.m8725So());
                    m10654GK.m10650af(m8727Sm.m8724Sp());
                }
            }
        }
    });
    private bhn mInjectStateCallback = new bhn() { // from class: com.kingroot.kinguser.alb.2
        @Override // com.kingroot.kinguser.bhn
        /* renamed from: c */
        public void mo6981c(RebootStat rebootStat) {
            alb.m10649c(rebootStat, 0);
        }

        @Override // com.kingroot.kinguser.bhn
        /* renamed from: a */
        public void mo6983a(RebootStat rebootStat, int i) {
            int i2 = 6;
            if (i == 3) {
                if (rebootStat.currentStep == 1 || rebootStat.currentStep == 8) {
                    i2 = 3;
                } else if ((rebootStat.currentStep < 3 || rebootStat.currentStep >= 6) && rebootStat.currentStep != 7) {
                    i2 = -1;
                }
                if (i2 != -1) {
                    aks.m11143BP().m10826bo(true);
                    alb.m10649c(rebootStat, i2);
                }
            }
        }

        @Override // com.kingroot.kinguser.bhn
        /* renamed from: b */
        public void mo6982b(RebootStat rebootStat) {
            if (alb.this.m10652GM() != null) {
                alb.m10649c(rebootStat, 0);
            }
        }

        @Override // com.kingroot.kinguser.bhn
        /* renamed from: d */
        public void mo6980d(RebootStat rebootStat) {
            switch (rebootStat.currentStep) {
                case 1:
                    alb.m10649c(rebootStat, 2);
                    return;
                case 2:
                case 4:
                case 5:
                default:
                    return;
                case 3:
                    alb.m10649c(rebootStat, 4);
                    return;
                case 6:
                    alb.m10649c(rebootStat, 7);
                    return;
            }
        }
    };

    /* renamed from: GK */
    public static synchronized alb m10654GK() {
        alb albVar;
        synchronized (alb.class) {
            if (avO == null) {
                avO = new alb();
            }
            albVar = avO;
        }
        return albVar;
    }

    private alb() {
    }

    /* renamed from: GL */
    private void m10653GL() {
        IBinder m12963dL = aan.m12963dL("ku.pService.dr");
        if (m12963dL != null) {
            try {
                IDeleteReportService.Stub.asInterface(m12963dL, "ku.pService.dr").setServiceEnable(false);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: GM */
    public agq m10652GM() {
        IBinder m12963dL = aan.m12963dL(ago.m11926fy("kinguser_9"));
        if (m12963dL == null) {
            return null;
        }
        return agq.AbstractC0909b.m11918i(m12963dL);
    }

    public void setServiceEnable(boolean z) {
        try {
            agq m10652GM = m10652GM();
            if (m10652GM != null) {
                m10652GM.setServiceEnable(z);
            }
        } catch (Throwable th) {
        }
    }

    public boolean syncProtectPackages(List<String> list) {
        try {
            agq m10652GM = m10652GM();
            if (m10652GM != null) {
                return m10652GM.syncProtectPackages(list);
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public boolean syncMonitorPackages(List<String> list) {
        try {
            agq m10652GM = m10652GM();
            if (m10652GM != null) {
                return m10652GM.syncMonitorPackages(list);
            }
        } catch (Throwable th) {
        }
        return false;
    }

    /* renamed from: af */
    public boolean m10650af(List<String> list) {
        try {
            agq m10652GM = m10652GM();
            if (m10652GM != null) {
                return m10652GM.mo11920af(list);
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public boolean removeProtectedPackage(String str) {
        try {
            agq m10652GM = m10652GM();
            if (m10652GM != null) {
                return m10652GM.removeProtectedPackage(str);
            }
        } catch (Throwable th) {
        }
        return false;
    }

    /* renamed from: fb */
    public static void m10646fb(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        beg.m7461Zj().m7456a(avP, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m10649c(RebootStat rebootStat, int i) {
        ady.m12308tK().m12333a(i, rebootStat.m1978iO(1), new String[]{rebootStat.m1978iO(4), rebootStat.m1978iO(5), rebootStat.m1978iO(7)}, "", rebootStat.m1977iP(999), rebootStat.m1977iP(998), rebootStat.m1977iP(997));
    }

    /* renamed from: fc */
    public boolean m10645fc(int i) {
        abc.m12845qK().m12846el(aba.m12855qF() + " dmd5");
        m10653GL();
        if (!agr.m11914vW().m11913vX()) {
            agr.m11914vW().m11917F(0, m10644wg());
            setServiceEnable(true);
            if (agr.m11914vW().m11916fA("package")) {
                return true;
            }
            return agr.m11914vW().m11915fz("package");
        }
        setServiceEnable(false);
        if (i == 2 || !aks.m11143BP().m11083Cx()) {
            RebootStat m6979S = bho.m6979S("system_server", 0);
            bho.m6977a(m6979S, this.mInjectStateCallback);
            if (i != 2 && (m6979S.failPeekCount >= 2 || m6979S.failCount >= 12)) {
                aks.m11143BP().m10828bn(true);
                return false;
            }
            agq agqVar = null;
            bho.m6978a(m6979S, 997, "" + i);
            bho.m6976b(m6979S, 8, "0");
            int m10647e = m10647e(m6979S);
            bho.m6976b(m6979S, 1, "" + m10647e);
            if (m10647e != 0 && m10647e != 1) {
                try {
                    Thread.sleep(10000L);
                } catch (InterruptedException e) {
                }
                bho.m6974c(m6979S, this.mInjectStateCallback);
                return false;
            }
            try {
                Thread.sleep(10000L);
            } catch (InterruptedException e2) {
            }
            bho.m6976b(m6979S, 2, "0");
            try {
                agqVar = m10652GM();
                int i2 = 0;
                while (agqVar == null) {
                    int i3 = i2 + 1;
                    if (i2 >= 5) {
                        break;
                    }
                    Thread.sleep(1000L);
                    agqVar = m10652GM();
                    i2 = i3;
                }
            } catch (InterruptedException e3) {
            }
            bho.m6976b(m6979S, 3, "0");
            if (agqVar == null) {
                bho.m6974c(m6979S, this.mInjectStateCallback);
                return false;
            }
            bho.m6973d(m6979S, this.mInjectStateCallback);
            if (i == 2) {
                bho.m6972f(m6979S);
                aks.m11143BP().m10828bn(false);
                aks.m11143BP().m10826bo(false);
            }
            return true;
        }
        return false;
    }

    /* renamed from: e */
    private static int m10647e(RebootStat rebootStat) {
        InterfaceC3159ho interfaceC3159ho;
        try {
            interfaceC3159ho = C3702un.m2024a(new C3701um("system_server", "hk", "m.M", "m", m10644wg(), agk.amQ, "com.kingroot.hook", "kinguser_9", agk.amR));
        } catch (Exception e) {
            interfaceC3159ho = null;
        }
        if (interfaceC3159ho != null) {
            bho.m6978a(rebootStat, 999, interfaceC3159ho.message());
            return interfaceC3159ho.mo3270be();
        }
        return -998;
    }

    /* renamed from: wg */
    private static String m10644wg() {
        agm m11931vR = agm.m11931vR();
        m11931vR.m11936ft(agk.PACKAGE_NAME);
        m11931vR.m11940J("kinguser_9");
        m11931vR.m11935fu("6B696E676D61737465725F776F64");
        m11931vR.m11934fv(KApplication.m13443ia());
        m11931vR.setChannel(KApplication.m13442ib());
        m11931vR.m11939aE(true);
        m11931vR.m11938dd(m11931vR.m11930vS() == 0 ? 1800000 : m11931vR.m11930vS());
        m11931vR.m11932fx("191240FCB048127DB9110D1B30537FDE");
        return m11931vR.m11929vT();
    }
}
