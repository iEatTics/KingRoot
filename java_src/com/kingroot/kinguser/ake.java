package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class ake extends akd {
    private static volatile ake avf;

    /* renamed from: Al */
    public static ake m11308Al() {
        if (avf == null) {
            synchronized (ake.class) {
                if (avf == null) {
                    avf = new ake();
                }
            }
        }
        return avf;
    }

    @Override // com.kingroot.kinguser.akd
    /* renamed from: Aj */
    protected String mo11301Aj() {
        return "mem_free";
    }
}
