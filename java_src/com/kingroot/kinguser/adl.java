package com.kingroot.kinguser;

import com.kingroot.kinguser.util.protect.DeviceStat;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public class adl {
    private static boolean isInit = false;

    public static void init() {
        if (!isInit) {
            m12534so();
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.adl.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    adl.m12536bX();
                }
            }));
        }
    }

    /* renamed from: so */
    private static void m12534so() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bX */
    public static void m12536bX() {
        m12533sp();
    }

    /* renamed from: sp */
    private static void m12533sp() {
        try {
            List<String> adx = bja.adx();
            if (abc.m12845qK().isRootPermition(true)) {
                if (aeu.isWodAvailible()) {
                    aeu.m12157Y(adx);
                } else if (m12532sq()) {
                    C3627tf.m2188a(0, aes.class, "android.intent.action.SCREEN_OFF", "android.intent.action.SCREEN_ON", "com.kingroot.master.action.SCHEDUAL_EVENT");
                    bja.m6804bW(adx);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: sq */
    private static boolean m12532sq() {
        DeviceStat m12531sr = m12531sr();
        if (m12531sr != null && m12531sr.acB() < 0) {
            m12537a(DeviceStat.acx());
            return false;
        }
        DeviceStat acx = DeviceStat.acx();
        int m1987a = DeviceStat.m1987a(m12531sr, acx, null);
        m12537a(acx);
        return m1987a == 2;
    }

    /* renamed from: sr */
    private static DeviceStat m12531sr() {
        File m12530ss = m12530ss();
        Object m2244u = m12530ss.exists() ? C3604sq.m2244u(m12530ss) : null;
        if (m2244u == null || !(m2244u instanceof DeviceStat)) {
            return null;
        }
        return (DeviceStat) m2244u;
    }

    /* renamed from: ss */
    private static File m12530ss() {
        return new File(KUApplication.m13453ge().getFilesDir() + "/autostat.dat");
    }

    /* renamed from: a */
    private static void m12537a(DeviceStat deviceStat) {
        C3604sq.m2250a(deviceStat, m12530ss());
    }
}
