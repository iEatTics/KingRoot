package com.kingroot.kinguser;

import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.plugin.upgrade.PluginDownloadCallback;
import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.KlInfo;
import com.kingroot.loader.sdk.KlPackage;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class bak {
    private static volatile bak bea;
    private bah bdW = new bah();
    private AtomicBoolean bdX = new AtomicBoolean(false);
    private final Object bdY = new Object();
    private final Object bdZ = new Object();
    private bed beb = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bak.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull final bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bak.1.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                    bak.this.pullPluginOrderSync((mo7445nF == null || mo7445nF.size() <= 0 || !(mo7445nF.get(0) instanceof Boolean)) ? false : ((Boolean) mo7445nF.get(0)).booleanValue());
                    if (bak.this.bdX.get()) {
                        bak.this.processLocalOrderSync(1);
                    }
                    bak.this.bdX.set(false);
                    return null;
                }
            }, new Object[0]);
        }
    });
    private final bed bec = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bak.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull final bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.bak.2.1
                @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                public Object execute(List<Object> list) {
                    int i = 1;
                    List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                    if (mo7445nF != null && mo7445nF.size() > 0 && (mo7445nF.get(0) instanceof Integer)) {
                        i = ((Integer) mo7445nF.get(0)).intValue();
                    }
                    bak.this.processLocalOrderSync(i);
                    return null;
                }
            }, new Object[0]);
        }
    });
    private final SparseArray<C3759vh<C3754vf>> bed = new SparseArray<>();

    private bak() {
    }

    /* renamed from: Vx */
    public static bak m7933Vx() {
        if (bea == null) {
            synchronized (bak.class) {
                if (bea == null) {
                    bea = new bak();
                }
            }
        }
        return bea;
    }

    /* renamed from: a */
    private boolean m7928a(PluginUpgradeInfo pluginUpgradeInfo, C3785vk<C3754vf> c3785vk) {
        synchronized (this.bed) {
            C3759vh<C3754vf> c3759vh = this.bed.get(pluginUpgradeInfo.pluginId);
            if (c3759vh != null) {
                switch (c3759vh.getStatus()) {
                    case -2:
                    case -1:
                    case 0:
                        return false;
                    case 1:
                        c3759vh.m1880ln();
                        return false;
                    default:
                        this.bed.put(pluginUpgradeInfo.pluginId, null);
                        break;
                }
            }
            if (TextUtils.isEmpty(pluginUpgradeInfo.bdO)) {
                File m8025UT = ayg.m8025UT();
                if (m8025UT == null) {
                    return false;
                }
                pluginUpgradeInfo.bdO = m8025UT.getAbsolutePath() + File.separator + pluginUpgradeInfo.packageMd5 + ayg.m8024UU();
                this.bdW.m7945b(pluginUpgradeInfo, true);
            }
            File file = new File(pluginUpgradeInfo.bdO);
            C3754vf c3754vf = new C3754vf(file.getName(), pluginUpgradeInfo.url);
            if (pluginUpgradeInfo.m2624Vu()) {
                c3785vk.mo1796b(c3754vf);
                return true;
            }
            C3759vh<C3754vf> c3759vh2 = new C3759vh<>(KUApplication.m13453ge(), c3754vf);
            c3759vh2.m1883dc(file.getParent());
            c3759vh2.m1887a(c3785vk);
            c3759vh2.m1882ll();
            this.bed.put(pluginUpgradeInfo.pluginId, c3759vh2);
            return true;
        }
    }

    /* renamed from: hJ */
    public void m7924hJ(int i) {
        synchronized (this.bed) {
            C3759vh<C3754vf> c3759vh = this.bed.get(i);
            if (c3759vh != null) {
                c3759vh.m1879lo();
            }
            this.bed.put(i, null);
        }
    }

    public int processLocalOrderSync(int i) {
        int i2;
        int i3;
        synchronized (this.bdZ) {
            i2 = 0;
            for (PluginUpgradeInfo pluginUpgradeInfo : this.bdW.getUpgradeInfoList()) {
                if (pluginUpgradeInfo.pluginId != 5004 || akw.m10690Gx().m10694GA() == 1) {
                    try {
                        i3 = m7929a(pluginUpgradeInfo, i) ? i2 + 1 : i2;
                    } catch (Throwable th) {
                        i3 = i2;
                    }
                    i2 = i3;
                }
            }
        }
        return i2;
    }

    /* renamed from: hK */
    public void m7923hK(int i) {
        beg.m7461Zj().m7454a(this.bec, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m7929a(PluginUpgradeInfo pluginUpgradeInfo, int i) {
        boolean m7927b;
        synchronized (this.bdZ) {
            m7927b = pluginUpgradeInfo == null ? false : m7927b(pluginUpgradeInfo, i);
        }
        return m7927b;
    }

    /* renamed from: b */
    private boolean m7927b(PluginUpgradeInfo pluginUpgradeInfo, int i) {
        PluginUpgradeInfo upgradeInfo;
        byte m1921O;
        if (!akv.m10705Gp().m10699Gv() && ayg.m8023UV() && (upgradeInfo = this.bdW.getUpgradeInfo(pluginUpgradeInfo.pluginId)) != null && upgradeInfo.bdT == pluginUpgradeInfo.bdT) {
            if (pluginUpgradeInfo.m2624Vu()) {
                if ((i == 1 || i == 3 || i == 4) && pluginUpgradeInfo.bdU < 3) {
                    return m7925c(pluginUpgradeInfo, i);
                }
                return false;
            } else if (pluginUpgradeInfo.downloadCount >= 3 || !adk.m12538g(pluginUpgradeInfo.lastDownloadTime, 14400000L) || (m1921O = C3748vb.m1921O(KUApplication.m13453ge())) == -1) {
                return false;
            } else {
                if ((m1921O == 0 || C3941yx.m1356B(pluginUpgradeInfo.bdR, 16)) && m7928a(pluginUpgradeInfo, new baf(pluginUpgradeInfo))) {
                    pluginUpgradeInfo.lastDownloadTime = System.currentTimeMillis();
                    this.bdW.m7945b(pluginUpgradeInfo, true);
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    private boolean m7925c(PluginUpgradeInfo pluginUpgradeInfo, int i) {
        int i2;
        IKlPackageManager iKlPackageManager = (IKlPackageManager) KlServiceManager.getKService(IKlPackageManager.class);
        if (iKlPackageManager.getInstalledKlPackage(pluginUpgradeInfo.pluginId) != null && i != 4) {
            akv.m10705Gp().m10696cv(true);
            return false;
        }
        bae.m7970a(pluginUpgradeInfo, true);
        bag.m7954b(pluginUpgradeInfo, 1, true);
        String m12871ea = aaz.m12871ea(pluginUpgradeInfo.bdO);
        if (TextUtils.isEmpty(m12871ea)) {
            i2 = 9000;
        } else if (m12871ea.equalsIgnoreCase("191240FCB048127DB9110D1B30537FDE")) {
            KlPackage installedKlPackage = iKlPackageManager.getInstalledKlPackage(pluginUpgradeInfo.pluginId);
            if (installedKlPackage == null || !installedKlPackage.isRunning()) {
                i2 = iKlPackageManager.installPlugin(pluginUpgradeInfo.bdO);
            } else {
                iKlPackageManager.postRestartUpdate(pluginUpgradeInfo.bdO, null);
                i2 = 1;
            }
        } else {
            i2 = 9001;
        }
        pluginUpgradeInfo.bdU++;
        this.bdW.m7945b(pluginUpgradeInfo, true);
        if (i2 == 1) {
            bae.m7969a(pluginUpgradeInfo, true, i2, true);
            bag.m7955a(pluginUpgradeInfo, true, i2, 1, true);
            this.bdW.m7943hH(pluginUpgradeInfo.pluginId);
            return true;
        }
        bae.m7969a(pluginUpgradeInfo, false, i2, true);
        bag.m7955a(pluginUpgradeInfo, false, i2, 1, true);
        if (pluginUpgradeInfo.bdU >= 3) {
        }
        return false;
    }

    /* renamed from: Vy */
    public bah m7932Vy() {
        return this.bdW;
    }

    public void pullPluginOrderAsync(boolean z) {
        this.bdX.set(z);
        beg.m7461Zj().m7450c(this.beb);
    }

    public int pullPluginOrderSync(boolean z) {
        boolean z2;
        boolean z3;
        synchronized (this.bdY) {
            if (akv.m10705Gp().m10699Gv()) {
                return -1;
            }
            if (ayg.m8023UV()) {
                long currentTimeMillis = System.currentTimeMillis();
                if (!z && !adk.m12539b(akv.m10705Gp().m10704Gq(), currentTimeMillis, 86400000L)) {
                    return -2;
                }
                if (-1 == C3748vb.m1921O(KUApplication.m13453ge())) {
                    return -1;
                }
                ArrayList<C3010dy> m7926bJ = m7926bJ(((IKlPackageManager) KlServiceManager.getKService(IKlPackageManager.class)).getInstalledKlInfos());
                if (bwa.aiI().size() <= 0 || m7926bJ.size() != 0) {
                    Iterator<C3010dy> it = m7926bJ.iterator();
                    while (it.hasNext()) {
                        C3010dy next = it.next();
                        bae.m7966c(next.f2520id, next.version, false);
                    }
                    C3007dv c3007dv = new C3007dv();
                    c3007dv.f2511mw = bvz.m5351il();
                    c3007dv.f2512nO = bvz.aiG();
                    c3007dv.f2513nP = m7926bJ;
                    c3007dv.f2514nQ = akv.m10705Gp().m10703Gr();
                    AtomicReference atomicReference = new AtomicReference();
                    int m11402a = aju.m11402a(KUApplication.m13453ge(), c3007dv, atomicReference);
                    if (m11402a != 0) {
                        bae.m7971a((C3016ed) null, m11402a, -1, false);
                        return -1;
                    }
                    if (!z) {
                        akv.m10705Gp().m10698bM(currentTimeMillis);
                    }
                    C3018ef c3018ef = (C3018ef) atomicReference.get();
                    if (c3018ef == null) {
                        bae.m7971a((C3016ed) null, 0, -1, false);
                        return -1;
                    } else if (c3018ef.f2583oM != 0) {
                        bae.m7971a((C3016ed) null, 0, c3018ef.f2583oM, false);
                        bag.m7957a(null, 2302, String.valueOf(c3018ef.f2583oM), false);
                        return -1;
                    } else {
                        akv.m10705Gp().m10697bN(c3018ef.f2591oU);
                        SparseArray sparseArray = new SparseArray();
                        if (!C3942yy.m1351d(c3018ef.f2586oP) || !C3942yy.m1351d(c3018ef.f2584oN)) {
                            Iterator<C3016ed> it2 = c3018ef.f2586oP.iterator();
                            while (it2.hasNext()) {
                                it2.next().f2559ov = null;
                            }
                            Iterator<C3016ed> it3 = c3018ef.f2584oN.iterator();
                            while (it3.hasNext()) {
                                it3.next().f2560ow = null;
                            }
                            ArrayList arrayList = new ArrayList(c3018ef.f2586oP);
                            arrayList.addAll(c3018ef.f2584oN);
                            Iterator it4 = arrayList.iterator();
                            while (it4.hasNext()) {
                                C3016ed c3016ed = (C3016ed) it4.next();
                                if (c3016ed.f2541id == 5003 || c3016ed.f2541id == 5004) {
                                    sparseArray.put(c3016ed.f2541id, c3016ed);
                                    bae.m7971a(c3016ed, 0, 0, false);
                                    bag.m7957a(c3016ed, 2300, null, false);
                                }
                            }
                        }
                        boolean z4 = false;
                        for (PluginUpgradeInfo pluginUpgradeInfo : this.bdW.getUpgradeInfoList()) {
                            C3016ed c3016ed2 = (C3016ed) sparseArray.get(pluginUpgradeInfo.pluginId);
                            if (c3016ed2 == null) {
                                if (pluginUpgradeInfo.m2625Vt()) {
                                    this.bdW.m7943hH(pluginUpgradeInfo.pluginId);
                                    m7924hJ(pluginUpgradeInfo.pluginId);
                                    z3 = z4;
                                } else {
                                    z3 = z4;
                                }
                            } else if (pluginUpgradeInfo.bdT == c3016ed2.f2561ox) {
                                sparseArray.delete(pluginUpgradeInfo.pluginId);
                                z3 = z4;
                            } else {
                                PluginUpgradeInfo m7930a = m7930a(c3016ed2);
                                if (m7930a != null) {
                                    this.bdW.m7945b(m7930a, true);
                                    sparseArray.delete(pluginUpgradeInfo.pluginId);
                                    z3 = true;
                                }
                            }
                            z4 = z3;
                        }
                        int size = sparseArray.size();
                        boolean z5 = z4;
                        int i = 0;
                        while (i < size) {
                            PluginUpgradeInfo m7930a2 = m7930a((C3016ed) sparseArray.valueAt(i));
                            if (m7930a2 == null) {
                                z2 = z5;
                            } else {
                                this.bdW.m7947a(m7930a2);
                                z2 = true;
                            }
                            i++;
                            z5 = z2;
                        }
                        return z5 ? 1 : 0;
                    }
                }
                return -1;
            }
            return -1;
        }
    }

    /* renamed from: a */
    private static PluginUpgradeInfo m7930a(C3016ed c3016ed) {
        PluginUpgradeInfo pluginUpgradeInfo = new PluginUpgradeInfo();
        pluginUpgradeInfo.bdS = System.currentTimeMillis();
        pluginUpgradeInfo.pluginId = c3016ed.f2541id;
        pluginUpgradeInfo.versionCode = c3016ed.version;
        pluginUpgradeInfo.packageMd5 = c3016ed.f2546oi;
        pluginUpgradeInfo.size = c3016ed.f2547oj;
        pluginUpgradeInfo.url = c3016ed.f2548ok;
        pluginUpgradeInfo.size = c3016ed.f2547oj;
        pluginUpgradeInfo.bdT = c3016ed.f2561ox;
        if (c3016ed.f2554oq != null && c3016ed.f2554oq.f2534od.size() > 0) {
            String[] split = c3016ed.f2554oq.f2534od.get(0).split("\n|\r\n");
            if (split.length > 0) {
                pluginUpgradeInfo.bdP = split[0];
            }
            if (split.length > 1) {
                pluginUpgradeInfo.bdQ = split[1];
            }
        }
        if (c3016ed.f2550om) {
            if (c3016ed.f2560ow != null) {
                pluginUpgradeInfo.f3307pf = 2;
            } else if (c3016ed.f2559ov == null) {
                return null;
            } else {
                pluginUpgradeInfo.f3307pf = 4;
            }
            if (c3016ed.f2551on == 0 && c3016ed.f2547oj < 1048576) {
                pluginUpgradeInfo.bdR |= 16;
            }
        } else if (c3016ed.f2560ow != null) {
            if (c3016ed.f2560ow.f2592pf == 0) {
                pluginUpgradeInfo.f3307pf = 0;
            } else if (c3016ed.f2560ow.f2592pf != 1) {
                return null;
            } else {
                pluginUpgradeInfo.f3307pf = 1;
            }
        } else if (c3016ed.f2559ov == null) {
            return null;
        } else {
            pluginUpgradeInfo.f3307pf = 3;
        }
        return pluginUpgradeInfo;
    }

    @NonNull
    /* renamed from: bJ */
    private static ArrayList<C3010dy> m7926bJ(List<KlInfo> list) {
        ArrayList<C3010dy> arrayList = new ArrayList<>();
        if (C3942yy.m1351d(list)) {
            return arrayList;
        }
        for (KlInfo klInfo : list) {
            C3010dy c3010dy = new C3010dy();
            c3010dy.f2520id = klInfo.pluginId;
            c3010dy.level = 10;
            c3010dy.pkgName = klInfo.packageName;
            c3010dy.version = klInfo.versionCode;
            arrayList.add(c3010dy);
        }
        return arrayList;
    }

    public boolean startDownload(int i, PluginDownloadCallback pluginDownloadCallback) {
        boolean m7928a;
        PluginUpgradeInfo upgradeInfo = this.bdW.getUpgradeInfo(i);
        if (upgradeInfo == null) {
            try {
                pluginDownloadCallback.onFailed(null, -6);
            } catch (RemoteException e) {
            }
            return false;
        }
        C2043a c2043a = new C2043a(pluginDownloadCallback);
        synchronized (this.bed) {
            C3759vh<C3754vf> c3759vh = this.bed.get(upgradeInfo.pluginId);
            if (c3759vh != null && c3759vh.getStatus() == 0) {
                c3759vh.m1887a(c2043a);
                m7928a = true;
            } else {
                m7928a = m7928a(upgradeInfo, c2043a);
            }
        }
        return m7928a;
    }

    /* renamed from: com.kingroot.kinguser.bak$a */
    /* loaded from: classes.dex */
    static class C2043a extends C3785vk<C3754vf> {
        private PluginDownloadCallback bei;

        C2043a(PluginDownloadCallback pluginDownloadCallback) {
            this.bei = pluginDownloadCallback;
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: f */
        public void mo1793e(C3754vf c3754vf) {
            super.mo1793e(c3754vf);
            try {
                this.bei.onProgressChanged(c3754vf.f3760BH);
            } catch (Throwable th) {
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: g  reason: avoid collision after fix types in other method */
        public void mo1794d(C3754vf c3754vf) {
            super.mo1794d(c3754vf);
            try {
                this.bei.onRunning();
            } catch (Throwable th) {
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: h */
        public void mo1791g(C3754vf c3754vf) {
            super.mo1791g((C2043a) c3754vf);
            try {
                this.bei.onDeleted();
            } catch (Throwable th) {
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo1796b(C3754vf c3754vf) {
            super.mo1796b((C2043a) c3754vf);
            try {
                this.bei.onFinished(c3754vf.f3762KT + File.separator + c3754vf.mName, c3754vf.mErrorCode);
            } catch (Throwable th) {
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: b  reason: avoid collision after fix types in other method */
        public void mo1797a(C3754vf c3754vf) {
            super.mo1797a((C2043a) c3754vf);
            try {
                this.bei.onFailed(c3754vf.f3762KT + File.separator + c3754vf.mName, c3754vf.mErrorCode);
            } catch (Throwable th) {
            }
        }
    }
}
