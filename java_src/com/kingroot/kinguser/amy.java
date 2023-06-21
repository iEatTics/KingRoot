package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.alm;
import com.kingroot.kinguser.amy;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IMergeApkPatchListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener;
import com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class amy extends AppDownloadClient {
    private static final String TAG = aiq.arY + "AppsMarketDownloader";
    private static final cce<amy> sInstance = new cce<amy>() { // from class: com.kingroot.kinguser.amy.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: IH */
        public amy create() {
            return new amy();
        }
    };
    private Map<String, C1232a> azR;
    private alz<ConcurrentHashMap<String, AppDownloadRequest>> azS;
    private final RemoteCallbackList<IOnWifiAutoDownloadListener> azT;
    private final RemoteCallbackList<ILoadAppStatusListener> azU;

    /* renamed from: IB */
    public static amy m10397IB() {
        return sInstance.get();
    }

    private amy() {
        this.azR = Collections.synchronizedMap(new HashMap());
        this.azS = new alz<ConcurrentHashMap<String, AppDownloadRequest>>() { // from class: com.kingroot.kinguser.amy.1
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_download_model.data");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hb */
            public ConcurrentHashMap<String, AppDownloadRequest> mo7423Hc() {
                return new ConcurrentHashMap<>();
            }
        };
        this.azT = new RemoteCallbackList<>();
        this.azU = new RemoteCallbackList<>();
        this.azS.m10472a(null);
        m4087a(new NetworkChangedRemoteListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.net.AppsMarketDownloader$3
            @Override // com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener
            public void onTurnIntoMobileNetwork() {
                ArrayList arrayList = new ArrayList();
                for (AppDownloadRequest appDownloadRequest : ((ConcurrentHashMap) amy.this.azS.m10475HR()).values()) {
                    if (amy.this.mo4079hM(appDownloadRequest.pkgName) != null) {
                        switch (r3.m4052KJ()) {
                            case PAUSED:
                                arrayList.add(appDownloadRequest.appName);
                                continue;
                        }
                    }
                }
                if (arrayList.size() > 0) {
                    adm.m12480st().m12511a(arrayList, 2);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m10378c(@NonNull AppDownloadRequest appDownloadRequest) {
        m10376d(appDownloadRequest);
        AppDownloadRequest appDownloadRequest2 = this.azS.m10475HR().get(appDownloadRequest.pkgName);
        appDownloadRequest2.appStatus = 9;
        this.azS.m10475HR().put(appDownloadRequest2.pkgName, appDownloadRequest2);
        this.azS.m10473HT();
        m10395ID();
    }

    /* renamed from: d */
    private boolean m10376d(@NonNull AppDownloadRequest appDownloadRequest) {
        if (appDownloadRequest != null && !appDownloadRequest.equals(this.azS.m10475HR().get(appDownloadRequest.pkgName))) {
            this.azS.m10475HR().put(appDownloadRequest.pkgName, appDownloadRequest);
            this.azS.m10473HT();
            return true;
        }
        return false;
    }

    @WorkerThread
    /* renamed from: IC */
    public List<AppDownloadRequest> m10396IC() {
        ArrayList arrayList = new ArrayList();
        for (AppDownloadRequest appDownloadRequest : this.azS.m10475HR().values()) {
            if (appDownloadRequest.appStatus == 9 || m10375e(appDownloadRequest)) {
                arrayList.add(appDownloadRequest);
            } else if (m10374f(appDownloadRequest)) {
                arrayList.add(appDownloadRequest);
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    private boolean m10375e(AppDownloadRequest appDownloadRequest) {
        return appDownloadRequest.appStatus == 3;
    }

    /* renamed from: f */
    private boolean m10374f(AppDownloadRequest appDownloadRequest) {
        return appDownloadRequest.appStatus == 1 && amz.m10365II().mo4079hM(appDownloadRequest.pkgName) == null;
    }

    /* renamed from: a */
    public void m10387a(@NonNull AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener, boolean z, @NonNull IAppInstallListener iAppInstallListener) {
        m10385a(appDownloadRequest, z, iAppInstallListener, iAppDownloadListener);
        mo4092a(appDownloadRequest, i, iAppDownloadListener);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: a */
    public void mo4092a(@NonNull AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener) {
        boolean z = false;
        try {
            if (m10376d(appDownloadRequest)) {
                m10394IF();
            }
            AppDownloadRequest appDownloadRequest2 = this.azS.m10475HR().get(appDownloadRequest.pkgName);
            boolean m10442fv = amg.m10442fv(appDownloadRequest2.appStatus);
            if (appDownloadRequest.fileSize > apu.m9747LN() && m10442fv) {
                appDownloadRequest2.appStatus = 9;
                String string = C3953zi.m1311pr().getString(R.string.market_app_download_insufficient_space);
                if (i == 1) {
                    C3954zj.m1310b(string);
                    ady.m12308tK().mo1746bi(100715);
                }
                return;
            }
            if (m10375e(appDownloadRequest2) || m10374f(appDownloadRequest2)) {
                z = true;
            }
            File m9741h = apu.m9741h(appDownloadRequest2);
            boolean exists = m9741h.exists();
            if (exists) {
                appDownloadRequest2.appStatus = 5;
            } else {
                appDownloadRequest2.appStatus = 1;
            }
            if (exists) {
                C1232a c1232a = this.azR.get(appDownloadRequest.pkgName);
                if (c1232a.azX) {
                    m10386a(appDownloadRequest2, c1232a, m9741h.getAbsolutePath());
                }
                return;
            }
            ReportInfo reportInfo = appDownloadRequest2.reportInfo;
            if (m10442fv) {
                if (reportInfo != null) {
                    ana.m10352IO().mo10331a(reportInfo, 10);
                }
                if (appDownloadRequest2.cid != 0) {
                    ana.m10352IO().mo10336I(appDownloadRequest2.cid, appDownloadRequest2.pkgName);
                }
            } else if (z) {
                if (reportInfo != null) {
                    ana.m10352IO().mo10331a(reportInfo, 60);
                }
                if (appDownloadRequest2.cid != 0) {
                    ana.m10352IO().mo10333L(appDownloadRequest2.cid, appDownloadRequest2.pkgName);
                }
            }
            super.mo4092a(appDownloadRequest2, i, iAppDownloadListener);
            m10395ID();
        } finally {
            this.azS.m10473HT();
        }
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            AppDownloadRequest appDownloadRequest = this.azS.m10475HR().get(downloaderTaskInfo.m4049KM());
            if (appDownloadRequest != null) {
                appDownloadRequest.appStatus = 3;
                this.azS.m10473HT();
                ReportInfo reportInfo = appDownloadRequest.reportInfo;
                if (reportInfo != null) {
                    ana.m10352IO().mo10331a(reportInfo, 0);
                }
                if (appDownloadRequest.cid != 0) {
                    ana.m10352IO().mo10329b(appDownloadRequest.cid, appDownloadRequest.pkgName, downloaderTaskInfo.m4048KN(), 2);
                }
                m10395ID();
            }
            super.onFailed(downloaderTaskInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hw */
    public void m10371hw(String str) {
        this.azS.m10475HR().remove(str);
        this.azS.m10473HT();
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: a */
    public void mo4091a(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            m10371hw(downloaderTaskInfo.m4049KM());
        }
        super.mo4091a(downloaderTaskInfo);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: hx */
    public void mo4072hx(String str) {
        if (str != null) {
            m10371hw(str);
        }
        super.mo4072hx(str);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: a */
    public void mo4089a(DownloaderTaskInfo downloaderTaskInfo, boolean z) {
        if (downloaderTaskInfo != null) {
            m10371hw(downloaderTaskInfo.m4049KM());
        }
        super.mo4089a(downloaderTaskInfo, z);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: z */
    public void mo4070z(@NonNull String str, boolean z) {
        if (str != null) {
            m10371hw(str);
        }
        super.mo4070z(str, z);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onRemove(DownloaderTaskInfo downloaderTaskInfo) {
        super.onRemove(downloaderTaskInfo);
        m10395ID();
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
        AppDownloadRequest appDownloadRequest;
        super.onProgress(i, downloaderTaskInfo);
        if (downloaderTaskInfo != null && (appDownloadRequest = this.azS.m10475HR().get(downloaderTaskInfo.m4049KM())) != null) {
            if (appDownloadRequest.appStatus != 1) {
                appDownloadRequest.appStatus = 1;
                this.azS.m10473HT();
            }
            if (i % 5 == 0 && appDownloadRequest != null) {
                appDownloadRequest.progress = i;
                this.azS.m10473HT();
            }
        }
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
        super.onStartDownload(downloaderTaskInfo);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onPaused(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            AppDownloadRequest appDownloadRequest = this.azS.m10475HR().get(downloaderTaskInfo.m4049KM());
            if (appDownloadRequest != null) {
                if (appDownloadRequest.reportInfo != null) {
                    ana.m10352IO().mo10331a(appDownloadRequest.reportInfo, 15);
                }
                if (appDownloadRequest.cid != 0) {
                    ana.m10352IO().mo10328d(appDownloadRequest.cid, appDownloadRequest.pkgName, 3);
                }
                if (appDownloadRequest.appStatus != 4) {
                    appDownloadRequest.appStatus = 3;
                    this.azS.m10473HT();
                }
                m10395ID();
            }
            super.onPaused(downloaderTaskInfo);
        }
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onPending(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            AppDownloadRequest appDownloadRequest = this.azS.m10475HR().get(downloaderTaskInfo.m4049KM());
            if (appDownloadRequest != null) {
                appDownloadRequest.appStatus = 2;
                this.azS.m10473HT();
            }
            super.onPending(downloaderTaskInfo);
        }
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            AppDownloadRequest appDownloadRequest = this.azS.m10475HR().get(downloaderTaskInfo.m4049KM());
            C1232a m10380b = m10380b(downloaderTaskInfo);
            if (appDownloadRequest != null) {
                ReportInfo reportInfo = appDownloadRequest.reportInfo;
                if (reportInfo != null) {
                    ana.m10352IO().mo10331a(reportInfo, 1);
                }
                if (appDownloadRequest.cid != 0) {
                    ana.m10352IO().mo10328d(appDownloadRequest.cid, appDownloadRequest.pkgName, 1);
                }
                appDownloadRequest.appStatus = 5;
                this.azS.m10473HT();
                m10395ID();
            }
            super.onComplete(downloaderTaskInfo);
            if (appDownloadRequest != null) {
                m10386a(appDownloadRequest, m10380b, downloaderTaskInfo.m4053KI());
            }
        }
    }

    /* renamed from: a */
    private void m10386a(AppDownloadRequest appDownloadRequest, C1232a c1232a, String str) {
        if (c1232a != null && c1232a.azX) {
            if (appDownloadRequest.isUpdate) {
                m10377c(appDownloadRequest, c1232a, str);
            } else {
                m10381b(appDownloadRequest, c1232a, str);
            }
        }
    }

    /* renamed from: b */
    private void m10381b(AppDownloadRequest appDownloadRequest, C1232a c1232a, String str) {
        ApkInstallRequest apkInstallRequest = new ApkInstallRequest(str, appDownloadRequest.pkgName, appDownloadRequest.apkMd5);
        apkInstallRequest.reportInfo = appDownloadRequest.reportInfo;
        apkInstallRequest.appName = appDownloadRequest.appName;
        alm.m10566GQ().mo9331a(apkInstallRequest, c1232a.azY);
    }

    /* renamed from: c */
    private void m10377c(AppDownloadRequest appDownloadRequest, final C1232a c1232a, final String str) {
        final AvailUpdateInfo availUpdateInfo = null;
        for (AvailUpdateInfo availUpdateInfo2 : C3942yy.m1350e(alv.m10524Hq().mo10414Hw())) {
            if (!TextUtils.equals(availUpdateInfo2.pkgName, appDownloadRequest.pkgName)) {
                availUpdateInfo2 = availUpdateInfo;
            }
            availUpdateInfo = availUpdateInfo2;
        }
        if (availUpdateInfo == null) {
            for (AvailUpdateInfo availUpdateInfo3 : C3942yy.m1350e(alv.m10524Hq().mo10413Hx())) {
                if (TextUtils.equals(availUpdateInfo3.pkgName, appDownloadRequest.pkgName)) {
                    availUpdateInfo = availUpdateInfo3;
                }
            }
        }
        if (availUpdateInfo != null) {
            if (appDownloadRequest.isDiff) {
                alq.m10547GY().mo10424a(str, apu.m9736l(appDownloadRequest), availUpdateInfo, new IMergeApkPatchListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.net.AppsMarketDownloader$4
                    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IMergeApkPatchListener
                    public void onMergeResult(String str2, int i, String str3) {
                        if (i == 0) {
                            if (c1232a.azY != null) {
                                c1232a.azY.onState(availUpdateInfo.pkgName, 1, availUpdateInfo.appName);
                            }
                            C3563rs.m2345r(new File(str));
                            if (new File(str2).renameTo(new File(str))) {
                                str2 = str;
                            }
                            alm.m10566GQ().mo9331a(ApkInstallRequest.m3785a(availUpdateInfo, str2), c1232a.azY);
                            return;
                        }
                        if (c1232a.azY != null) {
                            c1232a.azY.onState(availUpdateInfo.pkgName, 2, availUpdateInfo.appName);
                        }
                        amy.this.m10371hw(availUpdateInfo.pkgName);
                        amy.this.m10387a(AppDownloadRequest.m4062b(availUpdateInfo, false), 1, c1232a.azZ, true, c1232a.azY);
                        C3563rs.m2345r(new File(str2));
                    }
                });
            } else {
                alm.m10566GQ().mo9331a(ApkInstallRequest.m3785a(availUpdateInfo, str), c1232a.azY);
            }
        }
    }

    /* renamed from: g */
    public void m10373g(AppDownloadRequest appDownloadRequest) {
        m10376d(appDownloadRequest);
        AppDownloadRequest appDownloadRequest2 = this.azS.m10475HR().get(appDownloadRequest.pkgName);
        appDownloadRequest2.appStatus = 4;
        this.azS.m10475HR().put(appDownloadRequest2.pkgName, appDownloadRequest2);
        this.azS.m10473HT();
    }

    /* renamed from: hy */
    public AppDownloadRequest m10370hy(String str) {
        AppDownloadRequest appDownloadRequest = this.azS.m10475HR().get(str);
        if (appDownloadRequest == null) {
            return null;
        }
        if (C3952zh.m1312pq().m1314du(appDownloadRequest.pkgName) && !appDownloadRequest.isUpdate) {
            C3563rs.m2345r(apu.m9741h(appDownloadRequest));
            this.azS.m10475HR().remove(appDownloadRequest.pkgName);
            appDownloadRequest = null;
        } else {
            File m9741h = apu.m9741h(appDownloadRequest);
            if (m9741h.exists() && anf.m10280fH(appDownloadRequest.appStatus)) {
                appDownloadRequest.appStatus = 5;
            }
            if (!m9741h.exists() && anf.m10279fI(appDownloadRequest.appStatus)) {
                appDownloadRequest.appStatus = 0;
            }
        }
        this.azS.m10473HT();
        return appDownloadRequest;
    }

    /* renamed from: a */
    public void m10390a(@NonNull final ILoadAppHistoryListener iLoadAppHistoryListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.amy.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                Iterator it = ((ConcurrentHashMap) amy.this.azS.m10475HR()).entrySet().iterator();
                while (it.hasNext()) {
                    AppDownloadRequest appDownloadRequest = (AppDownloadRequest) ((Map.Entry) it.next()).getValue();
                    if (!appDownloadRequest.isUpdate) {
                        if (C3952zh.m1312pq().m1314du(appDownloadRequest.pkgName)) {
                            it.remove();
                            C3563rs.m2345r(apu.m9741h(appDownloadRequest));
                        } else {
                            File m9741h = apu.m9741h(appDownloadRequest);
                            if (m9741h.exists() && anf.m10280fH(appDownloadRequest.appStatus)) {
                                appDownloadRequest.appStatus = 5;
                            }
                            if (!m9741h.exists() && anf.m10279fI(appDownloadRequest.appStatus)) {
                                appDownloadRequest.appStatus = 0;
                            }
                            arrayList.add(AppDownLoadModel.m4178a(appDownloadRequest));
                        }
                    }
                }
                amy.this.azS.m10473HT();
                if (iLoadAppHistoryListener != null) {
                    try {
                        iLoadAppHistoryListener.onComplete(arrayList);
                    } catch (RemoteException e) {
                    }
                }
            }
        }));
    }

    /* renamed from: ID */
    public void m10395ID() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.amy.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                boolean z = false;
                Iterator it = ((ConcurrentHashMap) amy.this.azS.m10475HR()).entrySet().iterator();
                int i = 0;
                int i2 = 0;
                int i3 = 0;
                while (it.hasNext()) {
                    AppDownloadRequest appDownloadRequest = (AppDownloadRequest) ((Map.Entry) it.next()).getValue();
                    if (C3952zh.m1312pq().m1314du(appDownloadRequest.pkgName) && !appDownloadRequest.isUpdate) {
                        it.remove();
                        C3563rs.m2345r(apu.m9741h(appDownloadRequest));
                    } else {
                        File m9741h = apu.m9741h(appDownloadRequest);
                        if (m9741h.exists() && anf.m10280fH(appDownloadRequest.appStatus)) {
                            appDownloadRequest.appStatus = 5;
                        }
                        if (!m9741h.exists() && anf.m10279fI(appDownloadRequest.appStatus)) {
                            appDownloadRequest.appStatus = 0;
                        }
                        if (anf.m10280fH(appDownloadRequest.appStatus)) {
                            i3++;
                            if (appDownloadRequest.appStatus != 1) {
                                i2++;
                            }
                        } else if (appDownloadRequest.appStatus == 5) {
                            i++;
                        }
                    }
                    i = i;
                    i2 = i2;
                    i3 = i3;
                }
                amy.this.azS.m10473HT();
                if (i3 == 0 && i2 == 0) {
                    if (acu.m12573b(akl.m11257AS().m11217Bz(), System.currentTimeMillis(), 259200000L)) {
                        List<AvailUpdateInfo> mo10413Hx = alv.m10524Hq().mo10413Hx();
                        if (i > 0 || !C3942yy.m1351d(mo10413Hx)) {
                            z = true;
                        }
                    }
                }
                synchronized (amy.this.azU) {
                    int beginBroadcast = amy.this.azU.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i4 = beginBroadcast - 1;
                        ILoadAppStatusListener iLoadAppStatusListener = (ILoadAppStatusListener) amy.this.azU.getBroadcastItem(i4);
                        if (iLoadAppStatusListener != null) {
                            if (i3 > i2) {
                                try {
                                    iLoadAppStatusListener.onShowDownloadCount(i3);
                                } catch (RemoteException e) {
                                }
                            } else if (i2 > 0) {
                                iLoadAppStatusListener.onShowWaitDownloadCount(i2);
                            } else if (z) {
                                iLoadAppStatusListener.onShowDot();
                            } else {
                                iLoadAppStatusListener.onShowNormal();
                            }
                        }
                        beginBroadcast = i4;
                    }
                    amy.this.azU.finishBroadcast();
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: hz */
    public void mo4071hz(String str) {
        m10372hA(m4074hR(str));
        super.mo4071hz(str);
    }

    /* renamed from: a */
    private void m10385a(@NonNull AppDownloadRequest appDownloadRequest, boolean z, @NonNull IAppInstallListener iAppInstallListener, IAppDownloadListener iAppDownloadListener) {
        C1232a c1232a = new C1232a();
        c1232a.azX = z;
        c1232a.azY = iAppInstallListener;
        c1232a.azZ = iAppDownloadListener;
        this.azR.put(appDownloadRequest.pkgName, c1232a);
    }

    /* renamed from: b */
    private C1232a m10380b(@NonNull DownloaderTaskInfo downloaderTaskInfo) {
        return this.azR.get(downloaderTaskInfo.m4049KM());
    }

    /* renamed from: hA */
    private void m10372hA(String str) {
        this.azR.remove(str);
    }

    @Override // com.kingroot.kinguser.aoy
    /* renamed from: IE */
    public String mo7986IE() {
        return amy.class.getName();
    }

    /* renamed from: a */
    public void m10388a(IOnWifiAutoDownloadListener iOnWifiAutoDownloadListener) {
        synchronized (this.azT) {
            if (iOnWifiAutoDownloadListener != null) {
                this.azT.unregister(iOnWifiAutoDownloadListener);
            }
        }
    }

    /* renamed from: a */
    public void m10389a(ILoadAppStatusListener iLoadAppStatusListener) {
        synchronized (this.azU) {
            if (iLoadAppStatusListener != null) {
                this.azU.unregister(iLoadAppStatusListener);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.amy$a */
    /* loaded from: classes.dex */
    public static class C1232a {
        boolean azX;
        public IAppInstallListener azY;
        public IAppDownloadListener azZ;

        private C1232a() {
            this.azX = false;
        }
    }

    /* renamed from: IF */
    public void m10394IF() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.amy.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                if (!C3942yy.m1348f((Map) amy.this.azS.m10475HR())) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    C3952zh m1312pq = C3952zh.m1312pq();
                    for (AppDownloadRequest appDownloadRequest : ((ConcurrentHashMap) amy.this.azS.m10475HR()).values()) {
                        switch (appDownloadRequest.appStatus) {
                            case 1:
                            case 2:
                                arrayList.add(appDownloadRequest.appName);
                                break;
                            case 3:
                            case 4:
                                arrayList2.add(appDownloadRequest.appName);
                                break;
                            default:
                                if (apu.m9741h(appDownloadRequest).exists() && (!m1312pq.m1314du(appDownloadRequest.appName) || appDownloadRequest.isUpdate)) {
                                    arrayList3.add(appDownloadRequest.appName);
                                    break;
                                }
                                break;
                        }
                    }
                    if (arrayList.size() > 0) {
                        adm.m12480st().m12511a(arrayList, 1);
                        return;
                    } else if (arrayList2.size() > 0) {
                        adm.m12480st().m12511a(arrayList2, 2);
                        return;
                    } else if (arrayList3.size() > 0) {
                        adm.m12480st().m12511a(arrayList3, 3);
                        return;
                    } else {
                        adm.m12480st().m12484sL();
                        return;
                    }
                }
                adm.m12480st().m12484sL();
            }
        }));
    }

    /* renamed from: b */
    public void m10382b(IOnWifiAutoDownloadListener iOnWifiAutoDownloadListener) {
        synchronized (this.azT) {
            if (iOnWifiAutoDownloadListener != null) {
                this.azT.register(iOnWifiAutoDownloadListener);
            }
        }
    }

    /* renamed from: b */
    public void m10383b(ILoadAppStatusListener iLoadAppStatusListener) {
        synchronized (this.azU) {
            if (iLoadAppStatusListener != null) {
                this.azU.register(iLoadAppStatusListener);
                m10395ID();
            }
        }
    }

    /* renamed from: IG */
    public void m10393IG() {
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.amy.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                for (AppDownloadRequest appDownloadRequest : amy.this.m10396IC()) {
                    if (!TextUtils.isEmpty(appDownloadRequest.pkgName) && (!C3952zh.m1312pq().m1314du(appDownloadRequest.pkgName) || appDownloadRequest.isUpdate)) {
                        if (appDownloadRequest.resumeDownloadTimes < 4) {
                            arrayList.add(appDownloadRequest.pkgName);
                            appDownloadRequest.resumeDownloadTimes++;
                            amz.m10365II().m10359a(appDownloadRequest, 0, null, true, null);
                        }
                    }
                }
                amy.this.azS.m10473HT();
                synchronized (amy.this.azT) {
                    int beginBroadcast = amy.this.azT.beginBroadcast();
                    while (beginBroadcast > 0) {
                        int i = beginBroadcast - 1;
                        try {
                            ((IOnWifiAutoDownloadListener) amy.this.azT.getBroadcastItem(i)).onTriggerWifiAutoDownload(arrayList);
                            beginBroadcast = i;
                        } catch (RemoteException e) {
                            beginBroadcast = i;
                        }
                    }
                    amy.this.azT.finishBroadcast();
                }
            }
        }));
    }
}
