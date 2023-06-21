package com.kingroot.kinguser;

import com.king.uranus.C0383R;
import com.king.uranus.C0412g;
/* renamed from: com.kingroot.kinguser.hy */
/* loaded from: classes.dex */
public class C3170hy {
    /* renamed from: a */
    public static InterfaceC3187il m3591a(C0412g c0412g, String str) {
        return m3590a(c0412g, str, null);
    }

    /* renamed from: a */
    public static InterfaceC3187il m3590a(C0412g c0412g, String str, InterfaceC3175ib interfaceC3175ib) {
        if (c0412g == null) {
            throw new C0383R("input cloudCmd was invalid");
        }
        int i = c0412g.f351at;
        switch (i) {
            case 9:
                return new C3189in();
            case 329:
                return new C3188im(interfaceC3175ib);
            case 350:
                return new C3178id(i, str, c0412g);
            default:
                throw new C0383R("unable to found executer for type " + i);
        }
    }
}
