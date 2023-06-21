package com.kingroot.kingmaster.toolbox.autostartmgr.wod.service;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IProcWallManager;
import com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IWodService;
import com.kingroot.kinguser.C3627tf;
import com.kingroot.kinguser.C3636tj;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.aan;
import com.kingroot.kinguser.aes;
import com.kingroot.kinguser.aev;
/* loaded from: classes.dex */
public class WodService extends C3657tp {
    private static WodServiceImpl afD;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return m13061uM();
    }

    /* renamed from: uL */
    public static IWodService m13062uL() {
        return m13061uM();
    }

    /* renamed from: uM */
    private static WodServiceImpl m13061uM() {
        if (afD == null) {
            synchronized (WodService.class) {
                if (afD == null) {
                    afD = new WodServiceImpl();
                }
            }
        }
        return afD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WodServiceImpl extends IWodService.Stub {
        private static final String ENCRYPT_KEY = "6B696E676D61737465725F776F64";
        private static final String JAR_NAME = "wod.jar";
        private static final String ROOT_CLASS = "com.kingroot.processwall.server.ProcWallHooker";
        private static final String SERVICE_NAME = "pandaria";
        private static final int SERVICE_VERSION = 1;
        private static final String TARGET_PROC_NAME = "system_server";
        private static final String TEST_PROC_NAME = "com.android.phone";
        private static int sServiceNameFix = 1001;
        private IBinder mRemote;

        private WodServiceImpl() {
        }

        private static String getServiceName() {
            return "pandaria_" + sServiceNameFix;
        }

        private static IBinder getService() {
            int i = -1;
            while (i != 1) {
                try {
                    IBinder service = aan.getService(getServiceName());
                    if (service == null) {
                        return null;
                    }
                    if (service.isBinderAlive()) {
                        IProcWallManager asInterface = IProcWallManager.Stub.asInterface(service);
                        i = asInterface.getVersionCode();
                        if (i == 1) {
                            return service;
                        }
                        asInterface.setEnable(false);
                        sServiceNameFix++;
                    } else {
                        sServiceNameFix++;
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            return null;
        }

        private IProcWallManager getInterface() {
            if (this.mRemote == null || !this.mRemote.isBinderAlive()) {
                return null;
            }
            return IProcWallManager.Stub.asInterface(this.mRemote);
        }

        @Override // com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IWodService
        public synchronized boolean isWodAvailible() {
            return false;
        }

        @Override // com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IWodService
        public synchronized void setConfigMap(Bundle bundle) {
            if (bundle != null) {
                if (bundle.size() >= 1) {
                    IProcWallManager iProcWallManager = getInterface();
                    if (iProcWallManager != null) {
                        try {
                            iProcWallManager.setPackageConfigMap(bundle);
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        }

        @Override // com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IWodService
        public synchronized void setWodEnable(boolean z) {
            aev.m12147e(C3636tj.m2169ge(), z);
            if (!z) {
                C3627tf.m2188a(0, aes.class, "android.intent.action.SCREEN_OFF", "android.intent.action.SCREEN_ON", "com.kingroot.master.action.SCHEDUAL_EVENT");
            }
        }

        @Override // com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IWodService
        public synchronized void initConfigMap(Bundle bundle) {
            IProcWallManager iProcWallManager = getInterface();
            if (iProcWallManager != null) {
                try {
                    iProcWallManager.initPackageConfigMap(bundle);
                } catch (Throwable th) {
                }
            }
        }

        @Override // com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IWodService
        public synchronized boolean isServiceExist() {
            return getService() != null;
        }
    }
}
