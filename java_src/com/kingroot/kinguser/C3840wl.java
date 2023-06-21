package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.wl */
/* loaded from: classes.dex */
public class C3840wl {
    /* renamed from: c */
    public static void m1552c(Runnable runnable) {
        if (runnable != null) {
            HandlerC3839wk.m1555nr().obtainMessage(2, runnable).sendToTarget();
        }
    }

    /* renamed from: c */
    public static void m1551c(Runnable runnable, long j) {
        if (runnable != null) {
            HandlerC3839wk m1555nr = HandlerC3839wk.m1555nr();
            m1555nr.sendMessageDelayed(m1555nr.obtainMessage(2, runnable), j);
        }
    }

    /* renamed from: d */
    public static void m1550d(Runnable runnable) {
        if (runnable != null) {
            HandlerC3839wk.m1555nr().removeMessages(2, runnable);
        }
    }
}
