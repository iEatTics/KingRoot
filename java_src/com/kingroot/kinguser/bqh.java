package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bqh {
    /* renamed from: a */
    public static int m5810a(String str) {
        int m5774a = bqp.m5779L(bqo.agA(), str).m5774a("Common_BusinessReportFrequency");
        if (m5774a == 0) {
            return 100;
        }
        return m5774a;
    }

    /* renamed from: a */
    public static int m5811a() {
        int m5774a = bqp.m5779L(bqo.agA(), null).m5774a("Common_HttpRetryCount");
        if (m5774a == 0) {
            return 2;
        }
        return m5774a;
    }
}
