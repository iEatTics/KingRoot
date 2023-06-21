package com.kingroot.kinguser.service;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.aaz;
import com.kingroot.kinguser.ahl;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.service.IKCommonManagerInterface;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KCommonManagerService extends Service {
    private static Stub biZ = null;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        synchronized (Stub.class) {
            if (biZ == null) {
                synchronized (Stub.class) {
                    biZ = new Stub();
                }
            }
        }
        return biZ;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return super.onUnbind(intent);
    }

    /* loaded from: classes.dex */
    static class Stub extends IKCommonManagerInterface.Stub {
        private PackageManager mPackageManager = C3952zh.m1312pq();
        private HashMap<String, String> mPermitFor3rdMap = new HashMap<>();

        public Stub() {
            this.mPermitFor3rdMap.put("com.tencent.qqpimsecure", "00B1208638DE0FCD3E920886D658DAF6");
        }

        @Override // com.kingroot.kinguser.service.IKCommonManagerInterface
        public int getAntiInjectState() {
            return (checkPermissionFor3rdApp() && ahl.m11725xm().m11723xo()) ? 1 : 0;
        }

        @Override // com.kingroot.kinguser.service.IKCommonManagerInterface
        public int openAntiInjectFunction() {
            if (!checkPermissionFor3rdApp()) {
                return 0;
            }
            asyncOpenAntiInjectFunction();
            return 1;
        }

        private void asyncOpenAntiInjectFunction() {
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.service.KCommonManagerService.Stub.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    ahl.m11725xm().m11734a(true, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.service.KCommonManagerService.Stub.1.1
                        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                        public void onSwitcherOpen(int i) {
                            if (i == 0) {
                                aks.m11143BP().m10746eu(0);
                                aks.m11143BP().m10747et(1);
                                return;
                            }
                            aks.m11143BP().m10747et(0);
                        }

                        @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                        public void onSwitcherClosed() {
                        }
                    });
                }
            }));
        }

        private boolean checkPermissionFor3rdApp() {
            String[] packagesForUid = this.mPackageManager.getPackagesForUid(Binder.getCallingUid());
            if (packagesForUid != null && packagesForUid.length > 0) {
                String str = packagesForUid[0];
                if (!TextUtils.isEmpty(str)) {
                    String str2 = this.mPermitFor3rdMap.get(str);
                    if (!TextUtils.isEmpty(str2)) {
                        String m12872dZ = aaz.m12872dZ(str);
                        if (!TextUtils.isEmpty(m12872dZ) && str2.equalsIgnoreCase(m12872dZ)) {
                            return true;
                        }
                        if (TextUtils.isEmpty(m12872dZ) && this.mPermitFor3rdMap.containsKey(str)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
    }
}
