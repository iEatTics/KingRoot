package com.kingroot.kinguser;

import android.content.Context;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class bnm {
    private static Class<?> bzd = null;
    private static Class<?> bEf = null;
    private static Method bEg = null;
    private static Method bEh = null;
    private static Method bEi = null;
    private static Method bEj = null;

    /* renamed from: g */
    private static boolean f1759g = false;

    /* renamed from: a */
    public static boolean m6223a(Context context, bno bnoVar) {
        return bqp.m5779L(context, bnoVar.agm()).m5771b("Common_ta_enable");
    }

    /* renamed from: b */
    public static void m6221b(Context context, bno bnoVar) {
        try {
            if (m6223a(context, bnoVar)) {
                bEj.invoke(bzd, true);
            } else {
                bEj.invoke(bzd, false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public static void m6220c(Context context, bno bnoVar) {
        String str = "Aqc" + bnoVar.agm();
        try {
            bzd = Class.forName("com.tencent.stat.StatConfig");
            bEf = Class.forName("com.tencent.stat.StatService");
            bEg = bEf.getMethod("reportQQ", Context.class, String.class);
            bEh = bEf.getMethod("trackCustomEvent", Context.class, String.class, String[].class);
            bEi = bEf.getMethod("commitEvents", Context.class, Integer.TYPE);
            bEj = bzd.getMethod("setEnableStatService", Boolean.TYPE);
            m6221b(context, bnoVar);
            bzd.getMethod("setAutoExceptionCaught", Boolean.TYPE).invoke(bzd, false);
            bzd.getMethod("setEnableSmartReporting", Boolean.TYPE).invoke(bzd, true);
            bzd.getMethod("setSendPeriodMinutes", Integer.TYPE).invoke(bzd, 1440);
            Class<?> cls = Class.forName("com.tencent.stat.StatReportStrategy");
            bzd.getMethod("setStatSendStrategy", cls).invoke(bzd, cls.getField("PERIOD").get(null));
            bEf.getMethod("startStatService", Context.class, String.class, String.class).invoke(bEf, context, str, Class.forName("com.tencent.stat.common.StatConstants").getField("VERSION").get(null));
            f1759g = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    public static void m6219d(Context context, bno bnoVar) {
        if (f1759g) {
            m6221b(context, bnoVar);
            if (bnoVar.ago() != null) {
                try {
                    bEg.invoke(bEf, context, bnoVar.ago());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    public static void m6222a(Context context, bno bnoVar, String str, String... strArr) {
        if (f1759g) {
            m6221b(context, bnoVar);
            try {
                bEh.invoke(bEf, context, str, strArr);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
