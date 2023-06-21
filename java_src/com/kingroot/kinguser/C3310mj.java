package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.mj */
/* loaded from: classes.dex */
public final class C3310mj {

    /* renamed from: vO */
    public static long f3127vO;

    static {
        f3127vO = 100L;
        try {
            Class<?> cls = Class.forName(C3304mf.m3091ev() >= 21 ? "android.system.OsConstants" : "libcore.io.OsConstants");
            if (cls != null) {
                int i = cls.getField("_SC_CLK_TCK").getInt(null);
                Object obj = Class.forName("com.kingroot.kinguser.ccf").getField("os").get(null);
                f3127vO = ((Long) obj.getClass().getMethod("sysconf", Integer.TYPE).invoke(obj, Integer.valueOf(i))).longValue();
            }
            if (f3127vO != 100) {
            }
        } catch (Exception e) {
            f3127vO = 100L;
        }
    }
}
