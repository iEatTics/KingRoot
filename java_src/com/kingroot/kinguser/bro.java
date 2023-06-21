package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bro {
    /* renamed from: ap */
    public static void m5673ap(int i, int i2) {
        bth.m5542d("updateRequestTime() positionId=" + i);
        brs.ahJ().ahM().m5578j(i, System.currentTimeMillis() + i2);
    }

    /* renamed from: kf */
    public static boolean m5672kf(int i) {
        long m5577kh = brs.ahJ().ahM().m5577kh(i);
        return m5577kh < System.currentTimeMillis() || m5577kh - System.currentTimeMillis() > 3600000;
    }

    /* renamed from: I */
    public static void m5674I(int i, boolean z) {
        brs.ahJ().ahM().m5579J(i, z);
    }

    /* renamed from: kg */
    public static boolean m5671kg(int i) {
        boolean m5576ki = brs.ahJ().ahM().m5576ki(i);
        bth.m5542d("getPreRequestResult() positionId=" + i + " state=" + m5576ki);
        return m5576ki;
    }
}
