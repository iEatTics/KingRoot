package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.framework.service.KServiceManager;
import java.util.HashMap;
/* renamed from: com.kingroot.kinguser.ts */
/* loaded from: classes.dex */
public class C3665ts implements InterfaceC3666tt {

    /* renamed from: HD */
    private KServiceManager f3578HD;
    private HashMap<String, AbstractC3642to> mServiceMap = new HashMap<>();

    public C3665ts(Context context) {
        this.f3578HD = new KServiceManager(context, this.mServiceMap);
    }

    @Override // com.kingroot.kinguser.InterfaceC3666tt
    public void onStart(Intent intent, int i) {
        try {
            InterfaceC3519rh m13449hU = KApplication.m13449hU();
            if (m13449hU instanceof AbstractC3518rg) {
                ((AbstractC3518rg) m13449hU).mo2480a(intent, i);
            }
        } catch (Throwable th) {
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3666tt
    public IBinder onBind(Intent intent) {
        return this.f3578HD;
    }
}
