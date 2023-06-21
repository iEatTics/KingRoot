package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
/* renamed from: com.kingroot.kinguser.sy */
/* loaded from: classes.dex */
public class C3614sy {

    /* renamed from: GP */
    private static InterfaceC3610su f3538GP;

    /* renamed from: jv */
    public static InterfaceC3610su m2213jv() {
        if (f3538GP == null) {
            synchronized (C3614sy.class) {
                if (f3538GP == null) {
                    if (KApplication.m13450hT() == 2) {
                        f3538GP = new C3618tb(C3636tj.m2169ge());
                    } else {
                        f3538GP = new C3615sz();
                    }
                }
            }
        }
        return f3538GP;
    }

    private C3614sy() {
    }
}
