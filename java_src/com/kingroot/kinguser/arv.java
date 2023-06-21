package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.examination.service.CloudCheckLiteInfo;
import com.kingroot.kinguser.examination.service.CloudCheckService;
import com.kingroot.kinguser.examination.service.ICloudCheckCallback;
import com.kingroot.kinguser.examination.service.ICloudCheckManager;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class arv extends AbstractC3667tu<ICloudCheckManager> {
    private static final Object aMk = new Object();
    private static final cce<arv> sInstance = new cce<arv>() { // from class: com.kingroot.kinguser.arv.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: ND */
        public arv create() {
            return new arv();
        }
    };

    /* renamed from: Nz */
    public static arv m9499Nz() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: NA */
    public ICloudCheckManager mo2010jV() {
        return CloudCheckService.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: l */
    public ICloudCheckManager mo2013d(IBinder iBinder) {
        return CloudCheckService.asInterface(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KUApplication.m13453ge(), CloudCheckService.C3045b.class);
    }

    public void cloudCheckAll(ICloudCheckCallback iCloudCheckCallback) {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.cloudCheckAll(iCloudCheckCallback);
            }
        } catch (RemoteException e) {
        }
    }

    public void cloudCheckApps(List<String> list, ICloudCheckCallback iCloudCheckCallback) {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.cloudCheckApps(list, iCloudCheckCallback);
            }
        } catch (RemoteException e) {
        }
    }

    public void cloudCheckApks(String str, ICloudCheckCallback iCloudCheckCallback) {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.cloudCheckApks(str, iCloudCheckCallback);
            }
        } catch (RemoteException e) {
        }
    }

    public void unregisterCallback(String str) {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.unregisterCallback(str);
            }
        } catch (RemoteException e) {
        }
    }

    @WorkerThread
    /* renamed from: NB */
    public static void m9501NB() {
        synchronized (aMk) {
            byte m1921O = C3748vb.m1921O(KUApplication.m13453ge());
            if (m1921O != -1) {
                if (adk.m12539b(aks.m11143BP().m10986Eq(), System.currentTimeMillis(), m1921O == 0 ? 57600000L : 259200000L)) {
                    m9499Nz().cloudCheckAll(null);
                }
            }
        }
    }

    public void markTreatedRiskApps(List<String> list) {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.markTreatedRiskApps(list);
            }
        } catch (RemoteException e) {
        }
    }

    @NonNull
    public List<String> getUndeniedRiskApps() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                return jX.getUndeniedRiskApps();
            }
        } catch (RemoteException e) {
        }
        return Collections.emptyList();
    }

    public void markDeniedRiskApps(List<String> list) {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.markDeniedRiskApps(list);
            }
        } catch (RemoteException e) {
        }
    }

    public void removeAppInfos(List<String> list) {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.removeAppInfos(list);
            }
        } catch (RemoteException e) {
        }
    }

    public int getRiskType(String str) {
        if (aff.m12088fd(str)) {
            return 1;
        }
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                return jX.getRiskType(str);
            }
        } catch (RemoteException e) {
        }
        return 1;
    }

    @NonNull
    public List<String> getAllRiskApps() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                ArrayList arrayList = new ArrayList();
                for (String str : jX.getAllRiskApps()) {
                    if (!aff.m12088fd(str)) {
                        arrayList.add(str);
                    }
                }
                return arrayList;
            }
        } catch (RemoteException e) {
        }
        return Collections.emptyList();
    }

    @NonNull
    public List<String> getCloudCheckFailedAppsCache() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                return jX.getCloudCheckFailedAppsCache();
            }
        } catch (RemoteException e) {
        }
        return Collections.emptyList();
    }

    @NonNull
    public List<String> getAllUnknownApps() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                return jX.getAllUnknownApps();
            }
        } catch (RemoteException e) {
        }
        return Collections.emptyList();
    }

    public void downloadWeSecure() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.downloadWeSecure();
            }
        } catch (RemoteException e) {
        }
    }

    public boolean isWeSecureInstalled() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                return jX.isWeSecureInstalled();
            }
        } catch (RemoteException e) {
        }
        return false;
    }

    public void gotoWeSecureVirusScan() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                jX.gotoWeSecureVirusScan();
            }
        } catch (RemoteException e) {
        }
    }

    /* renamed from: NC */
    public List<CloudCheckLiteInfo> m9500NC() {
        try {
            ICloudCheckManager jX = m2124jX();
            if (jX != null) {
                return jX.getAllRiskAppsLiteInfo();
            }
        } catch (RemoteException e) {
        }
        return new ArrayList();
    }
}
