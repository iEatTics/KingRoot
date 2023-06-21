package com.kingroot.common.improve.account;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.C3698uk;
import com.kingroot.kinguser.RunnableC3845wo;
/* loaded from: classes.dex */
public class KAccountService extends Service {

    /* renamed from: It */
    private static RunnableC3845wo f808It = new RunnableC3845wo() { // from class: com.kingroot.common.improve.account.KAccountService.1
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            Runnable m2030kB = C3698uk.m2030kB();
            if (m2030kB != null) {
                m2030kB.run();
            }
        }
    };

    @Override // android.app.Service
    public void onCreate() {
        f808It.m1530ny();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }
}
