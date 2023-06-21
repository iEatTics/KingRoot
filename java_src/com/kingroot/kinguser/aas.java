package com.kingroot.kinguser;

import android.support.annotation.WorkerThread;
/* loaded from: classes.dex */
public class aas {

    /* renamed from: XO */
    private static Boolean f1253XO = null;

    /* renamed from: XP */
    private static final Object f1254XP = new Object();

    /* renamed from: XQ */
    public static final String f1255XQ = m12942pS();

    /* renamed from: XR */
    public static final String f1256XR = m12941pT();

    /* renamed from: XS */
    public static final String f1257XS = m12940pU();

    /* renamed from: XT */
    public static final String f1258XT = m12939pV();

    /* renamed from: XU */
    public static final String f1259XU = m12938pW();

    /* renamed from: XV */
    public static final String f1260XV = AbstractC3976zt.get("c7");

    /* renamed from: XW */
    public static final String f1261XW = AbstractC3976zt.get("c8");

    /* renamed from: XX */
    public static final String f1262XX = AbstractC3976zt.get("c4");

    /* renamed from: XY */
    public static final String f1263XY = AbstractC3976zt.get("c6");

    /* renamed from: XZ */
    public static final String f1264XZ = aba.m12855qF() + " bkc %1$d";

    /* renamed from: pR */
    private static boolean m12943pR() {
        boolean booleanValue;
        synchronized (f1254XP) {
            if (f1253XO == null) {
                f1253XO = Boolean.valueOf(abi.m12831em(aba.m12855qF() + " mount").success());
            }
            booleanValue = f1253XO.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: pS */
    private static String m12942pS() {
        return m12943pR() ? aba.m12855qF() + " mount" : AbstractC3976zt.get("st2");
    }

    @WorkerThread
    /* renamed from: pT */
    private static String m12941pT() {
        if (!aaw.m12890dV("/system")) {
            return "echo";
        }
        if (m12943pR()) {
            return aba.m12855qF() + " mount -o remount,rw /system";
        }
        if (abd.m12839qb() >= 18) {
            return AbstractC3976zt.get("c15");
        }
        return AbstractC3976zt.get("c1");
    }

    /* renamed from: pU */
    private static String m12940pU() {
        return "echo";
    }

    /* renamed from: pV */
    private static String m12939pV() {
        if (m12943pR()) {
            return aba.m12855qF() + " mount -o remount,rw /";
        }
        if (abd.m12839qb() >= 18) {
            return "mount -o remount -w /";
        }
        return AbstractC3976zt.get("c16");
    }

    /* renamed from: pW */
    private static String m12938pW() {
        return "echo";
    }
}
