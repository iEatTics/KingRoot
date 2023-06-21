package com.kingroot.kinguser;

import com.kingroot.kinguser.util.protect.DeviceStat;
import java.io.File;
/* loaded from: classes.dex */
public class bhm {
    private static final Object arM = new Object();

    /* renamed from: a */
    public static void m6986a(String str, DeviceStat deviceStat) {
        synchronized (arM) {
            C3604sq.m2250a(deviceStat, bhl.m6987lF(str));
        }
    }

    /* renamed from: lG */
    public static DeviceStat m6985lG(String str) {
        Object obj;
        File m6987lF = bhl.m6987lF(str);
        if (m6987lF.exists()) {
            synchronized (arM) {
                obj = C3604sq.m2244u(m6987lF);
            }
        } else {
            obj = null;
        }
        if (obj == null || !(obj instanceof DeviceStat)) {
            return null;
        }
        return (DeviceStat) obj;
    }

    /* renamed from: lH */
    public static int m6984lH(String str) {
        int i = 0;
        DeviceStat m6985lG = m6985lG(str);
        DeviceStat acx = DeviceStat.acx();
        if (m6985lG == null) {
            m6986a(str, acx);
        } else if (m6985lG.acB() < 0) {
            m6986a(str, acx);
        } else {
            i = DeviceStat.m1987a(m6985lG, acx, null);
            if (i == 3 || i == 2) {
                m6986a(str, acx);
            }
        }
        return i;
    }
}
