package com.kingroot.kinguser.examination.service;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3657tp;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.acu;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.agy;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.avu;
import com.kingroot.kinguser.awb;
import com.kingroot.kinguser.bbt;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bja;
import com.kingroot.kinguser.bjg;
import com.kingroot.kinguser.bjn;
import com.kingroot.kinguser.bng;
import com.kingroot.kinguser.bvu;
import com.kingroot.kinguser.bvw;
import com.kingroot.kinguser.bvx;
import com.kingroot.kinguser.bvy;
import com.kingroot.kinguser.cce;
import com.kingroot.kinguser.examination.service.ICloudCheckManager;
import com.kingroot.kinguser.security.ProtectRecorder;
import com.kingroot.master.app.KUApplication;
import com.tencent.securemodule.api.AppInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.Vector;
/* loaded from: classes.dex */
public class CloudCheckService extends ICloudCheckManager.Stub {
    private static final long EXPIRED_TIME = 14400000;
    private static final String TAG = "common_cloudcheckservice";
    private final List<C3044a> mCacheList;
    private final HashMap<String, RemoteCallbackList<ICloudCheckCallback>> mCallbackMap;
    private List<String> mCheckingList;
    private final Object mLock;
    private final bng mProductInfo;
    private volatile bvx mService;
    private final bvu mWeSecureDownloadListener;
    private static final cce<CloudCheckService> sInstance = new cce<CloudCheckService>() { // from class: com.kingroot.kinguser.examination.service.CloudCheckService.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: NE */
        public CloudCheckService create() {
            return new CloudCheckService();
        }
    };
    private static final bed sForceStopAutoStartThread = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.examination.service.CloudCheckService.6
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            Set<String> set = (Set) interfaceC2117a.mo7445nF().get(0);
            if (!C3942yy.m1351d(set)) {
                bjg bjgVar = new bjg("autostart_enable_settings.conf");
                HashMap<String, Integer> m6735u = bjg.m6735u(bjgVar.adJ());
                boolean z = false;
                for (String str : set) {
                    if (!TextUtils.isEmpty(str)) {
                        m6735u.put(str, 1);
                        ady.m12308tK().mo1746bi(100398);
                        z = true;
                    }
                }
                if (z) {
                    bjgVar.m6736t(m6735u);
                }
                bja.m6804bW(new ArrayList(set));
            }
        }
    });

    /* renamed from: com.kingroot.kinguser.examination.service.CloudCheckService$b */
    /* loaded from: classes.dex */
    public static class C3045b extends C3657tp {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
        public IBinder onBind(Intent intent) {
            return CloudCheckService.getInstance();
        }
    }

    public static CloudCheckService getInstance() {
        return sInstance.get();
    }

    private CloudCheckService() {
        this.mLock = new Object();
        this.mProductInfo = new bng();
        this.mService = null;
        this.mWeSecureDownloadListener = new bvu() { // from class: com.kingroot.kinguser.examination.service.CloudCheckService.2
            @Override // com.kingroot.kinguser.bvu
            /* renamed from: NF */
            public void mo3881NF() {
                ady.m12308tK().mo1746bi(100365);
            }

            @Override // com.kingroot.kinguser.bvu
            /* renamed from: a */
            public void mo3879a(int i, long j, long j2) {
            }

            @Override // com.kingroot.kinguser.bvu
            /* renamed from: io */
            public void mo3878io(String str) {
                if (!TextUtils.isEmpty(str)) {
                    aks.m11143BP().m10730hg(str);
                    ady.m12308tK().mo1746bi(100366);
                }
            }

            @Override // com.kingroot.kinguser.bvu
            /* renamed from: NG */
            public void mo3880NG() {
                ady.m12308tK().mo1746bi(100367);
            }
        };
        this.mCheckingList = new Vector();
        this.mCacheList = new ArrayList();
        this.mCallbackMap = new HashMap<>();
        this.mProductInfo.packageName = KApplication.m13453ge().getPackageName();
        this.mProductInfo.versionName = KApplication.m13436ii();
        this.mProductInfo.bDs = KApplication.m13444hZ();
    }

    private bvx getSecureModuleService() {
        bvx bvxVar = this.mService;
        if (bvxVar == null) {
            synchronized (this.mProductInfo) {
                bvxVar = this.mService;
                if (bvxVar == null) {
                    bvxVar = bvy.m5359bR(KUApplication.m13453ge());
                    if (bvxVar == null || bvxVar.mo5370a(this.mProductInfo) != 0) {
                        bvxVar = null;
                    } else {
                        this.mService = bvxVar;
                    }
                }
            }
        }
        return bvxVar;
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void cloudCheckApps(final List<String> list, final ICloudCheckCallback iCloudCheckCallback) {
        if (list == null || list.size() == 0) {
            onFinish(iCloudCheckCallback, -1000);
            return;
        }
        bvx secureModuleService = getSecureModuleService();
        if (secureModuleService == null) {
            onFinish(iCloudCheckCallback, -2000);
        } else {
            secureModuleService.mo5365a(list, new bvw() { // from class: com.kingroot.kinguser.examination.service.CloudCheckService.3
                @Override // com.kingroot.kinguser.bvw
                /* renamed from: f */
                public void mo3874f(List<AppInfo> list2, List<AppInfo> list3) {
                    m3877NH();
                    if (!C3942yy.m1352c(list2)) {
                        bjn.aeb().m6712EG();
                    }
                    ArrayList arrayList = new ArrayList();
                    if (list2 != null) {
                        arrayList.addAll(list2);
                    }
                    if (list3 != null) {
                        arrayList.addAll(list3);
                    }
                    Set<AppInfo> m8751bB = avu.m8758Sb().m8751bB(arrayList);
                    HashSet hashSet = new HashSet(m8751bB.size());
                    for (AppInfo appInfo : m8751bB) {
                        if (appInfo != null && avu.m8746hj(appInfo.aiE()) && !TextUtils.isEmpty(appInfo.pkgName)) {
                            hashSet.add(appInfo.pkgName);
                        }
                    }
                    if (hashSet.size() > 0) {
                        aks.m11143BP().m10860bT(true);
                    }
                    CloudCheckService.this.onRiskFound(iCloudCheckCallback, list2, list3);
                    CloudCheckService.this.setRiskAppsRootDenied(hashSet);
                    synchronized (CloudCheckService.this.mLock) {
                        if (list2 != null) {
                            if (list2.size() > 0) {
                                Set<AppInfo> m8704bD = awb.m8706Sy().m8704bD(list2);
                                HashSet hashSet2 = new HashSet(m8704bD.size());
                                for (AppInfo appInfo2 : m8704bD) {
                                    if (appInfo2 != null && awb.m8699hj(appInfo2.aiE()) && !TextUtils.isEmpty(appInfo2.pkgName)) {
                                        hashSet2.add(appInfo2.pkgName);
                                    }
                                }
                                if (hashSet2.size() > 0) {
                                    CloudCheckService.this.banRiskAppsRoot(hashSet2);
                                    CloudCheckService.this.banRiskAppsAutoStart(hashSet2);
                                    CloudCheckService.this.banSilentInstallApp(hashSet2);
                                }
                            }
                        }
                    }
                }

                @Override // com.kingroot.kinguser.bvw
                public void onFinish(int i) {
                    if (i != 0) {
                        m3876NI();
                    } else {
                        for (String str : list) {
                            ProtectRecorder.m2296XX().m2290kH(str);
                        }
                        m3877NH();
                    }
                    CloudCheckService.this.onFinish(iCloudCheckCallback, i);
                }

                /* renamed from: NH */
                private void m3877NH() {
                    avu.m8758Sb().m8744n(list);
                }

                /* renamed from: NI */
                private void m3876NI() {
                    avu.m8758Sb().m8745m(list);
                }
            });
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void cloudCheckAll(final ICloudCheckCallback iCloudCheckCallback) {
        bvx secureModuleService = getSecureModuleService();
        if (secureModuleService == null) {
            onFinish(iCloudCheckCallback, -2000);
        } else {
            secureModuleService.mo5368a(new bvw() { // from class: com.kingroot.kinguser.examination.service.CloudCheckService.4
                @Override // com.kingroot.kinguser.bvw
                /* renamed from: f */
                public void mo3874f(List<AppInfo> list, List<AppInfo> list2) {
                    m3875NH();
                    if (!C3942yy.m1352c(list)) {
                        bjn.aeb().m6712EG();
                    }
                    ArrayList arrayList = new ArrayList();
                    if (list != null) {
                        arrayList.addAll(list);
                    }
                    if (list2 != null) {
                        arrayList.addAll(list2);
                    }
                    Set<AppInfo> m8750bC = avu.m8758Sb().m8750bC(arrayList);
                    HashSet hashSet = new HashSet(m8750bC.size());
                    for (AppInfo appInfo : m8750bC) {
                        if (appInfo != null && avu.m8746hj(appInfo.aiE()) && !TextUtils.isEmpty(appInfo.pkgName)) {
                            hashSet.add(appInfo.pkgName);
                        }
                    }
                    if (hashSet.size() > 0) {
                        aks.m11143BP().m10860bT(true);
                    }
                    CloudCheckService.this.onRiskFound(iCloudCheckCallback, list, list2);
                    CloudCheckService.this.setRiskAppsRootDenied(hashSet);
                    synchronized (CloudCheckService.this.mLock) {
                        if (list != null) {
                            if (list.size() > 0) {
                                Set<AppInfo> m8704bD = awb.m8706Sy().m8704bD(list);
                                HashSet hashSet2 = new HashSet(m8704bD.size());
                                for (AppInfo appInfo2 : m8704bD) {
                                    if (appInfo2 != null && awb.m8699hj(appInfo2.aiE()) && !TextUtils.isEmpty(appInfo2.pkgName)) {
                                        hashSet2.add(appInfo2.pkgName);
                                    }
                                }
                                if (hashSet2.size() > 0) {
                                    CloudCheckService.this.banRiskAppsRoot(hashSet2);
                                    CloudCheckService.this.banRiskAppsAutoStart(hashSet2);
                                    CloudCheckService.this.banSilentInstallApp(hashSet2);
                                }
                            }
                        }
                    }
                }

                @Override // com.kingroot.kinguser.bvw
                public void onFinish(int i) {
                    if (i == 0) {
                        m3875NH();
                    }
                    CloudCheckService.this.onFinish(iCloudCheckCallback, i);
                }

                /* renamed from: NH */
                private void m3875NH() {
                    aks.m11143BP().m10833bl(System.currentTimeMillis());
                    avu.m8758Sb().m8752Sh();
                }
            });
        }
    }

    /* renamed from: com.kingroot.kinguser.examination.service.CloudCheckService$a */
    /* loaded from: classes.dex */
    public static class C3044a implements Comparable<C3044a> {
        long aMp = System.currentTimeMillis();
        AppInfo aMq;
        String apkPath;

        public C3044a(String str, AppInfo appInfo) {
            this.apkPath = str;
            this.aMq = appInfo;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(@NonNull C3044a c3044a) {
            if (this.aMp < c3044a.aMp) {
                return -1;
            }
            return this.aMp == c3044a.aMp ? 0 : 1;
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void registerCallback(String str, ICloudCheckCallback iCloudCheckCallback) {
        if (!TextUtils.isEmpty(str) && iCloudCheckCallback != null) {
            synchronized (this.mCallbackMap) {
                RemoteCallbackList<ICloudCheckCallback> remoteCallbackList = this.mCallbackMap.get(str);
                if (remoteCallbackList == null) {
                    remoteCallbackList = new RemoteCallbackList<>();
                }
                remoteCallbackList.register(iCloudCheckCallback);
                this.mCallbackMap.put(str, remoteCallbackList);
            }
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void unregisterCallback(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.mCallbackMap) {
                RemoteCallbackList<ICloudCheckCallback> remoteCallbackList = this.mCallbackMap.get(str);
                if (remoteCallbackList != null) {
                    remoteCallbackList.kill();
                    this.mCallbackMap.remove(str);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyRiskFound(AppInfo appInfo) {
        if (appInfo != null && !TextUtils.isEmpty(appInfo.apkPath)) {
            synchronized (this.mCallbackMap) {
                RemoteCallbackList<ICloudCheckCallback> remoteCallbackList = this.mCallbackMap.get(appInfo.apkPath);
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        Bundle bundle = new Bundle();
                        bundle.putSerializable(CloudCheckCallback.RISK_APP_INFO_KEY, appInfo);
                        remoteCallbackList.getBroadcastItem(i).onRiskFound(bundle);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyScanFinish(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.mCallbackMap) {
                RemoteCallbackList<ICloudCheckCallback> remoteCallbackList = this.mCallbackMap.get(str);
                int beginBroadcast = remoteCallbackList.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i2 = beginBroadcast - 1;
                    try {
                        remoteCallbackList.getBroadcastItem(i2).onFinish(i);
                        beginBroadcast = i2;
                    } catch (RemoteException e) {
                        beginBroadcast = i2;
                    }
                }
                remoteCallbackList.finishBroadcast();
            }
        }
    }

    private void handleExpiredCache() {
        synchronized (this.mCacheList) {
            if (!C3942yy.m1351d(this.mCacheList)) {
                Iterator<C3044a> it = this.mCacheList.iterator();
                while (it.hasNext() && acu.m12571g(it.next().aMp, (long) EXPIRED_TIME)) {
                    it.remove();
                }
            }
        }
    }

    private C3044a searchInCache(String str) {
        C3044a c3044a;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        handleExpiredCache();
        synchronized (this.mCacheList) {
            if (!C3942yy.m1351d(this.mCacheList)) {
                Iterator<C3044a> it = this.mCacheList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        c3044a = null;
                        break;
                    }
                    c3044a = it.next();
                    if (!TextUtils.isEmpty(c3044a.apkPath) && TextUtils.equals(c3044a.apkPath, str)) {
                        break;
                    }
                }
            } else {
                c3044a = null;
            }
        }
        return c3044a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveInCache(String str, AppInfo appInfo) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (this.mCacheList) {
                this.mCacheList.add(new C3044a(str, appInfo));
            }
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void cloudCheckApks(final String str, ICloudCheckCallback iCloudCheckCallback) {
        if (TextUtils.isEmpty(str)) {
            onFinish(iCloudCheckCallback, -1000);
            return;
        }
        bvx secureModuleService = getSecureModuleService();
        if (secureModuleService == null) {
            onFinish(iCloudCheckCallback, -2000);
            return;
        }
        registerCallback(str, iCloudCheckCallback);
        C3044a searchInCache = searchInCache(str);
        if (searchInCache != null) {
            if (searchInCache.aMq != null) {
                notifyRiskFound(searchInCache.aMq);
            } else {
                notifyScanFinish(str, 0);
            }
        } else if (!this.mCheckingList.contains(str)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            secureModuleService.mo5361b(arrayList, new bvw() { // from class: com.kingroot.kinguser.examination.service.CloudCheckService.5
                @Override // com.kingroot.kinguser.bvw
                /* renamed from: f */
                public void mo3874f(List<AppInfo> list, List<AppInfo> list2) {
                    for (AppInfo appInfo : list) {
                        CloudCheckService.this.saveInCache(appInfo.apkPath, appInfo);
                        CloudCheckService.this.notifyRiskFound(appInfo);
                        CloudCheckService.this.mCheckingList.remove(appInfo.apkPath);
                    }
                    for (AppInfo appInfo2 : list2) {
                        CloudCheckService.this.saveInCache(appInfo2.apkPath, appInfo2);
                        CloudCheckService.this.notifyRiskFound(appInfo2);
                        CloudCheckService.this.mCheckingList.remove(appInfo2.apkPath);
                    }
                }

                @Override // com.kingroot.kinguser.bvw
                public void onFinish(int i) {
                    CloudCheckService.this.saveInCache(str, null);
                    CloudCheckService.this.notifyScanFinish(str, i);
                    CloudCheckService.this.mCheckingList.remove(str);
                }
            });
            this.mCheckingList.add(str);
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    @NonNull
    public List<String> getUntreatedRiskApps() {
        return new ArrayList(avu.m8758Sb().m8757Sc());
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void markTreatedRiskApps(List<String> list) {
        avu.m8758Sb().m8749c(new HashSet(list));
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    @NonNull
    public List<String> getUndeniedRiskApps() {
        return new ArrayList(avu.m8758Sb().m8755Se());
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void markDeniedRiskApps(List<String> list) {
        avu.m8758Sb().m8748d(new HashSet(list));
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void downloadWeSecure() {
        bvx secureModuleService = getSecureModuleService();
        if (secureModuleService != null) {
            synchronized (this.mWeSecureDownloadListener) {
                aks m11143BP = aks.m11143BP();
                String m10979Ex = m11143BP.m10979Ex();
                if (TextUtils.isEmpty(m10979Ex) || !new File(m10979Ex).exists()) {
                    m11143BP.m10730hg(null);
                    secureModuleService.mo5369a(this.mWeSecureDownloadListener, false);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void removeAppInfos(List<String> list) {
        avu.m8758Sb().removeAppInfos(list);
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public int getRiskType(String str) {
        return avu.m8758Sb().getRiskType(str);
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    @NonNull
    public List<String> getAllRiskApps() {
        return new ArrayList(avu.m8758Sb().m8754Sf());
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public boolean isWeSecureInstalled() {
        bvx secureModuleService = getSecureModuleService();
        return secureModuleService != null && secureModuleService.isWeSecureInstalled();
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public void gotoWeSecureVirusScan() {
        bvx secureModuleService = getSecureModuleService();
        if (secureModuleService != null) {
            secureModuleService.mo5360bQ(KUApplication.m13453ge());
        }
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public List<String> getCloudCheckFailedAppsCache() {
        return avu.m8758Sb().getCloudCheckFailedAppsCache();
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public List<String> getAllUnknownApps() {
        return new ArrayList(avu.m8758Sb().m8753Sg());
    }

    @Override // com.kingroot.kinguser.examination.service.ICloudCheckManager
    public List<CloudCheckLiteInfo> getAllRiskAppsLiteInfo() {
        return new ArrayList(avu.m8758Sb().m8756Sd());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRiskFound(ICloudCheckCallback iCloudCheckCallback, List<AppInfo> list, List<AppInfo> list2) {
        if (iCloudCheckCallback != null) {
            Bundle bundle = new Bundle();
            ArrayList arrayList = new ArrayList();
            if (!C3942yy.m1352c(list)) {
                arrayList.addAll(list);
            }
            ArrayList arrayList2 = new ArrayList();
            if (!C3942yy.m1352c(list2)) {
                arrayList2.addAll(list2);
            }
            bundle.putSerializable(CloudCheckCallback.RISK_APP_INFO_KEY, arrayList);
            bundle.putSerializable("unknown", arrayList2);
            try {
                iCloudCheckCallback.onRiskFound(bundle);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFinish(ICloudCheckCallback iCloudCheckCallback, int i) {
        if (iCloudCheckCallback != null) {
            try {
                iCloudCheckCallback.onFinish(i);
            } catch (RemoteException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRiskAppsRootDenied(Set<String> set) {
        if (!C3942yy.m1352c(set)) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (TextUtils.isEmpty(next)) {
                    it.remove();
                } else if (-1 == bbt.m7780WG().getRuleType(next)) {
                    it.remove();
                } else {
                    bbt.m7780WG().updateRule(next, 0, 0L);
                }
            }
            avu.m8758Sb().m8748d(set);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void banRiskAppsRoot(Set<String> set) {
        if (!C3942yy.m1352c(set)) {
            HashSet hashSet = new HashSet();
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (TextUtils.isEmpty(next)) {
                    it.remove();
                } else if (-1 != bbt.m7780WG().getRuleType(next)) {
                    bbt.m7780WG().updateRule(next, 0, 0L);
                    hashSet.add(next);
                    ady.m12308tK().mo1746bi(100397);
                }
            }
            awb.m8706Sy().m8703d(hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void banRiskAppsAutoStart(Set<String> set) {
        beg.m7461Zj().m7454a(sForceStopAutoStartThread, set);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void banSilentInstallApp(Set<String> set) {
        if (!C3942yy.m1352c(set)) {
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (TextUtils.isEmpty(next)) {
                    it.remove();
                } else {
                    agy.m11867wk().m11868p(next, 0);
                }
            }
        }
    }
}
