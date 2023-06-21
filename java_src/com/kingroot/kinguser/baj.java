package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService;
import com.kingroot.kinguser.plugin.upgrade.KPluginUpgradeService;
import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class baj extends AbstractC3667tu<IPluginUpgradeService> {
    private static volatile baj bdV;

    /* renamed from: Vv */
    public static baj m7936Vv() {
        if (bdV == null) {
            synchronized (baj.class) {
                if (bdV == null) {
                    bdV = new baj();
                }
            }
        }
        return bdV;
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: Vw */
    public IPluginUpgradeService mo2010jV() {
        return KPluginUpgradeService.m2626Vp();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: m */
    public IPluginUpgradeService mo2013d(IBinder iBinder) {
        return IPluginUpgradeService.Stub.asInterface(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KUApplication.m13453ge(), KPluginUpgradeService.class);
    }

    public void pullPluginOrderAsync(boolean z) {
        try {
            IPluginUpgradeService jX = m2124jX();
            if (jX != null) {
                jX.pullPluginOrderAsync(z);
            }
        } catch (RemoteException e) {
        }
    }

    public int processLocalOrderSync(int i) {
        try {
            IPluginUpgradeService jX = m2124jX();
            if (jX != null) {
                return jX.processLocalOrderSync(i);
            }
        } catch (RemoteException e) {
        }
        return 0;
    }

    public int pullPluginOrderSync(boolean z) {
        try {
            IPluginUpgradeService jX = m2124jX();
            if (jX != null) {
                return jX.pullPluginOrderSync(z);
            }
        } catch (RemoteException e) {
        }
        return -1;
    }

    public List<PluginUpgradeInfo> getUpgradeInfoList() {
        ArrayList arrayList = new ArrayList();
        try {
            IPluginUpgradeService jX = m2124jX();
            if (jX != null) {
                List<PluginUpgradeInfo> upgradeInfoList = jX.getUpgradeInfoList();
                if (!C3942yy.m1352c(upgradeInfoList)) {
                    arrayList.addAll(upgradeInfoList);
                }
            }
        } catch (RemoteException e) {
        }
        return arrayList;
    }
}
