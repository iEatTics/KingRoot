package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.sl */
/* loaded from: classes.dex */
public class C3599sl {

    /* renamed from: GF */
    private static Map<String, InterfaceC3598sk> f3525GF = new HashMap();

    /* renamed from: cH */
    public static synchronized InterfaceC3598sk m2259cH(String str) {
        InterfaceC3598sk interfaceC3598sk;
        synchronized (C3599sl.class) {
            interfaceC3598sk = f3525GF.get(str);
            if (interfaceC3598sk == null) {
                interfaceC3598sk = m2258cI(str);
                f3525GF.put(str, interfaceC3598sk);
            }
        }
        return interfaceC3598sk;
    }

    /* renamed from: cI */
    private static InterfaceC3598sk m2258cI(String str) {
        return KApplication.m13450hT() == 2 ? C3603sp.m2251cH(str) : new C3600sm(str);
    }
}
