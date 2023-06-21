package com.kingroot.kinguser.plugin.upgrade;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.bak;
import com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService;
import java.util.List;
/* loaded from: classes.dex */
public class KPluginUpgradeService extends C3657tp {
    private static Stub bdI = new Stub();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: I */
    public void mo2133I(Context context) {
        super.mo2133I(context);
        bdI = new Stub();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: a */
    public void mo2132a(Intent intent) {
        super.mo2132a(intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        synchronized (Stub.class) {
            if (bdI == null) {
                synchronized (Stub.class) {
                    bdI = new Stub();
                }
            }
        }
        return bdI;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    /* renamed from: jR */
    public void mo2131jR() {
        super.mo2131jR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public void onDestroy() {
        super.onDestroy();
    }

    /* renamed from: Vp */
    public static IPluginUpgradeService m2626Vp() {
        synchronized (Stub.class) {
            if (bdI == null) {
                synchronized (Stub.class) {
                    bdI = new Stub();
                }
            }
        }
        return bdI;
    }

    /* loaded from: classes.dex */
    static class Stub extends IPluginUpgradeService.Stub {
        private bak mImpl = bak.m7933Vx();

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public void pullPluginOrderAsync(boolean z) {
            this.mImpl.pullPluginOrderAsync(z);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public int processLocalOrderSync(int i) {
            return this.mImpl.processLocalOrderSync(i);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public int pullPluginOrderSync(boolean z) {
            return this.mImpl.pullPluginOrderSync(z);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public boolean startDownload(int i, PluginDownloadCallback pluginDownloadCallback) {
            return this.mImpl.startDownload(i, pluginDownloadCallback);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public PluginUpgradeInfo getUpgradeInfo(int i) {
            return this.mImpl.m7932Vy().getUpgradeInfo(i);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public void deleteUpgradeInfo(int i) {
            this.mImpl.m7932Vy().m7943hH(i);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public void setUpgradeInfoFlag(int i, int i2) {
            this.mImpl.m7932Vy().m7948Z(i, i2);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public void stopDownload(int i) {
            this.mImpl.m7924hJ(i);
        }

        @Override // com.kingroot.kinguser.plugin.upgrade.IPluginUpgradeService
        public List<PluginUpgradeInfo> getUpgradeInfoList() {
            return this.mImpl.m7932Vy().getUpgradeInfoList();
        }
    }
}
