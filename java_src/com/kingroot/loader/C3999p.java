package com.kingroot.loader;

import android.content.Intent;
import android.os.IBinder;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.multi.IKlConnectionManagerBridge;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
/* renamed from: com.kingroot.loader.p */
/* loaded from: classes.dex */
public class C3999p extends C3657tp {
    private static BinderC4001a bzi = new BinderC4001a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return bzi;
    }

    public static IKlConnectionManagerBridge aeN() {
        return bzi;
    }

    /* renamed from: com.kingroot.loader.p$a */
    /* loaded from: classes.dex */
    static class BinderC4001a extends IKlConnectionManagerBridge.AbstractBinderC3993a {

        /* renamed from: a */
        private final IKlConnectionManager f4125a;

        private BinderC4001a() {
            this.f4125a = (IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class);
        }

        @Override // com.kingroot.loader.multi.IKlConnectionManagerBridge
        public IBinder getService(int i, Intent intent) {
            return this.f4125a.getService(i, intent);
        }
    }
}
