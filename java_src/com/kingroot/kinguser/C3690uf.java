package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import com.kingroot.common.framework.task.KTaskSysService;
import com.kingroot.common.framework.task.provider.KTaskProvider;
import com.kingroot.kinguser.RunnableC3845wo;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.uf */
/* loaded from: classes.dex */
public class C3690uf {

    /* renamed from: Hh */
    private static RunnableC3845wo f3620Hh = new RunnableC3845wo() { // from class: com.kingroot.kinguser.uf.1
        @Override // com.kingroot.kinguser.RunnableC3845wo
        /* renamed from: a */
        public void mo1543a(RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
            List<Object> mo1527nF;
            Object obj;
            if (interfaceC3847a != null && (mo1527nF = interfaceC3847a.mo1527nF()) != null && mo1527nF.size() >= 1 && (obj = mo1527nF.get(0)) != null) {
                try {
                    C3690uf.m2044K((Context) obj);
                } catch (Throwable th) {
                }
            }
        }
    };

    /* renamed from: J */
    public static void m2045J(Context context) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(context);
        f3620Hh.m1545I(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public static void m2044K(Context context) {
        int i = 0;
        while (i < 3) {
            try {
                Thread.sleep(2000L);
            } catch (Exception e) {
            }
            C3688ud m13390kv = KTaskSysService.m13390kv();
            i = ((m13390kv == null || m13390kv.m2050ku() <= 0) && !KTaskProvider.isRunning() && !m2043L(context) && RunnableC3845wo.m1534nB()) ? i + 1 : 0;
        }
        m2041kx();
    }

    /* renamed from: kx */
    private static void m2041kx() {
        final C3688ud m13390kv = KTaskSysService.m13390kv();
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.uf.2
            @Override // java.lang.Runnable
            public void run() {
                if (C3688ud.this != null) {
                    try {
                        KTaskSysService kTaskSysService = (KTaskSysService) C3688ud.this.getContext();
                        C3671tw.m2108a(kTaskSysService.m13391kp(), true);
                        kTaskSysService.stopSelf();
                    } catch (Throwable th) {
                    }
                }
                try {
                    C3671tw.m2096kb();
                    System.exit(0);
                } catch (Throwable th2) {
                    System.exit(0);
                }
            }
        });
    }

    /* renamed from: L */
    public static boolean m2043L(Context context) {
        ProviderInfo[] providerInfoArr;
        if (KTaskProvider.m13386kz()) {
            try {
                PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(context.getPackageName(), 8);
                if (packageInfo == null || (providerInfoArr = packageInfo.providers) == null) {
                    return false;
                }
                for (ProviderInfo providerInfo : providerInfoArr) {
                    if (providerInfo.processName != null && providerInfo.processName.contains(":task") && C3641tn.m2156cT(providerInfo.name) > 0) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                return false;
            }
        }
        return false;
    }
}
