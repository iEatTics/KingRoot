package com.kingroot.common.improve.account;

import android.accounts.Account;
import android.app.Service;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.C3698uk;
import com.kingroot.kinguser.RunnableC3845wo;
/* loaded from: classes.dex */
public class KSyncService extends Service {

    /* renamed from: IA */
    private static final Object f809IA = new Object();

    /* renamed from: IB */
    private static C0510a f810IB = null;

    /* renamed from: It */
    private static RunnableC3845wo f811It = new RunnableC3845wo() { // from class: com.kingroot.common.improve.account.KSyncService.1
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
        synchronized (f809IA) {
            if (f810IB == null) {
                f810IB = new C0510a(getApplicationContext(), true);
            }
        }
        f811It.m1530ny();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        if (intent != null) {
            intent.getAction();
        }
        return f810IB.getSyncAdapterBinder();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    /* renamed from: com.kingroot.common.improve.account.KSyncService$a */
    /* loaded from: classes.dex */
    class C0510a extends AbstractThreadedSyncAdapter {
        C0510a(Context context, boolean z) {
            super(context, z);
        }

        @Override // android.content.AbstractThreadedSyncAdapter
        public void onPerformSync(Account account, Bundle bundle, String str, ContentProviderClient contentProviderClient, SyncResult syncResult) {
        }
    }
}
