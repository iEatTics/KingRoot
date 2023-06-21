package com.kingroot.kinguser;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.sp */
/* loaded from: classes.dex */
public class C3603sp {

    /* renamed from: GH */
    private static Map<String, InterfaceC3598sk> f3528GH = new HashMap();

    /* renamed from: cH */
    public static synchronized InterfaceC3598sk m2251cH(String str) {
        InterfaceC3598sk interfaceC3598sk;
        synchronized (C3603sp.class) {
            interfaceC3598sk = f3528GH.get(str);
            if (interfaceC3598sk == null) {
                interfaceC3598sk = new C3602so(str);
                f3528GH.put(str, interfaceC3598sk);
            }
        }
        return interfaceC3598sk;
    }
}
