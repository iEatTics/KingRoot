package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class akg extends akd {
    private static volatile akg avk;

    /* renamed from: Ap */
    public static akg m11300Ap() {
        if (avk == null) {
            synchronized (akg.class) {
                if (avk == null) {
                    avk = new akg();
                }
            }
        }
        return avk;
    }

    @Override // com.kingroot.kinguser.akd
    /* renamed from: Aj */
    protected String mo11301Aj() {
        return "silent_install";
    }
}
