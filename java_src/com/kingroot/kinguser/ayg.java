package com.kingroot.kinguser;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.IPluginInstallListener;
import com.kingroot.loader.sdk.KlInfo;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import com.tencent.qqpimsdk.qqloginaar.QQLogin;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ayg implements bkc {
    private final SparseArray<ayf> bcK;
    private static final AtomicBoolean bcL = new AtomicBoolean(false);
    private static final cce<ayg> sInstance = new cce<ayg>() { // from class: com.kingroot.kinguser.ayg.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Vd */
        public ayg create() {
            return new ayg();
        }
    };
    private static bed bcM = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ayg.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ayg.m8021UX();
            if (!akv.m10705Gp().m10699Gv() && ayg.m8023UV()) {
                ayg.m8020UY();
                ayg.m8013a((IPluginInstallListener) null);
            }
        }
    });
    private static bed bcN = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ayg.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (!ayg.m8018Va()) {
            }
        }
    });

    /* renamed from: UR */
    public static ayg m8026UR() {
        return sInstance.get();
    }

    private ayg() {
        this.bcK = new SparseArray<>(2);
        m8015a(new ayl());
        m8015a(new ayv());
    }

    /* renamed from: a */
    private void m8015a(ayf ayfVar) {
        this.bcK.put(ayfVar.getPluginId(), ayfVar);
    }

    @Override // com.kingroot.kinguser.bkc
    /* renamed from: a */
    public Bundle mo6578a(int i, Bundle bundle, boolean z) {
        ayf ayfVar = this.bcK.get(i);
        if (ayfVar != null) {
            return ayfVar.mo7981a(bundle, z);
        }
        return null;
    }

    @Override // com.kingroot.kinguser.bkc
    @Nullable
    /* renamed from: US */
    public Activity mo6579US() {
        return aft.m12026vt();
    }

    /* renamed from: UT */
    public static File m8025UT() {
        return KApplication.m13453ge().getDir("plugin", 0);
    }

    /* renamed from: UU */
    public static String m8024UU() {
        return KlConst.PLUGIN_FILE_NAME_SUFFIX;
    }

    /* renamed from: h */
    public static void m8011h(Context context, boolean z) {
        if (!akv.m10705Gp().m10699Gv()) {
            bkd.m6575el(false);
            bkk.m6563a(context, z, m8026UR());
            QQLogin.init(context, new ayj());
            bcL.set(true);
        }
    }

    /* renamed from: UV */
    public static boolean m8023UV() {
        return bcL.get();
    }

    /* renamed from: UW */
    public static void m8022UW() {
        beg.m7461Zj().m7450c(bcM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UX */
    public static void m8021UX() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UY */
    public static void m8020UY() {
        HashSet hashSet = new HashSet();
        for (PluginUpgradeInfo pluginUpgradeInfo : baj.m7936Vv().getUpgradeInfoList()) {
            if (pluginUpgradeInfo != null && !TextUtils.isEmpty(pluginUpgradeInfo.bdO)) {
                hashSet.add(new File(pluginUpgradeInfo.bdO).getName());
            }
        }
        File[] listFiles = m8025UT().listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file != null && !hashSet.contains(file.getName())) {
                    file.delete();
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m8014a(C2820cn c2820cn, KlInfo klInfo) {
        return klInfo == null || klInfo.versionCode < c2820cn.f2350kd;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m8013a(IPluginInstallListener iPluginInstallListener) {
        IKlPackageManager iKlPackageManager = (IKlPackageManager) KlServiceManager.getKService(IKlPackageManager.class);
        SparseArray sparseArray = new SparseArray();
        for (KlInfo klInfo : iKlPackageManager.getInstalledKlInfos()) {
            sparseArray.put(klInfo.pluginId, klInfo);
        }
        SparseArray<C2820cn> aiI = bwa.aiI();
        int size = aiI.size();
        for (int i = 0; i < size; i++) {
            C2820cn valueAt = aiI.valueAt(i);
            if (valueAt != null && m8014a(valueAt, (KlInfo) sparseArray.get(valueAt.f2349id))) {
                String str = valueAt.f2349id + KlConst.PLUGIN_FILE_NAME_SUFFIX;
                String str2 = KlConst.BUILDIN_PLUGIN_DIR_ASSETS_NAME + File.separator + str;
                File file = new File(bkd.aeG().getDir(KlConst.PLUGIN_EXTRACT_DIR_NAME, 0), str);
                try {
                    C3563rs.m2352e(str2, file);
                    if (!C3563rs.m2369B(file.getAbsolutePath(), str2)) {
                        if (iPluginInstallListener != null) {
                            iPluginInstallListener.onPluginInstallEnd(str2, -15);
                        }
                    } else {
                        KlInfo klInfo2 = new KlInfo(file.getAbsolutePath());
                        if (bkr.m6542b(valueAt, klInfo2)) {
                            int installPlugin = iKlPackageManager.installPlugin(file.getAbsolutePath(), klInfo2, false);
                            if (iPluginInstallListener != null) {
                                iPluginInstallListener.onPluginInstallEnd(str2, installPlugin);
                            }
                            file.delete();
                        }
                    }
                } catch (Exception e) {
                    if (iPluginInstallListener != null) {
                        iPluginInstallListener.onPluginInstallEnd(str2, -15);
                    }
                }
            }
        }
    }

    /* renamed from: UZ */
    public static void m8019UZ() {
        if (akv.m10705Gp().m10702Gs()) {
            beg.m7461Zj().m7450c(bcN);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Va */
    public static boolean m8018Va() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) KApplication.m13453ge().getSystemService("activity")).getRunningAppProcesses();
        if (C3942yy.m1351d(runningAppProcesses)) {
            return false;
        }
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        ArrayList arrayList = new ArrayList(3);
        String packageName = KApplication.m13453ge().getPackageName();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.uid == myUid && runningAppProcessInfo.pid != myPid) {
                if (runningAppProcessInfo.processName != null && TextUtils.equals(runningAppProcessInfo.processName, packageName) && runningAppProcessInfo.importance == 200) {
                    return false;
                }
                arrayList.add(Integer.valueOf(runningAppProcessInfo.pid));
            }
        }
        akv.m10705Gp().m10696cv(false);
        if (baj.m7936Vv().processLocalOrderSync(4) == 0) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Process.killProcess(((Integer) it.next()).intValue());
        }
        Process.killProcess(myPid);
        System.exit(0);
        return true;
    }
}
