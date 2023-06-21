package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.jz */
/* loaded from: classes.dex */
final class C3234jz {

    /* renamed from: tw */
    private static boolean f2920tw = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public static synchronized boolean m3329F() {
        boolean m3446cp;
        synchronized (C3234jz.class) {
            m3446cp = f2920tw ? false : C3203iy.m3446cp();
        }
        return m3446cp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cN */
    public static synchronized void m3328cN() {
        synchronized (C3234jz.class) {
            f2920tw = true;
        }
    }
}
