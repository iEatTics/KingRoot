package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.loader.C4002q;
import com.kingroot.loader.multi.IKlPackageManagerBridge;
import com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge;
import com.kingroot.loader.sdk.KlInfo;
import com.kingroot.loader.sdk.KlPackage;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import com.kingroot.loader.sdk.service.IKlPostRestartUpdateObserver;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bkm extends AbstractC3667tu<IKlPackageManagerBridge> implements IKlPackageManager {
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: aeO */
    public IKlPackageManagerBridge mo2010jV() {
        return C4002q.aeO();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: a */
    public IKlPackageManagerBridge mo2013d(IBinder iBinder) {
        return IKlPackageManagerBridge.AbstractBinderC3995a.m1218a(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KApplication.m13453ge(), C4002q.class);
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public void markPluginRunning(int i, int i2) {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                jX.markPluginRunning(i, i2);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public KlPackage getInstalledKlPackage(int i) {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                return jX.getInstalledKlPackage(i);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
        return null;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    @NonNull
    public List<KlInfo> getInstalledKlInfos() {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                return jX.getInstalledKlInfos();
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
        return new ArrayList();
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public void uninstallPlugin(int i) {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                jX.uninstallPlugin(i);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public int installPlugin(String str) {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                return jX.installPlugin(str);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
        return -12;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public int installPlugin(String str, KlInfo klInfo, boolean z) {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                return jX.installPluginEx(str, klInfo, z);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
        return -12;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public boolean setEnabledSetting(int i, boolean z) {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                return jX.setEnabledSetting(i, z);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
        return false;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public void postRestartUpdate(String str, final IKlPostRestartUpdateObserver iKlPostRestartUpdateObserver) {
        try {
            IKlPackageManagerBridge jX = m2124jX();
            if (jX != null) {
                IKlPostRestartUpdateObserverBridge.AbstractBinderC3997a abstractBinderC3997a = null;
                if (iKlPostRestartUpdateObserver != null) {
                    abstractBinderC3997a = new IKlPostRestartUpdateObserverBridge.AbstractBinderC3997a() { // from class: com.kingroot.loader.o$1
                        @Override // com.kingroot.loader.multi.IKlPostRestartUpdateObserverBridge
                        public void onPostCompleted(String str2, int i) {
                            iKlPostRestartUpdateObserver.onPostCompleted(str2, i);
                        }
                    };
                    bkn.m6560b(iKlPostRestartUpdateObserver, abstractBinderC3997a);
                }
                jX.postRestartUpdate(str, abstractBinderC3997a);
            }
        } catch (RemoteException e) {
            C3951zg.m1321d(e);
        }
    }
}
