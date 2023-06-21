package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class akc extends akd {
    private static volatile akc ave;

    /* renamed from: Ai */
    public static akc m11313Ai() {
        if (ave == null) {
            synchronized (akc.class) {
                if (ave == null) {
                    ave = new akc();
                }
            }
        }
        return ave;
    }

    @Override // com.kingroot.kinguser.akd
    /* renamed from: Aj */
    protected String mo11301Aj() {
        return "packages";
    }
}
