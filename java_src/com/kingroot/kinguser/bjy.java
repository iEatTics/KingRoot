package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.sdk.KlConfig;
import com.kingroot.loader.sdk.KlInfo;
import com.kingroot.loader.sdk.KlPackage;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import com.kingroot.loader.sdk.service.IKlPostRestartUpdateObserver;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bjy implements IKlPackageManager {

    /* renamed from: a */
    private static final String f1702a = bjy.class.getName();

    /* renamed from: b */
    private final SparseArray<KlPackage> f1703b = new SparseArray<>();
    private bkb byL;
    private final bkj byM;
    private Handler byN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bjy$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2472a {
        /* renamed from: a */
        void mo6595a();
    }

    /* renamed from: com.kingroot.kinguser.bjy$b */
    /* loaded from: classes.dex */
    class HandlerC2473b extends Handler {
        HandlerC2473b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                m6596b(message);
            } finally {
                Process.setThreadPriority(10);
            }
        }

        /* renamed from: b */
        void m6596b(Message message) {
            switch (message.what) {
                case 0:
                    Process.setThreadPriority(0);
                    if (message.obj instanceof InterfaceC2472a) {
                        ((InterfaceC2472a) message.obj).mo6595a();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public bjy() {
        this.byL = null;
        this.byN = null;
        bkq.m6545i(f1702a, "KlPackageManagerService begin");
        HandlerThread handlerThread = new HandlerThread("KlPackageManagerService", 10);
        handlerThread.start();
        this.byN = new HandlerC2473b(handlerThread.getLooper());
        this.byM = new bkj(bkd.aeG());
        this.byL = new bkb(bkd.aeG());
        ArrayList arrayList = new ArrayList(3);
        m6600a(arrayList);
        for (KlInfo klInfo : arrayList) {
            if (installPlugin(klInfo.rawPluginPath) != 1) {
                klInfo.rawPluginPath = "";
                this.byL.m6582a(klInfo);
            }
        }
        bkq.m6545i(f1702a, "KlPackageManagerService end");
    }

    /* renamed from: jy */
    private KlPackage m6598jy(int i) {
        KlPackage klPackage;
        synchronized (this.f1703b) {
            klPackage = this.f1703b.get(i);
        }
        return klPackage;
    }

    /* renamed from: jz */
    private KlPackage m6597jz(int i) {
        KlPackage klPackage;
        synchronized (this.f1703b) {
            klPackage = this.f1703b.get(i);
            if (klPackage != null) {
                this.f1703b.delete(i);
            }
        }
        return klPackage;
    }

    /* renamed from: a */
    private void m6600a(List<KlInfo> list) {
        List<KlInfo> aeD = this.byL.aeD();
        List<KlConfig> aeE = this.byL.aeE();
        ArrayList<KlInfo> arrayList = new ArrayList();
        SparseArray sparseArray = new SparseArray();
        for (KlConfig klConfig : aeE) {
            if (klConfig.isValid()) {
                sparseArray.put(klConfig.getPluginId(), klConfig);
            } else {
                this.byL.m6584a(klConfig.getPluginId());
            }
        }
        for (KlInfo klInfo : aeD) {
            if (!bki.m6567b(klInfo)) {
                arrayList.add(klInfo);
            } else if (klInfo.installState == 0 || klInfo.installState == 3 || klInfo.installState == 2 || klInfo.pluginId == -1) {
                arrayList.add(klInfo);
            } else {
                KlConfig klConfig2 = (KlConfig) sparseArray.get(klInfo.pluginId);
                if (klConfig2 == null) {
                    klConfig2 = new KlConfig(klInfo.pluginId, 0);
                    this.byL.m6580b(null, klConfig2);
                }
                KlPackage m6604a = m6604a(klInfo, klConfig2);
                if (m6604a == null) {
                    arrayList.add(klInfo);
                } else {
                    synchronized (this.f1703b) {
                        this.f1703b.put(klInfo.pluginId, m6604a);
                    }
                    if (!TextUtils.isEmpty(klInfo.rawPluginPath)) {
                        list.add(klInfo);
                    }
                }
            }
        }
        for (KlInfo klInfo2 : arrayList) {
            int i = klInfo2.pluginId;
            if (i != -1) {
                this.byL.m6581b(i);
            }
            this.byM.m6566a(klInfo2);
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public KlPackage getInstalledKlPackage(int i) {
        KlPackage m6598jy = m6598jy(i);
        if (m6598jy == null) {
            return null;
        }
        if (m6598jy.klInfo.installState != 1) {
            m6598jy = null;
        }
        return m6598jy;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public void uninstallPlugin(int i) {
        KlInfo klInfo;
        synchronized (bkf.aeJ().m6569jA(i)) {
            KlPackage m6597jz = m6597jz(i);
            if (m6597jz != null && (klInfo = m6597jz.klInfo) != null) {
                klInfo.installState = 0;
                this.byL.m6582a(klInfo);
            }
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public int installPlugin(String str) {
        return m6601a(str, (KlInfo) null, true);
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public int installPlugin(String str, KlInfo klInfo, boolean z) {
        return m6601a(str, klInfo, z);
    }

    /* renamed from: a */
    private int m6601a(String str, KlInfo klInfo, boolean z) {
        int m6539c;
        bkq.m6545i(f1702a, "installPluginInternal | rawPluginPath = " + str);
        File file = new File(str);
        if (!file.exists()) {
            return -6;
        }
        if ((klInfo != null && klInfo.isInfoParsed()) || (m6539c = bkr.m6539c((klInfo = new KlInfo(str)))) >= 0) {
            if (TextUtils.isEmpty(klInfo.packageMd5)) {
                klInfo.packageMd5 = bkp.m6558I(file);
            }
            if (TextUtils.isEmpty(klInfo.packageMd5)) {
                return -16;
            }
            if (bki.m6567b(klInfo)) {
                synchronized (bkf.aeJ().m6569jA(klInfo.pluginId)) {
                    KlPackage m6598jy = m6598jy(klInfo.pluginId);
                    if (m6598jy != null) {
                        if (m6598jy.isRunning()) {
                            return -13;
                        }
                        if (m6598jy.klInfo.installState == 1) {
                            if (klInfo.versionCode < m6598jy.klInfo.versionCode) {
                                return -5;
                            }
                            if (m6598jy.klInfo.packageMd5.contentEquals(klInfo.packageMd5)) {
                                return -1;
                            }
                        }
                    }
                    int m6603a = m6603a(klInfo, m6598jy != null ? m6598jy.klInfo : null, z);
                    if (m6603a >= 0) {
                        KlConfig klConfig = m6598jy != null ? m6598jy.config : new KlConfig(klInfo.pluginId, 0);
                        KlPackage m6604a = m6604a(klInfo, klConfig);
                        if (m6604a == null) {
                            return -22;
                        }
                        int m6602a = m6602a(m6604a);
                        if (m6602a >= 0) {
                            m6604a.updateLibPath();
                            klInfo.installState = 1;
                            m6604a.klInfo.rawPluginPath = "";
                            if (m6598jy != null) {
                                this.byL.m6582a(m6604a.klInfo);
                            } else {
                                this.byL.m6580b(m6604a.klInfo, klConfig);
                            }
                            synchronized (this.f1703b) {
                                this.f1703b.put(m6604a.klInfo.pluginId, m6604a);
                            }
                            return 1;
                        }
                        return m6602a;
                    }
                    return m6603a;
                }
            }
            return -19;
        }
        return m6539c;
    }

    /* renamed from: a */
    private int m6603a(KlInfo klInfo, KlInfo klInfo2, boolean z) {
        if (TextUtils.isEmpty(klInfo.rawPluginPath)) {
            return -8;
        }
        File file = new File(klInfo.rawPluginPath);
        if (!file.exists()) {
            return -6;
        }
        boolean z2 = true;
        File file2 = new File(this.byM.m6565f(klInfo.packageMd5, klInfo.packageName));
        if (file2.exists()) {
            String m6558I = bkp.m6558I(file2);
            if (!TextUtils.isEmpty(m6558I) && klInfo.packageMd5.equals(m6558I)) {
                z2 = false;
            }
        }
        if (z2 && !m6599b(file, file2)) {
            bkp.deleteFile(file2.getAbsolutePath());
            return -9;
        } else if (z && !bkr.m6540b(file2.getAbsolutePath(), klInfo.foreEntryClass, klInfo.backEntryClass, this.byM.aeM().getAbsolutePath())) {
            klInfo.installState = 3;
            this.byM.m6566a(klInfo);
            return -20;
        } else if (klInfo2 == null || klInfo2.packageMd5.contentEquals(klInfo.packageMd5)) {
            return 0;
        } else {
            klInfo2.installState = 3;
            this.byM.m6566a(klInfo2);
            return 0;
        }
    }

    /* renamed from: b */
    private boolean m6599b(File file, File file2) {
        if ((file.getAbsolutePath().startsWith(bkd.aeG().getApplicationInfo().dataDir) && file.renameTo(file2)) || bkp.m6554d(file, file2)) {
            return true;
        }
        return bkp.m6556c(file, file2);
    }

    /* renamed from: a */
    private int m6602a(KlPackage klPackage) {
        String pluginSourcePath = klPackage.getPluginSourcePath();
        if (TextUtils.isEmpty(pluginSourcePath)) {
            return -8;
        }
        File file = new File(this.byM.aeL(), klPackage.klInfo.packageName);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(pluginSourcePath);
        if (!file2.exists()) {
            return -11;
        }
        File file3 = new File(file.getAbsolutePath() + File.separator + KlConst.PLUGIN_LIB_DIR_NAME);
        bkp.m6555cz(file3.getAbsolutePath());
        if (!bkr.m6541b(file2, file.getAbsolutePath(), KlConst.PLUGIN_LIB_DIR_NAME)) {
            bkp.m6555cz(file3.getAbsolutePath());
            return -10;
        }
        if (!file3.exists() || file3.isFile()) {
            file3.delete();
            file3.mkdirs();
        }
        return 0;
    }

    /* renamed from: a */
    private KlPackage m6604a(KlInfo klInfo, KlConfig klConfig) {
        if (TextUtils.isEmpty(klInfo.packageName)) {
            return null;
        }
        String m6565f = this.byM.m6565f(klInfo.packageMd5, klInfo.packageName);
        if (new File(m6565f).exists()) {
            File file = new File(this.byM.aeL().getAbsolutePath() + File.separator + klInfo.packageName);
            if (!file.exists() && file.mkdirs() && bku.m6529qb() > 8) {
                file.setExecutable(true, false);
            }
            return new KlPackage(klInfo, klConfig, m6565f, file.getAbsolutePath(), this.byM.aeM().getAbsolutePath());
        }
        return null;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    @NonNull
    public List<KlInfo> getInstalledKlInfos() {
        KlInfo klInfo;
        ArrayList arrayList = new ArrayList();
        synchronized (this.f1703b) {
            for (int i = 0; i < this.f1703b.size(); i++) {
                KlPackage valueAt = this.f1703b.valueAt(i);
                if (valueAt != null && (klInfo = valueAt.klInfo) != null && klInfo.installState == 1) {
                    arrayList.add(klInfo);
                }
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public void markPluginRunning(int i, int i2) {
        synchronized (this.f1703b) {
            KlPackage klPackage = this.f1703b.get(i);
            if (klPackage != null) {
                klPackage.triggerPidRunning(i2);
            }
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public boolean setEnabledSetting(int i, boolean z) {
        KlPackage installedKlPackage = getInstalledKlPackage(i);
        if (installedKlPackage == null) {
            return false;
        }
        synchronized (bkf.aeJ().m6569jA(i)) {
            installedKlPackage.config.setFlagSetting(1, z ? false : true);
            this.byL.m6583a(installedKlPackage.config);
        }
        return true;
    }

    @Override // com.kingroot.loader.sdk.service.IKlPackageManager
    public void postRestartUpdate(String str, IKlPostRestartUpdateObserver iKlPostRestartUpdateObserver) {
        this.byN.obtainMessage(0, new C2474c(str, iKlPostRestartUpdateObserver)).sendToTarget();
    }

    /* renamed from: com.kingroot.kinguser.bjy$c */
    /* loaded from: classes.dex */
    class C2474c implements InterfaceC2472a {

        /* renamed from: b */
        private final String f1704b;
        private final IKlPostRestartUpdateObserver byP;

        public C2474c(String str, IKlPostRestartUpdateObserver iKlPostRestartUpdateObserver) {
            this.f1704b = str;
            this.byP = iKlPostRestartUpdateObserver;
        }

        /* renamed from: a */
        private void m6594a(int i) {
            if (this.byP != null) {
                this.byP.onPostCompleted(this.f1704b, i);
            }
        }

        @Override // com.kingroot.kinguser.bjy.InterfaceC2472a
        /* renamed from: a */
        public void mo6595a() {
            if (TextUtils.isEmpty(this.f1704b) || !new File(this.f1704b).exists()) {
                m6594a(-1);
                return;
            }
            KlInfo klInfo = new KlInfo(this.f1704b);
            if (bkr.m6539c(klInfo) < 0) {
                m6594a(-2);
                return;
            }
            KlPackage installedKlPackage = bjy.this.getInstalledKlPackage(klInfo.pluginId);
            if (installedKlPackage == null) {
                m6594a(-3);
            } else if (klInfo.versionCode <= installedKlPackage.klInfo.versionCode) {
                m6594a(-4);
            } else {
                installedKlPackage.klInfo.rawPluginPath = this.f1704b;
                bjy.this.byL.m6582a(installedKlPackage.klInfo);
                m6594a(0);
            }
        }
    }
}
