package com.kingroot.kinguser;

import com.kingroot.kinguser.util.protect.DeviceStat;
import com.kingroot.master.app.KUApplication;
import java.io.File;
/* loaded from: classes.dex */
public class aim {
    private static final String arL = KUApplication.m13453ge().getFilesDir() + File.separator + "kds";
    private static final Object arM = new Object();

    /* renamed from: z */
    public static int m11613z(File file) {
        DeviceStat acx = DeviceStat.acx();
        DeviceStat m11616A = m11616A(file);
        if (m11616A != null && m11616A.acB() < 0) {
            m11615a(acx, file);
            return 0;
        }
        int m1987a = DeviceStat.m1987a(m11616A, acx, null);
        m11615a(acx, file);
        return m1987a;
    }

    /* renamed from: xV */
    public static boolean m11614xV() {
        return m11613z(new File(arL)) == 2;
    }

    /* renamed from: A */
    private static DeviceStat m11616A(File file) {
        DeviceStat deviceStat;
        if (file == null || !file.isFile()) {
            return null;
        }
        synchronized (arM) {
            Object m2244u = C3604sq.m2244u(file);
            deviceStat = (m2244u == null || !(m2244u instanceof DeviceStat)) ? null : (DeviceStat) m2244u;
        }
        return deviceStat;
    }

    /* renamed from: a */
    public static void m11615a(DeviceStat deviceStat, File file) {
        if (deviceStat != null) {
            synchronized (arM) {
                C3604sq.m2250a(deviceStat, file);
            }
        }
    }
}
