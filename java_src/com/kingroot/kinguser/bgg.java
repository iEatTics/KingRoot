package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
import com.kingroot.common.framework.service.KSysService;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bgg {
    private static final String TAG = aiq.asb + "_AliveImprover";

    public static void abA() {
        Runnable runnable = new Runnable() { // from class: com.kingroot.kinguser.bgg.1
            @Override // java.lang.Runnable
            public void run() {
                if (!KSysService.m13393jT()) {
                    KSysService.m13394jS();
                }
            }
        };
        C3698uk.m2031a(C3953zi.m1311pr().getString(R.string.app_name), "com.kingroot.kinguser.account_syn_auth", "com.kingroot.kinguser.account", runnable);
        C3700ul.m2027a(KApplication.m13453ge(), runnable);
        C3700ul.m2025y(1800000L);
    }
}
