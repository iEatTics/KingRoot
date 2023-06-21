package com.kingroot.kinguser.distribution.net.download;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3740uz;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.aab;
import com.kingroot.kinguser.aiq;
import com.kingroot.kinguser.aox;
import com.kingroot.kinguser.aoy;
import com.kingroot.kinguser.apa;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.bnx;
import com.kingroot.kinguser.bom;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class AppDownloadClient implements aoy {
    private static final String TAG = aiq.arY + "_AppDownloadServiceImp";
    protected final Map<String, RemoteCallbackList<IAppDownloadListener>> axV = Collections.synchronizedMap(new HashMap());
    private RemoteCallbackList<NetworkChangedRemoteListener> aGz = new RemoteCallbackList<>();
    protected final Map<String, AppDownloadRequest> aGA = Collections.synchronizedMap(new HashMap());
    private final Map<String, Set<String>> aGB = Collections.synchronizedMap(new HashMap());
    private final Map<String, String> aGC = Collections.synchronizedMap(new HashMap());
    private final Map<String, String> aGD = Collections.synchronizedMap(new HashMap());
    private final aox.InterfaceC1399a aGE = new aox.InterfaceC1399a() { // from class: com.kingroot.kinguser.distribution.net.download.AppDownloadClient.1
        @Override // com.kingroot.kinguser.aox.InterfaceC1399a
        public void onTurnIntoMobileNetwork() {
            int beginBroadcast = AppDownloadClient.this.aGz.beginBroadcast();
            while (beginBroadcast > 0) {
                int i = beginBroadcast - 1;
                try {
                    ((NetworkChangedRemoteListener) AppDownloadClient.this.aGz.getBroadcastItem(i)).onTurnIntoMobileNetwork();
                    beginBroadcast = i;
                } catch (RemoteException e) {
                    beginBroadcast = i;
                }
            }
            AppDownloadClient.this.aGz.finishBroadcast();
        }
    };
    private final apa.AbstractC1401a aGF = new apa.AbstractC1401a() { // from class: com.kingroot.kinguser.distribution.net.download.AppDownloadClient.2
        @Override // com.kingroot.kinguser.apa.AbstractC1401a
        /* renamed from: g */
        public void mo4064g(bom bomVar) {
            super.mo4064g(bomVar);
            String m4075hQ = AppDownloadClient.this.m4075hQ(bomVar.getUrl());
            AppDownloadClient.this.onFailed(new DownloaderTaskInfo(bomVar, m4075hQ, AppDownloadClient.this.m4074hR(m4075hQ), AppDownloadClient.this.aGA.get(m4075hQ)));
        }

        @Override // com.kingroot.kinguser.apa.AbstractC1401a
        /* renamed from: e */
        public void mo4066e(bom bomVar) {
            super.mo4066e(bomVar);
            String m4075hQ = AppDownloadClient.this.m4075hQ(bomVar.getUrl());
            AppDownloadClient.this.onComplete(new DownloaderTaskInfo(bomVar, m4075hQ, AppDownloadClient.this.m4074hR(m4075hQ), AppDownloadClient.this.aGA.get(m4075hQ)));
        }

        @Override // com.kingroot.kinguser.apa.AbstractC1401a
        /* renamed from: a */
        public void mo4069a(bom bomVar) {
            super.mo4069a(bomVar);
            String m4075hQ = AppDownloadClient.this.m4075hQ(bomVar.getUrl());
            AppDownloadClient.this.onStartDownload(new DownloaderTaskInfo(bomVar, m4075hQ, AppDownloadClient.this.m4074hR(m4075hQ), AppDownloadClient.this.aGA.get(m4075hQ)));
        }

        @Override // com.kingroot.kinguser.apa.AbstractC1401a
        /* renamed from: d */
        public void mo4067d(bom bomVar) {
            super.mo4067d(bomVar);
            String m4075hQ = AppDownloadClient.this.m4075hQ(bomVar.getUrl());
            DownloaderTaskInfo downloaderTaskInfo = new DownloaderTaskInfo(bomVar, m4075hQ, AppDownloadClient.this.m4074hR(m4075hQ), AppDownloadClient.this.aGA.get(m4075hQ));
            AppDownloadClient.this.onProgress(downloaderTaskInfo.m4050KL(), downloaderTaskInfo);
        }

        @Override // com.kingroot.kinguser.apa.AbstractC1401a
        /* renamed from: b */
        public void mo4068b(bom bomVar) {
            super.mo4068b(bomVar);
            String m4075hQ = AppDownloadClient.this.m4075hQ(bomVar.getUrl());
            AppDownloadClient.this.onPending(new DownloaderTaskInfo(bomVar, m4075hQ, AppDownloadClient.this.m4074hR(m4075hQ), AppDownloadClient.this.aGA.get(m4075hQ)));
        }

        @Override // com.kingroot.kinguser.apa.AbstractC1401a
        /* renamed from: f */
        public void mo4065f(bom bomVar) {
            super.mo4065f(bomVar);
            String m4075hQ = AppDownloadClient.this.m4075hQ(bomVar.getUrl());
            AppDownloadClient.this.onPaused(new DownloaderTaskInfo(bomVar, m4075hQ, AppDownloadClient.this.m4074hR(m4075hQ), AppDownloadClient.this.aGA.get(m4075hQ)));
        }
    };

    public AppDownloadClient() {
        aox.m9872KC().m9869a(this.aGE);
    }

    /* renamed from: a */
    public void mo4092a(@NonNull final AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener) {
        if (appDownloadRequest != null && !TextUtils.isEmpty(appDownloadRequest.apkUrl)) {
            if (iAppDownloadListener != null) {
                RemoteCallbackList<IAppDownloadListener> remoteCallbackList = this.axV.get(appDownloadRequest.pkgName);
                if (remoteCallbackList == null) {
                    remoteCallbackList = new RemoteCallbackList<>();
                    this.axV.put(appDownloadRequest.pkgName, remoteCallbackList);
                }
                remoteCallbackList.register(iAppDownloadListener);
            }
            this.aGC.put(appDownloadRequest.apkUrl, appDownloadRequest.pkgName);
            this.aGD.put(appDownloadRequest.pkgName, appDownloadRequest.apkUrl);
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.net.download.AppDownloadClient.3
                @Override // java.lang.Runnable
                public void run() {
                    C3740uz.m1926a(KApplication.m13453ge(), appDownloadRequest.apkUrl, new C3740uz.InterfaceC3745c() { // from class: com.kingroot.kinguser.distribution.net.download.AppDownloadClient.3.1
                        @Override // com.kingroot.kinguser.C3740uz.InterfaceC3745c
                        /* renamed from: db */
                        public void mo1923db(@NonNull String str) {
                            Set set = (Set) AppDownloadClient.this.aGB.get(appDownloadRequest.apkUrl);
                            if (set == null) {
                                set = new HashSet();
                            }
                            set.add(str);
                            AppDownloadClient.this.aGB.put(appDownloadRequest.apkUrl, set);
                            AppDownloadClient.this.m4086a(str, appDownloadRequest, AppDownloadClient.this.mo7986IE());
                        }
                    });
                }
            });
            this.aGA.put(appDownloadRequest.apkUrl, appDownloadRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4086a(String str, @NonNull AppDownloadRequest appDownloadRequest, String str2) {
        apa.C1402b c1402b = new apa.C1402b();
        c1402b.url = str;
        c1402b.aHa = apu.m9748LM();
        c1402b.aGZ = apu.m9740i(appDownloadRequest);
        c1402b.tag = str2;
        aox.m9872KC().mo9865a(c1402b, this.aGF);
    }

    /* renamed from: a */
    public void m4087a(@Nullable NetworkChangedRemoteListener networkChangedRemoteListener) {
        if (networkChangedRemoteListener != null) {
            this.aGz.register(networkChangedRemoteListener);
        }
    }

    /* renamed from: b */
    public void m4083b(@NonNull NetworkChangedRemoteListener networkChangedRemoteListener) {
        if (networkChangedRemoteListener != null) {
            this.aGz.unregister(networkChangedRemoteListener);
        }
    }

    /* renamed from: hK */
    public void m4081hK(@NonNull String str) {
        if (str != null) {
            for (String str2 : m4076hP(m4077hO(str))) {
                aox.m9872KC().m9858hK(str2);
            }
        }
    }

    /* renamed from: hO */
    protected String m4077hO(@NonNull String str) {
        return aab.m13016dH(this.aGD.get(str));
    }

    /* renamed from: KA */
    public void m4098KA() {
        aox.m9872KC().m9853k(aox.m9872KC().m9855hY(mo7986IE()));
    }

    /* renamed from: hL */
    public void m4080hL(String str) {
        if (str != null) {
            for (String str2 : m4076hP(m4077hO(str))) {
                try {
                    aox.m9872KC().m9857hL(str2);
                } catch (bnx e) {
                }
            }
        }
    }

    /* renamed from: hP */
    private Set<String> m4076hP(String str) {
        if (TextUtils.isEmpty(str)) {
            return Collections.emptySet();
        }
        Set<String> set = this.aGB.get(str);
        if (C3942yy.m1351d(set)) {
            HashSet hashSet = new HashSet();
            hashSet.add(str);
            return hashSet;
        }
        return set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hQ */
    public String m4075hQ(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        for (Map.Entry entry : C3942yy.m1350e(this.aGB.entrySet())) {
            if (((Set) entry.getValue()).contains(str)) {
                return (String) entry.getKey();
            }
        }
        return str;
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: hM */
    public DownloaderTaskInfo mo4079hM(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (String str2 : m4076hP(m4077hO(str))) {
            bom hX = aox.m9872KC().m9856hX(str2);
            if (hX != null) {
                String m4075hQ = m4075hQ(str2);
                return new DownloaderTaskInfo(hX, m4075hQ, str, this.aGA.get(m4075hQ));
            }
        }
        return null;
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: hN */
    public DownloaderTaskInfo mo4078hN(String str) {
        bom hZ;
        if (TextUtils.isEmpty(str) || (hZ = aox.m9872KC().m9854hZ(str)) == null) {
            return null;
        }
        String m4075hQ = m4075hQ(hZ.getUrl());
        return new DownloaderTaskInfo(hZ, m4075hQ, m4074hR(m4075hQ), this.aGA.get(m4075hQ));
    }

    /* renamed from: a */
    public void m4085a(@NonNull String str, @NonNull IAppDownloadListener iAppDownloadListener) {
        if (!TextUtils.isEmpty(str) && iAppDownloadListener != null) {
            RemoteCallbackList<IAppDownloadListener> remoteCallbackList = this.axV.get(str);
            if (remoteCallbackList == null) {
                remoteCallbackList = new RemoteCallbackList<>();
                this.axV.put(str, remoteCallbackList);
            }
            remoteCallbackList.register(iAppDownloadListener);
        }
    }

    /* renamed from: a */
    public void m4088a(@NonNull IAppDownloadListener iAppDownloadListener) {
        if (iAppDownloadListener != null) {
            for (String str : this.axV.keySet()) {
                RemoteCallbackList<IAppDownloadListener> remoteCallbackList = this.axV.get(str);
                if (remoteCallbackList != null) {
                    remoteCallbackList.unregister(iAppDownloadListener);
                }
            }
        }
    }

    /* renamed from: a */
    public void m4090a(@NonNull DownloaderTaskInfo downloaderTaskInfo, @NonNull IAppDownloadListener iAppDownloadListener) {
        if (downloaderTaskInfo != null) {
            m4085a(m4074hR(downloaderTaskInfo.getOriginalUrl()), iAppDownloadListener);
        }
    }

    /* renamed from: a */
    public void mo4091a(DownloaderTaskInfo downloaderTaskInfo) {
        mo4089a(downloaderTaskInfo, false);
    }

    /* renamed from: a */
    public void mo4089a(DownloaderTaskInfo downloaderTaskInfo, boolean z) {
        if (downloaderTaskInfo != null) {
            aox.m9872KC().m9852z(downloaderTaskInfo.getUrl(), z);
            mo4071hz(downloaderTaskInfo.getOriginalUrl());
            onRemove(downloaderTaskInfo);
            m4082c(downloaderTaskInfo);
        }
    }

    /* renamed from: c */
    private void m4082c(DownloaderTaskInfo downloaderTaskInfo) {
        if (downloaderTaskInfo != null) {
            this.aGD.remove(aab.m13016dH(this.aGC.get(downloaderTaskInfo.getOriginalUrl())));
            this.aGC.remove(aab.m13016dH(downloaderTaskInfo.getOriginalUrl()));
        }
    }

    /* renamed from: hx */
    public void mo4072hx(@NonNull String str) {
        mo4070z(str, false);
    }

    /* renamed from: z */
    public void mo4070z(@NonNull String str, boolean z) {
        String m4077hO = m4077hO(str);
        if (str != null) {
            for (String str2 : m4076hP(m4077hO)) {
                bom hX = aox.m9872KC().m9856hX(str2);
                aox.m9872KC().m9852z(str2, z);
                if (hX != null) {
                    onRemove(new DownloaderTaskInfo(hX, m4077hO, str, this.aGA.get(m4077hO)));
                }
            }
        }
        mo4071hz(m4077hO);
        m4082c(mo4079hM(str));
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: Ky */
    public List<DownloaderTaskInfo> mo4097Ky() {
        ArrayList arrayList = new ArrayList();
        for (bom bomVar : aox.m9872KC().m9855hY(mo7986IE())) {
            String m4075hQ = m4075hQ(bomVar.getUrl());
            arrayList.add(new DownloaderTaskInfo(bomVar, m4075hQ, m4074hR(m4075hQ), this.aGA.get(m4075hQ)));
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: Kz */
    public List<DownloaderTaskInfo> mo4096Kz() {
        ArrayList arrayList = new ArrayList();
        for (bom bomVar : aox.m9872KC().m9868KP()) {
            String m4075hQ = m4075hQ(bomVar.getUrl());
            arrayList.add(new DownloaderTaskInfo(bomVar, m4075hQ, m4074hR(m4075hQ), this.aGA.get(m4075hQ)));
        }
        return arrayList;
    }

    /* renamed from: hz */
    public void mo4071hz(String str) {
        this.axV.remove(m4074hR(str));
        this.aGA.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: hR */
    public String m4074hR(String str) {
        return TextUtils.isEmpty(str) ? "" : this.aGC.get(str);
    }

    public void onRemove(DownloaderTaskInfo downloaderTaskInfo) {
        RemoteCallbackList<IAppDownloadListener> m4073hS;
        if (downloaderTaskInfo != null && (m4073hS = m4073hS(downloaderTaskInfo.getOriginalUrl())) != null) {
            synchronized (this.axV) {
                int beginBroadcast = m4073hS.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        m4073hS.getBroadcastItem(i).onRemove(downloaderTaskInfo);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                m4073hS.finishBroadcast();
            }
        }
    }

    public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
        RemoteCallbackList<IAppDownloadListener> m4073hS = m4073hS(downloaderTaskInfo.getOriginalUrl());
        if (m4073hS != null) {
            synchronized (this.axV) {
                int beginBroadcast = m4073hS.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i2 = beginBroadcast - 1;
                    try {
                        m4073hS.getBroadcastItem(i2).onProgress(downloaderTaskInfo.m4050KL(), downloaderTaskInfo);
                        beginBroadcast = i2;
                    } catch (RemoteException e) {
                        beginBroadcast = i2;
                    }
                }
                m4073hS.finishBroadcast();
            }
        }
    }

    public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
        RemoteCallbackList<IAppDownloadListener> m4073hS = m4073hS(downloaderTaskInfo.getOriginalUrl());
        if (m4073hS != null) {
            synchronized (this.axV) {
                int beginBroadcast = m4073hS.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        m4073hS.getBroadcastItem(i).onStartDownload(downloaderTaskInfo);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                m4073hS.finishBroadcast();
            }
        }
    }

    public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
        RemoteCallbackList<IAppDownloadListener> m4073hS = m4073hS(downloaderTaskInfo.getOriginalUrl());
        if (m4073hS != null) {
            synchronized (this.axV) {
                int beginBroadcast = m4073hS.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        m4073hS.getBroadcastItem(i).onComplete(downloaderTaskInfo);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                m4073hS.finishBroadcast();
            }
            mo4071hz(downloaderTaskInfo.getOriginalUrl());
        }
    }

    public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
        RemoteCallbackList<IAppDownloadListener> m4073hS = m4073hS(downloaderTaskInfo.getOriginalUrl());
        if (m4073hS != null) {
            synchronized (this.axV) {
                int beginBroadcast = m4073hS.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        m4073hS.getBroadcastItem(i).onFailed(downloaderTaskInfo);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                m4073hS.finishBroadcast();
            }
            mo4071hz(downloaderTaskInfo.getOriginalUrl());
        }
    }

    public void onPaused(DownloaderTaskInfo downloaderTaskInfo) {
        RemoteCallbackList<IAppDownloadListener> m4073hS = m4073hS(downloaderTaskInfo.getOriginalUrl());
        if (m4073hS != null) {
            synchronized (this.axV) {
                int beginBroadcast = m4073hS.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        m4073hS.getBroadcastItem(i).onPaused(downloaderTaskInfo);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                m4073hS.finishBroadcast();
            }
        }
    }

    public void onPending(DownloaderTaskInfo downloaderTaskInfo) {
        RemoteCallbackList<IAppDownloadListener> m4073hS = m4073hS(downloaderTaskInfo.getOriginalUrl());
        if (m4073hS != null) {
            synchronized (this.axV) {
                int beginBroadcast = m4073hS.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        m4073hS.getBroadcastItem(i).onPending(downloaderTaskInfo);
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                m4073hS.finishBroadcast();
            }
        }
    }

    /* renamed from: hS */
    private RemoteCallbackList<IAppDownloadListener> m4073hS(String str) {
        String m4074hR = m4074hR(str);
        if (TextUtils.isEmpty(m4074hR)) {
            return null;
        }
        return this.axV.get(m4074hR);
    }

    /* loaded from: classes.dex */
    public static class AppDownloadListenerAdapter extends IAppDownloadListener.Stub {
        public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
        }

        public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
        }

        public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
        }

        public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
        }

        public void onPaused(DownloaderTaskInfo downloaderTaskInfo) {
        }

        public void onPending(DownloaderTaskInfo downloaderTaskInfo) {
        }

        public void onRemove(DownloaderTaskInfo downloaderTaskInfo) {
        }
    }
}
