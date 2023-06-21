package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import cloudsdk.ext.p008kr.RootExtInfo;
import cloudsdk.ext.p008kr.RootInfo;
import cloudsdk.ext.p008kr.RootSdk;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.ain;
import com.kingroot.kinguser.aiv;
import com.kingroot.kinguser.bdl;
import com.kingroot.kinguser.common.check.ISuCheckListener;
import java.io.File;
/* loaded from: classes.dex */
public class aix {
    public static final Object asH = new Object();
    public static boolean asI = false;
    private static final bed asJ = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aix.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (!aix.asI) {
                if (RootSdk.getInstance().loadRootEngine()) {
                    aix.asI = true;
                    ady.m12308tK().mo1746bi(100195);
                } else {
                    ady.m12308tK().mo1746bi(100196);
                }
            }
            if (aix.asI) {
                RootInfo checkCanRoot = RootSdk.getInstance().checkCanRoot();
                bbs.m7785WD().m7782c(checkCanRoot);
                aix.m11520a(checkCanRoot);
            }
            synchronized (aix.asH) {
                aix.asH.notifyAll();
            }
        }
    });

    @Nullable
    /* renamed from: yF */
    private static String m11511yF() {
        String[] split = System.getenv("PATH").split(":");
        int length = split.length;
        for (int i = 0; i < length; i++) {
            File file = new File(split[i] + "/su");
            if (file.exists()) {
                return file.getAbsolutePath();
            }
        }
        return null;
    }

    /* renamed from: gl */
    private static boolean m11513gl(String str) {
        if (!bdl.m7540kR(str)) {
            return abj.m12822en(str);
        }
        bdl.C2110a m7539kS = bdl.m7539kS(str);
        if (m7539kS == null) {
            return false;
        }
        return "kinguser".equals(m7539kS.category);
    }

    /* renamed from: aP */
    public static int m11519aP(boolean z) {
        int i = 0;
        try {
            if (!aks.m11143BP().m11142BQ()) {
                i = 16;
            }
            String m11511yF = m11511yF();
            if (m11511yF == null) {
                i |= 1;
            } else if (z && !m11513gl(m11511yF)) {
                i |= 4;
            }
            boolean isRootPermition = abc.m12845qK().isRootPermition(z);
            if (z && !isRootPermition) {
                isRootPermition = abc.m12845qK().isRootPermition(z);
            }
            if (!isRootPermition) {
                i |= 2;
            } else {
                if (aaw.m12888qv()) {
                    i |= 64;
                }
                if (!aio.m11606d(abc.m12845qK())) {
                    i |= 32;
                }
            }
        } catch (Throwable th) {
        }
        if (i == 0) {
            aks.m11143BP().m10874bI(true);
        }
        bbv.m7771WK().m7759hV(i);
        return i;
    }

    /* renamed from: q */
    public static int m11512q(int i, boolean z) {
        int i2 = 6;
        if (C3941yx.m1356B(2, i)) {
            if (z) {
                try {
                    m11509yH();
                    i2 = m11520a(bbs.m7785WD().m7784WE());
                } catch (Exception e) {
                    bbv.m7771WK().m7761hT(6);
                }
            }
            return i2;
        }
        i2 = m11516dG(i);
        bbv.m7771WK().m7761hT(i2);
        return i2;
    }

    /* renamed from: dG */
    public static int m11516dG(int i) {
        return (C3941yx.m1356B(1, i) || C3941yx.m1356B(4, i)) ? C3941yx.m1356B(32, i) ? 4 : 3 : C3941yx.m1356B(64, i) ? 2 : 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static int m11520a(RootInfo rootInfo) {
        int i = 6;
        if (rootInfo == null) {
            bbv.m7771WK().m7761hT(6);
        } else {
            RootExtInfo mobileRootInfo = rootInfo.getMobileRootInfo();
            RootExtInfo pcRootInfo = rootInfo.getPcRootInfo();
            boolean z = false;
            if (mobileRootInfo == null) {
                z = true;
                i = 999;
            } else if (mobileRootInfo.canRoot != 1) {
                z = true;
                i = 999;
            } else if (bbs.m7783b(mobileRootInfo)) {
                i = 5;
            }
            if (z) {
                if (bbs.m7783b(pcRootInfo) && pcRootInfo.canRoot == 1) {
                    i = 7;
                } else {
                    akj.m11270aT(KApplication.m13453ge()).m11272AN();
                    if (akj.m11270aT(KApplication.m13453ge()).m11277AI()) {
                        bbk.m7817Wo().m7812bk(KApplication.m13453ge());
                        i = 8;
                    } else {
                        i = 9;
                    }
                }
            }
            bbv.m7771WK().m7761hT(i);
        }
        return i;
    }

    /* renamed from: dH */
    public static int m11515dH(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
                bbv.m7771WK().m7760hU(10);
                return 10;
            case 3:
                bbv.m7771WK().m7760hU(12);
                return 12;
            default:
                bbv.m7771WK().m7760hU(11);
                return 11;
        }
    }

    /* renamed from: aQ */
    public static int m11518aQ(boolean z) {
        int m11519aP = m11519aP(z);
        if (aks.m11143BP().m11080DA() && !C3941yx.m1356B(m11519aP, 2)) {
            if ((C3941yx.m1356B(m11519aP, 4) || C3941yx.m1356B(m11519aP, 1)) && m11510yG()) {
                new ajq().m11434g(false, false);
                if (ajb.m11487yT().checkSync(false, true, new ISuCheckListener.Stub() { // from class: com.kingroot.kinguser.common.RootPowerInspectUtil$1
                    @Override // com.kingroot.kinguser.common.check.ISuCheckListener
                    public void onSuCheckEvent(int i) {
                        if (i == 0) {
                            aiv.m11525yw().m11526yD();
                            ain.m11609xW().m11608xX();
                        }
                    }
                }, null)) {
                    return m11519aP(z);
                }
                return m11519aP;
            }
            return m11519aP;
        }
        return m11519aP;
    }

    /* renamed from: yG */
    public static boolean m11510yG() {
        return (!abf.m12838qP() && new File(abu.f1378ZV).exists()) || new File(abu.f1379ZW).exists();
    }

    /* renamed from: dI */
    public static boolean m11514dI(int i) {
        return (C3941yx.m1356B(i, 2) || C3941yx.m1356B(i, 1) || C3941yx.m1356B(i, 4)) ? false : true;
    }

    /* renamed from: yH */
    public static void m11509yH() {
        beg.m7461Zj().m7450c(asJ);
        synchronized (asH) {
            asH.wait(10000L);
        }
    }
}
