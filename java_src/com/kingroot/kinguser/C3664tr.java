package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import com.kingroot.common.app.KApplication;
/* renamed from: com.kingroot.kinguser.tr */
/* loaded from: classes.dex */
public class C3664tr implements InterfaceC3666tt {

    /* renamed from: HC */
    private InterfaceC3666tt f3577HC;

    public C3664tr() {
        this.f3577HC = null;
        InterfaceC3519rh m13449hU = KApplication.m13449hU();
        if (m13449hU instanceof AbstractC3518rg) {
            this.f3577HC = ((AbstractC3518rg) m13449hU).mo2477hP();
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3666tt
    public void onStart(Intent intent, int i) {
        if (this.f3577HC != null) {
            try {
                this.f3577HC.onStart(intent, i);
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3666tt
    public IBinder onBind(Intent intent) {
        if (this.f3577HC == null) {
            return null;
        }
        try {
            return this.f3577HC.onBind(intent);
        } catch (Throwable th) {
            return null;
        }
    }
}
