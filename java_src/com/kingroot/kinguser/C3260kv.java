package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.kv */
/* loaded from: classes.dex */
public class C3260kv {
    public static boolean isEnabled() {
        int i = C3249kk.m3277cY().getInt("uranus_enabled");
        return i == 0 || i != 1;
    }

    /* renamed from: j */
    public static void m3238j(boolean z) {
        C3249kk.m3277cY().mo3167a("uranus_enabled", z ? 0 : 1);
    }
}
