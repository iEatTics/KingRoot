package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.advance.install.p014ui.QuickPackageInstallerActivity;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class baw {
    private static List<String> ber = new ArrayList();

    static {
        ber.add(QuickPackageInstallerActivity.class.getName());
    }

    /* renamed from: VY */
    public static void m7873VY() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.baw.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ActivityInfo[] activityInfoArr;
                ActivityInfo[] activityInfoArr2;
                super.run();
                ArrayList arrayList = new ArrayList();
                try {
                    PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(KApplication.m13453ge().getPackageName(), 15);
                    if (packageInfo != null) {
                        for (ActivityInfo activityInfo : packageInfo.activities) {
                            String str = TextUtils.isEmpty(activityInfo.targetActivity) ? activityInfo.name : activityInfo.targetActivity;
                            if (!baw.ber.contains(str)) {
                                arrayList.add(new ComponentName(C3636tj.m2169ge(), str));
                            }
                        }
                        for (ActivityInfo activityInfo2 : packageInfo.receivers) {
                            arrayList.add(new ComponentName(C3636tj.m2169ge(), TextUtils.isEmpty(activityInfo2.targetActivity) ? activityInfo2.name : activityInfo2.targetActivity));
                        }
                        for (ServiceInfo serviceInfo : packageInfo.services) {
                            arrayList.add(new ComponentName(C3636tj.m2169ge(), serviceInfo.name));
                        }
                        for (ProviderInfo providerInfo : packageInfo.providers) {
                            arrayList.add(new ComponentName(C3636tj.m2169ge(), providerInfo.name));
                        }
                    }
                } catch (Throwable th) {
                }
                C3524rk.m2449r(arrayList);
                C3561rq.m2372iU();
                C3525rl.m2446iD().m2445iE();
            }
        }));
    }
}
