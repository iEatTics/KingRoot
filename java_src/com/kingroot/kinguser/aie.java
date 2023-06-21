package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class aie {
    private static final cce<aie> sInstance = new cce<aie>() { // from class: com.kingroot.kinguser.aie.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: xy */
        public aie create() {
            return new aie();
        }
    };
    private HashMap<ComponentName, ServiceInfo> arq;

    /* renamed from: xw */
    public static aie m11669xw() {
        return sInstance.get();
    }

    private aie() {
        this.arq = new HashMap<>();
    }

    /* renamed from: eh */
    public boolean m11672eh(String str) {
        String str2 = "service call activity 79 s16 " + str;
        abc m12845qK = abc.m12845qK();
        return m12845qK.isRootPermition(true) && m12845qK.m12846el(str2).success();
    }

    /* renamed from: n */
    public boolean m11671n(Context context, String str) {
        m11670o(context, str);
        return true;
    }

    /* renamed from: o */
    private void m11670o(Context context, String str) {
        C3952zh m1312pq = C3952zh.m1312pq();
        List<ActivityManager.RunningServiceInfo> runningServices = ((ActivityManager) context.getSystemService("activity")).getRunningServices(100);
        if (runningServices != null) {
            for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
                if (runningServiceInfo.service.getPackageName().equals(str)) {
                    ServiceInfo serviceInfo = this.arq.get(runningServiceInfo.service);
                    if (serviceInfo == null) {
                        try {
                            serviceInfo = m1312pq.getServiceInfo(runningServiceInfo.service, 0);
                        } catch (PackageManager.NameNotFoundException e) {
                        } catch (RuntimeException e2) {
                        }
                        if (serviceInfo != null) {
                            this.arq.put(runningServiceInfo.service, serviceInfo);
                        }
                    }
                    if (serviceInfo != null && serviceInfo.permission == null && serviceInfo.exported) {
                        Intent intent = new Intent();
                        intent.setComponent(runningServiceInfo.service);
                        try {
                            context.stopService(intent);
                        } catch (Exception e3) {
                        }
                    }
                }
            }
        }
    }

    /* renamed from: xx */
    public static boolean m11668xx() {
        return abd.m12839qb() >= 8;
    }
}
