package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.util.protect.DeviceStat;
import com.kingroot.kinguser.util.protect.RebootStat;
import java.io.File;
/* loaded from: classes.dex */
public class bho {
    private static final Object arM = new Object();
    public static final Object bqT = new Object();

    /* renamed from: S */
    public static RebootStat m6979S(String str, int i) {
        RebootStat m6970lI = m6970lI(str);
        if (m6970lI == null) {
            RebootStat rebootStat = new RebootStat(str, i);
            m6971g(rebootStat);
            return rebootStat;
        }
        return m6970lI;
    }

    /* renamed from: f */
    public static RebootStat m6972f(RebootStat rebootStat) {
        RebootStat rebootStat2 = new RebootStat(rebootStat.key, rebootStat.initStep);
        m6971g(rebootStat2);
        return rebootStat2;
    }

    /* renamed from: a */
    public static void m6977a(RebootStat rebootStat, bhn bhnVar) {
        if (rebootStat != null) {
            if (rebootStat.initStep == rebootStat.currentStep) {
                synchronized (rebootStat) {
                    rebootStat.acD();
                    m6971g(rebootStat);
                }
                return;
            }
            synchronized (rebootStat) {
                m6975b(rebootStat, bhnVar);
                rebootStat.acD();
                m6971g(rebootStat);
            }
        }
    }

    /* renamed from: b */
    private static void m6975b(RebootStat rebootStat, bhn bhnVar) {
        if (rebootStat.deviceStat != null) {
            long acB = rebootStat.deviceStat.acB();
            if (Math.abs(acB) <= 86400000 && acB >= 0) {
                int m1987a = DeviceStat.m1987a(rebootStat.deviceStat, DeviceStat.acx(), null);
                if (m1987a == 3 || m1987a == 2) {
                    rebootStat.failCount++;
                    rebootStat.failPeekCount++;
                    rebootStat.successPeekCount = 0;
                    if (m1987a == 3) {
                        rebootStat.androidRebootCount++;
                        rebootStat.androidRebootPeekCount++;
                    }
                    if (m1987a == 2) {
                        rebootStat.linuxRebootCount++;
                        rebootStat.linuxRebootPeekCount++;
                    }
                    if (bhnVar != null) {
                        bhnVar.mo6983a(rebootStat, m1987a);
                    }
                } else if (bhnVar != null) {
                    bhnVar.mo6982b(rebootStat);
                }
            }
        }
    }

    /* renamed from: c */
    public static void m6974c(RebootStat rebootStat, bhn bhnVar) {
        if (rebootStat != null) {
            synchronized (rebootStat) {
                int i = rebootStat.currentStep;
                DeviceStat deviceStat = rebootStat.deviceStat;
                rebootStat.deviceStat = null;
                rebootStat.currentStep = rebootStat.initStep;
                rebootStat.failCount++;
                rebootStat.failPeekCount++;
                rebootStat.successPeekCount = 0;
                rebootStat.androidRebootPeekCount = 0;
                rebootStat.linuxRebootPeekCount = 0;
                m6971g(rebootStat);
                rebootStat.deviceStat = deviceStat;
                rebootStat.currentStep = i;
                if (bhnVar != null) {
                    bhnVar.mo6980d(rebootStat);
                }
                rebootStat.deviceStat = null;
                rebootStat.currentStep = rebootStat.initStep;
            }
        }
    }

    /* renamed from: a */
    public static void m6978a(RebootStat rebootStat, int i, String str) {
        if (rebootStat != null) {
            synchronized (rebootStat) {
                rebootStat.m1979R(i, str);
                m6971g(rebootStat);
            }
        }
    }

    /* renamed from: d */
    public static void m6973d(RebootStat rebootStat, bhn bhnVar) {
        if (rebootStat != null) {
            synchronized (rebootStat) {
                int i = rebootStat.currentStep;
                DeviceStat deviceStat = rebootStat.deviceStat;
                rebootStat.deviceStat = null;
                rebootStat.currentStep = rebootStat.initStep;
                rebootStat.successCount++;
                rebootStat.successPeekCount++;
                rebootStat.failPeekCount = 0;
                rebootStat.androidRebootPeekCount = 0;
                rebootStat.linuxRebootPeekCount = 0;
                m6971g(rebootStat);
                rebootStat.deviceStat = deviceStat;
                rebootStat.currentStep = i;
                if (bhnVar != null) {
                    bhnVar.mo6981c(rebootStat);
                }
                rebootStat.deviceStat = null;
                rebootStat.currentStep = rebootStat.initStep;
            }
        }
    }

    /* renamed from: b */
    public static void m6976b(RebootStat rebootStat, int i, String str) {
        if (rebootStat != null) {
            synchronized (rebootStat) {
                rebootStat.currentStep = i;
                if (!TextUtils.isEmpty(str)) {
                    rebootStat.m1980Q(i, str);
                }
                m6971g(rebootStat);
            }
        }
    }

    /* renamed from: g */
    private static void m6971g(RebootStat rebootStat) {
        synchronized (arM) {
            C3604sq.m2250a(rebootStat, bhp.m6969lF(rebootStat.key));
        }
    }

    /* renamed from: lI */
    private static RebootStat m6970lI(String str) {
        Object obj;
        File m6969lF = bhp.m6969lF(str);
        if (m6969lF.exists()) {
            synchronized (arM) {
                obj = C3604sq.m2244u(m6969lF);
            }
        } else {
            obj = null;
        }
        if (obj == null || !(obj instanceof RebootStat)) {
            return null;
        }
        return (RebootStat) obj;
    }
}
