package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bli {
    public static void init() {
        afl();
        afm();
    }

    /* renamed from: b */
    private static void m6500b(Class<? extends AbstractC3634th> cls, String... strArr) {
        C3627tf.m2188a(1, cls, strArr);
    }

    /* renamed from: c */
    private static void m6499c(Class<? extends AbstractC3634th> cls, String... strArr) {
        C3627tf.m2188a(0, cls, strArr);
    }

    private static void afl() {
        m6500b(blk.class, "android.intent.action.PACKAGE_CHANGED");
        m6500b(blj.class, "android.intent.action.PACKAGE_ADDED");
        m6500b(bbh.class, "com.kingroot.common.ACTION_TOP_ACTIVITY_CHANGED", "com.kingroot.common.ACTION_NEW_APP_STARTED", "com.kingroot.common.ACTION_TOP_APP_CHANGED", "com.kingroot.common.ACTION_SWITCH_IN_DESKTOP", "com.kingroot.common.ACTION_SWITCH_OUT_DESKTOP");
        m6500b(baz.class, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_REMOVED");
        m6500b(C3828we.class, "com.kingroot.common.share.ACTION_SHARE");
    }

    private static void afm() {
        m6499c(aes.class, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_CHANGED");
        m6499c(afj.class, "android.intent.action.PACKAGE_REMOVED");
        m6499c(C3671tw.class, "com.kingroot.master.action.NOTIFY_STATISTIC");
        m6499c(bay.class, "android.net.conn.CONNECTIVITY_CHANGE");
        m6499c(bax.class, "android.intent.action.BOOT_COMPLETED", "android.hardware.usb.action.USB_STATE", "android.intent.action.SIM_STATE_CHANGED");
        m6499c(bba.class, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_REPLACED", "android.intent.action.PACKAGE_REMOVED");
        m6499c(att.class, "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_REPLACED", "android.intent.action.PACKAGE_REMOVED");
        m6499c(bbe.class, bbe.beB, bbe.beC, bbe.beD);
        m6499c(bbc.class, "com.kingroot.kinguser.ACTION_MAIN_START_CHECK");
        m6499c(bbb.class, "com.kingroot.master.action.NAIN_EXIT_NOTIFY");
        m6499c(bbg.class, "com.kingroot.common.ACTION_TOP_ACTIVITY_CHANGED", "com.kingroot.common.ACTION_NEW_APP_STARTED", "com.kingroot.common.ACTION_SWITCH_IN_DESKTOP", "com.kingroot.common.ACTION_SWITCH_OUT_DESKTOP", "com.kingroot.common.ACTION_TOP_APP_CHANGED", "com.kingroot.common.ACTION_NOTIFY_IN_SELF_APP_MAIN", "com.kingroot.common.ACTION_NOTIFY_OUT_SELF_APP_BY_MAIN");
    }
}
