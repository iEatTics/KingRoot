package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ana;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ath extends AppDownloadClient {
    private static final cce<ath> sInstance = new cce<ath>() { // from class: com.kingroot.kinguser.ath.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Pa */
        public ath create() {
            return new ath();
        }
    };
    private Map<String, AppDownloadRequest> aNO;
    private Map<String, C1521a> aNP;

    /* renamed from: OZ */
    public static ath m9287OZ() {
        return sInstance.get();
    }

    private ath() {
        this.aNO = Collections.synchronizedMap(new HashMap());
        this.aNP = Collections.synchronizedMap(new HashMap());
    }

    /* renamed from: d */
    private void m9283d(final DownloaderTaskInfo downloaderTaskInfo) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.ath.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                AppDownloadRequest appDownloadRequest = (AppDownloadRequest) ath.this.aNO.get(downloaderTaskInfo.getOriginalUrl());
                if (appDownloadRequest != null) {
                    ady.m12308tK().m12316eL(appDownloadRequest.pkgName);
                }
                ath.this.aNO.remove(downloaderTaskInfo.getOriginalUrl());
            }
        }));
    }

    /* renamed from: a */
    public void m9285a(@NonNull AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener, boolean z, @NonNull IAppInstallListener iAppInstallListener) {
        m9284a(appDownloadRequest, z, iAppInstallListener);
        mo4092a(appDownloadRequest, i, iAppDownloadListener);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: a */
    public void mo4092a(@NonNull AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener) {
        m9280m(appDownloadRequest);
        super.mo4092a(appDownloadRequest, i, iAppDownloadListener);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            AppDownloadRequest appDownloadRequest = this.aNO.get(downloaderTaskInfo.getOriginalUrl());
            if (appDownloadRequest != null && appDownloadRequest.reportInfo != null) {
                ana.m10352IO().mo10331a(appDownloadRequest.reportInfo, 0);
            }
            this.aNO.remove(downloaderTaskInfo.getOriginalUrl());
        }
        super.onFailed(downloaderTaskInfo);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: a */
    public void mo4091a(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            this.aNO.remove(downloaderTaskInfo.getOriginalUrl());
        }
        super.mo4091a(downloaderTaskInfo);
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            final AppDownloadRequest appDownloadRequest = this.aNO.get(downloaderTaskInfo.getOriginalUrl());
            if (appDownloadRequest != null) {
                ana.m10352IO().mo10331a(appDownloadRequest.reportInfo, 1);
                C1521a m9282e = m9282e(downloaderTaskInfo);
                if (m9282e != null && m9282e.azX) {
                    aso.m9417Ol().mo9329a(appDownloadRequest.pkgName, new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.gamebox.download.GameBoxDownloadMgrClient$3
                        @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
                        public void onState(String str, int i, String str2) {
                            if (i == 3) {
                                ana.m10352IO().mo10331a(appDownloadRequest.reportInfo, 20);
                            } else if (i == 10) {
                                ana.m10352IO().mo10331a(appDownloadRequest.reportInfo, 30);
                                ady.m12308tK().m12318eJ("pkgName");
                            }
                        }
                    });
                    aso.m9417Ol().mo9331a(new ApkInstallRequest(downloaderTaskInfo.m4053KI(), appDownloadRequest.pkgName, appDownloadRequest.apkMd5), m9282e.aNQ);
                }
            }
            m9283d(downloaderTaskInfo);
        }
        super.onComplete(downloaderTaskInfo);
    }

    /* renamed from: m */
    private void m9280m(AppDownloadRequest appDownloadRequest) {
        if (appDownloadRequest != null) {
            String str = appDownloadRequest.apkUrl;
            if (!TextUtils.isEmpty(str) && !this.aNO.containsKey(str)) {
                this.aNO.put(str, appDownloadRequest);
            }
            if (appDownloadRequest.reportInfo != null) {
                ana.m10352IO().mo10331a(appDownloadRequest.reportInfo, 10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
    /* renamed from: hz */
    public void mo4071hz(String str) {
        super.mo4071hz(str);
        m9281hA(str);
    }

    /* renamed from: a */
    private void m9284a(@NonNull AppDownloadRequest appDownloadRequest, boolean z, @NonNull IAppInstallListener iAppInstallListener) {
        C1521a c1521a = new C1521a();
        c1521a.azX = z;
        c1521a.aNQ = iAppInstallListener;
        this.aNP.put(appDownloadRequest.apkUrl, c1521a);
    }

    /* renamed from: e */
    private C1521a m9282e(@NonNull DownloaderTaskInfo downloaderTaskInfo) {
        return this.aNP.get(downloaderTaskInfo.getOriginalUrl());
    }

    /* renamed from: hA */
    private void m9281hA(String str) {
        this.aNP.remove(str);
    }

    @Override // com.kingroot.kinguser.aoy
    /* renamed from: IE */
    public String mo7986IE() {
        return ath.class.getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ath$a */
    /* loaded from: classes.dex */
    public static class C1521a {
        IAppInstallListener aNQ;
        boolean azX;

        private C1521a() {
            this.azX = false;
        }
    }
}
