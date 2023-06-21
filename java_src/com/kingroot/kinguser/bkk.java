package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
import com.kingroot.loader.sdk.service.IKlPackageManager;
/* loaded from: classes.dex */
public class bkk {
    /* renamed from: a */
    public static void m6563a(Context context, boolean z, bkc bkcVar) {
        bkq.m6546i("KlMultiSdk init");
        bkd.m6573en(true);
        bkd.m6574em(z);
        bkd.m6576a(context, bkcVar);
        m6564a();
    }

    /* renamed from: a */
    private static void m6564a() {
        if (!bkd.isCoreProcess()) {
            KlServiceManager.registerService(IKlPackageManager.class, new KlServiceManager.AbstractC3986a() { // from class: com.kingroot.kinguser.bkk.1
                @Override // com.kingroot.loader.common.KlServiceManager.AbstractC3986a
                public Object aeB() {
                    return new bkm();
                }
            });
            KlServiceManager.registerService(IKlConnectionManager.class, new KlServiceManager.AbstractC3986a() { // from class: com.kingroot.kinguser.bkk.2
                @Override // com.kingroot.loader.common.KlServiceManager.AbstractC3986a
                public Object aeB() {
                    return new bkl();
                }
            });
        }
    }
}
