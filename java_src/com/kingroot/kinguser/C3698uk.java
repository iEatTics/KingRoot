package com.kingroot.kinguser;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentResolver;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.RunnableC3845wo;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.uk */
/* loaded from: classes.dex */
public final class C3698uk {

    /* renamed from: Iu */
    private static String f3624Iu = "";

    /* renamed from: Iv */
    private static String f3625Iv = "";

    /* renamed from: Iw */
    private static final long f3626Iw;

    /* renamed from: Ix */
    private static long f3627Ix;

    /* renamed from: Iy */
    private static Runnable f3628Iy;

    /* renamed from: Iz */
    private static RunnableC3845wo f3629Iz;

    static {
        f3626Iw = KApplication.m13437ih() ? 60L : 25200L;
        f3627Ix = f3626Iw;
        f3629Iz = new RunnableC3845wo() { // from class: com.kingroot.kinguser.uk.1
            @Override // com.kingroot.kinguser.RunnableC3845wo
            /* renamed from: a */
            public void mo1543a(RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
                if (interfaceC3847a.mo1527nF().size() == 1) {
                    String str = (String) interfaceC3847a.mo1527nF().get(0);
                    try {
                        AccountManager accountManager = AccountManager.get(KApplication.m13453ge());
                        if (accountManager.getAccountsByType(C3698uk.f3624Iu).length <= 0) {
                            Account account = new Account(str, C3698uk.f3624Iu);
                            if (accountManager.addAccountExplicitly(account, null, null)) {
                                ContentResolver.setIsSyncable(account, C3698uk.f3625Iv, 1);
                                ContentResolver.setSyncAutomatically(account, C3698uk.f3625Iv, true);
                            }
                            ContentResolver.addPeriodicSync(account, C3698uk.f3625Iv, new Bundle(), C3698uk.f3627Ix);
                        }
                    } catch (Exception e) {
                    }
                }
            }
        };
    }

    /* renamed from: a */
    public static void m2031a(String str, String str2, String str3, Runnable runnable) {
        if (!TextUtils.isEmpty(str)) {
            f3628Iy = (Runnable) C3948zd.m1327k(runnable);
            f3625Iv = str2;
            f3624Iu = str3;
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            f3629Iz.m1545I(arrayList);
        }
    }

    @Nullable
    /* renamed from: kB */
    public static Runnable m2030kB() {
        return f3628Iy;
    }
}
