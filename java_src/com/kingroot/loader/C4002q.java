package com.kingroot.loader;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.bkq;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.multi.IKlPackageManagerBridge;
import com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge;
import com.kingroot.loader.sdk.KlInfo;
import com.kingroot.loader.sdk.KlPackage;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import com.kingroot.loader.sdk.service.IKlPostRestartUpdateObserver;
import java.util.List;
/* renamed from: com.kingroot.loader.q */
/* loaded from: classes.dex */
public class C4002q extends C3657tp {
    private static BinderC4004a bzj = new BinderC4004a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return bzj;
    }

    public static IKlPackageManagerBridge aeO() {
        return bzj;
    }

    /* renamed from: com.kingroot.loader.q$a */
    /* loaded from: classes.dex */
    static class BinderC4004a extends IKlPackageManagerBridge.AbstractBinderC3995a {

        /* renamed from: a */
        private final IKlPackageManager f4126a;

        private BinderC4004a() {
            this.f4126a = (IKlPackageManager) KlServiceManager.getKService(IKlPackageManager.class);
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public void markPluginRunning(int i, int i2) {
            this.f4126a.markPluginRunning(i, i2);
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public KlPackage getInstalledKlPackage(int i) {
            return this.f4126a.getInstalledKlPackage(i);
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public List<KlInfo> getInstalledKlInfos() {
            return this.f4126a.getInstalledKlInfos();
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public void uninstallPlugin(int i) {
            this.f4126a.uninstallPlugin(i);
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public boolean setEnabledSetting(int i, boolean z) {
            return this.f4126a.setEnabledSetting(i, z);
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public int installPlugin(String str) {
            return this.f4126a.installPlugin(str);
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public int installPluginEx(String str, KlInfo klInfo, boolean z) {
            return this.f4126a.installPlugin(str, klInfo, z);
        }

        @Override // com.kingroot.loader.multi.IKlPackageManagerBridge
        public void postRestartUpdate(String str, final IKlPostRestartUpdateObserverBridge iKlPostRestartUpdateObserverBridge) {
            IKlPostRestartUpdateObserver iKlPostRestartUpdateObserver = null;
            if (iKlPostRestartUpdateObserverBridge != null) {
                iKlPostRestartUpdateObserver = new IKlPostRestartUpdateObserver() { // from class: com.kingroot.loader.q.a.1
                    @Override // com.kingroot.loader.sdk.service.IKlPostRestartUpdateObserver
                    public void onPostCompleted(String str2, int i) {
                        try {
                            iKlPostRestartUpdateObserverBridge.onPostCompleted(str2, i);
                        } catch (RemoteException e) {
                            bkq.m6550d(e);
                        }
                    }
                };
            }
            this.f4126a.postRestartUpdate(str, iKlPostRestartUpdateObserver);
        }
    }
}
