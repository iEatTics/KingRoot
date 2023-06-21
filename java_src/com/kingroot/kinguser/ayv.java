package com.kingroot.kinguser;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.aye;
import com.kingroot.kinguser.ayt;
import com.kingroot.kinguser.ayv;
import com.kingroot.kinguser.azo;
import com.kingroot.kinguser.azp;
import com.kingroot.kinguser.azq;
import com.kingroot.kinguser.azr;
import com.kingroot.kinguser.azs;
import com.kingroot.kinguser.azt;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.plugin.qqpim.protocol.shark.ISharkCallback;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.common.protocol.AbsProtocol;
import com.kingroot.loader.common.protocol.BaseProtocol;
import com.kingroot.loader.common.protocol.SerializableParcel;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
import com.kingroot.loader.sdk.service.IKlNotificationManager;
import com.p019qq.taf.jce.JceStruct;
import com.tencent.qqpimsdk.qqloginaar.QQLogin;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class ayv implements ayf {
    private static final String TAG = aiq.ash + "_QQPimPort";
    private final HashSet<String> bdg = new HashSet<>(3);
    private AppDownloadClient.AppDownloadListenerAdapter awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.plugin.qqpim.QQPimPort$2
        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
            HashSet hashSet;
            super.onProgress(i, downloaderTaskInfo);
            hashSet = ayv.this.bdg;
            if (hashSet.contains(downloaderTaskInfo.getOriginalUrl())) {
                final azs azsVar = new azs();
                azsVar.bdz = ayt.m7991f(downloaderTaskInfo);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.plugin.qqpim.QQPimPort$2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(ayv.this.getPluginId(), azsVar.transferToBundle());
                    }
                });
            }
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
            HashSet hashSet;
            super.onStartDownload(downloaderTaskInfo);
            hashSet = ayv.this.bdg;
            if (hashSet.contains(downloaderTaskInfo.getOriginalUrl())) {
                final azt aztVar = new azt();
                aztVar.bdz = ayt.m7991f(downloaderTaskInfo);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.plugin.qqpim.QQPimPort$2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(ayv.this.getPluginId(), aztVar.transferToBundle());
                    }
                });
            }
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
            HashSet hashSet;
            super.onComplete(downloaderTaskInfo);
            hashSet = ayv.this.bdg;
            if (hashSet.contains(downloaderTaskInfo.getOriginalUrl())) {
                final azo azoVar = new azo();
                azoVar.bdz = ayt.m7991f(downloaderTaskInfo);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.plugin.qqpim.QQPimPort$2.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(ayv.this.getPluginId(), azoVar.transferToBundle());
                    }
                });
            }
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
            HashSet hashSet;
            super.onFailed(downloaderTaskInfo);
            hashSet = ayv.this.bdg;
            if (hashSet.contains(downloaderTaskInfo.getOriginalUrl())) {
                final azp azpVar = new azp();
                azpVar.bdz = ayt.m7991f(downloaderTaskInfo);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.plugin.qqpim.QQPimPort$2.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(ayv.this.getPluginId(), azpVar.transferToBundle());
                    }
                });
            }
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onPaused(DownloaderTaskInfo downloaderTaskInfo) {
            HashSet hashSet;
            super.onPaused(downloaderTaskInfo);
            hashSet = ayv.this.bdg;
            if (hashSet.contains(downloaderTaskInfo.getOriginalUrl())) {
                final azq azqVar = new azq();
                azqVar.bdz = ayt.m7991f(downloaderTaskInfo);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.plugin.qqpim.QQPimPort$2.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(ayv.this.getPluginId(), azqVar.transferToBundle());
                    }
                });
                aye.m8028UP().mo1746bi(265206);
            }
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onPending(DownloaderTaskInfo downloaderTaskInfo) {
            HashSet hashSet;
            super.onPending(downloaderTaskInfo);
            hashSet = ayv.this.bdg;
            if (hashSet.contains(downloaderTaskInfo.getOriginalUrl())) {
                final azr azrVar = new azr();
                azrVar.bdz = ayt.m7991f(downloaderTaskInfo);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.plugin.qqpim.QQPimPort$2.6
                    @Override // java.lang.Runnable
                    public void run() {
                        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(ayv.this.getPluginId(), azrVar.transferToBundle());
                    }
                });
            }
        }
    };

    @Override // com.kingroot.kinguser.ayf
    public int getPluginId() {
        return 5004;
    }

    @Override // com.kingroot.kinguser.ayf
    /* renamed from: a */
    public Bundle mo7981a(Bundle bundle, boolean z) {
        int i;
        C3637tk m2167cS;
        switch (AbsProtocol.getCmdId(bundle)) {
            case 1:
                azx azxVar = new azx();
                if (azxVar.readFromBundle(bundle)) {
                    final ISharkCallback asInterface = azxVar.bdH == null ? null : ISharkCallback.Stub.asInterface(azxVar.bdH);
                    awn.m8629Ta().m8628a(azxVar.bcU, azxVar.bcV, azxVar.bcW, new cat() { // from class: com.kingroot.kinguser.ayv.1
                        @Override // com.kingroot.kinguser.cat
                        /* renamed from: a */
                        public void mo2689a(int i2, int i3, int i4, int i5, JceStruct jceStruct) {
                            if (asInterface != null) {
                                try {
                                    asInterface.onFinish(i2, i3, i4, i5, SerializableParcel.obtain(jceStruct));
                                } catch (RemoteException e) {
                                }
                            }
                        }
                    });
                    return null;
                }
                return null;
            case 2:
                azw azwVar = new azw();
                if (azwVar.readFromBundle(bundle)) {
                    try {
                        azwVar.bcT = C3736ux.m1945kT().getSharkGuid();
                    } catch (abn e) {
                        azwVar.bcT = "";
                    }
                    return azwVar.transferToBundle();
                }
                return null;
            case 3:
                bac bacVar = new bac();
                if (bacVar.readFromBundle(bundle)) {
                    aye.m8028UP().mo1746bi(bacVar.bdc);
                    return null;
                }
                return null;
            case 4:
                bad badVar = new bad();
                if (badVar.readFromBundle(bundle)) {
                    akw.m10690Gx().m10684i(badVar.bdd);
                    return null;
                }
                return null;
            case 5:
                azd azdVar = new azd();
                if (azdVar.readFromBundle(bundle)) {
                    int i2 = aiv.m11525yw().m11547a(new File(azdVar.bdt), azdVar.bdu).retCode;
                    if (i2 == 0) {
                        azdVar.bdv = 0;
                    } else if (i2 == 1) {
                        azdVar.bdv = 1;
                    } else if (i2 == -1) {
                        azdVar.bdv = -1;
                    } else if (i2 == -2) {
                        azdVar.bdv = -2;
                    } else {
                        azdVar.bdv = -3;
                    }
                    return azdVar.transferToBundle();
                }
                return null;
            case 6:
                aze azeVar = new aze();
                if (!azeVar.readFromBundle(bundle) || (m2167cS = C3637tk.m2167cS("syncHelper install service")) == null) {
                    return null;
                }
                m2167cS.m2161s(azeVar.bdw * 1000);
                return null;
            case 7:
                ayy ayyVar = new ayy();
                if (ayyVar.readFromBundle(bundle)) {
                    List<DownloaderTaskInfo> Ky = ayu.m7989Vh().mo4097Ky();
                    ayyVar.bdq = new ArrayList<>();
                    for (DownloaderTaskInfo downloaderTaskInfo : C3942yy.m1350e(Ky)) {
                        ayyVar.bdq.add(ayt.m7991f(downloaderTaskInfo));
                    }
                    return ayyVar.transferToBundle();
                }
                return null;
            case 8:
                ayx ayxVar = new ayx();
                if (ayxVar.readFromBundle(bundle)) {
                    this.bdg.add(ayxVar.bdp.orignalUrl);
                    ayu.m7989Vh().m9884a(ayt.m7996a(ayxVar.bdp), 1, this.awu);
                    return null;
                }
                return null;
            case 9:
                aza azaVar = new aza();
                if (azaVar.readFromBundle(bundle)) {
                    ayu.m7989Vh().m9877hK(azaVar.bdr.packageName);
                    return null;
                }
                return null;
            case 10:
                azc azcVar = new azc();
                if (azcVar.readFromBundle(bundle)) {
                    ayu.m7989Vh().m9876hL(azcVar.bdr.packageName);
                    return null;
                }
                return null;
            case 11:
                azb azbVar = new azb();
                if (azbVar.readFromBundle(bundle)) {
                    ayu.m7989Vh().m9883a(ayt.m7993b(azbVar.bdr));
                    m7979c(azbVar.bdr);
                    return null;
                }
                return null;
            case 12:
                ayz ayzVar = new ayz();
                if (ayzVar.readFromBundle(bundle)) {
                    ayzVar.bds = apu.m9740i(ayt.m7996a(ayzVar.bdr));
                    return ayzVar.transferToBundle();
                }
                return null;
            case 13:
                azv azvVar = new azv();
                if (!azvVar.readFromBundle(bundle) || (i = azvVar.bdA) < 501 || i > 510) {
                    return null;
                }
                IKlNotificationManager iKlNotificationManager = (IKlNotificationManager) KlServiceManager.getKService(IKlNotificationManager.class);
                if (azvVar.bdE != null) {
                    adm.m12480st().m12524a(i + 501, (CharSequence) azvVar.bdB, (CharSequence) azvVar.bdC, (CharSequence) azvVar.bdD, (CharSequence) azvVar.bdF, iKlNotificationManager.wrapKlFragmentIntent(5004, azvVar.bdE, 0), false, azvVar.bdG);
                    return null;
                }
                return null;
            case 14:
                azu azuVar = new azu();
                if (azuVar.readFromBundle(bundle)) {
                    adm.m12480st().m12501cy(azuVar.bdA + 501);
                    return null;
                }
                return null;
            case 15:
                baa baaVar = new baa();
                if (baaVar.readFromBundle(bundle)) {
                    ayw.m7978Vn().m7976d(baaVar.bdz);
                    return null;
                }
                return null;
            case 16:
                azy azyVar = new azy();
                if (azyVar.readFromBundle(bundle)) {
                    ayw.m7978Vn().m7975e(azyVar.bdz);
                    return null;
                }
                return null;
            case 17:
                azz azzVar = new azz();
                if (azzVar.readFromBundle(bundle)) {
                    ayw.m7978Vn().m7974f(azzVar.bdz);
                    return null;
                }
                return null;
            case 18:
                bab babVar = new bab();
                if (babVar.readFromBundle(bundle)) {
                    ayw.m7978Vn().m7973g(babVar.bdz);
                    return null;
                }
                return null;
            case 19:
                azi aziVar = new azi();
                if (aziVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m8005kb(aziVar.bdx);
                    return null;
                }
                return null;
            case 20:
                azf azfVar = new azf();
                if (azfVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m8004kc(azfVar.bdx);
                    return null;
                }
                return null;
            case 21:
                azg azgVar = new azg();
                if (azgVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m8003kd(azgVar.bdx);
                    return null;
                }
                return null;
            case 22:
                azk azkVar = new azk();
                if (azkVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m8002ke(azkVar.bdx);
                    return null;
                }
                return null;
            case 23:
                azj azjVar = new azj();
                if (azjVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m8001kf(azjVar.bdx);
                    return null;
                }
                return null;
            case 24:
                azh azhVar = new azh();
                if (azhVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m8007J(azhVar.bdx, azhVar.bdy);
                    return null;
                }
                return null;
            case 25:
                azm azmVar = new azm();
                if (azmVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m8000kg(azmVar.bdx);
                    return null;
                }
                return null;
            case 26:
                azn aznVar = new azn();
                if (aznVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m7999kh(aznVar.bdx);
                    return null;
                }
                return null;
            case 27:
                azl azlVar = new azl();
                if (azlVar.readFromBundle(bundle)) {
                    ays.m8006Vf().m7998ki(azlVar.bdx);
                    return null;
                }
                return null;
            case 1000:
                Activity m6572vt = bkd.m6572vt();
                if (m6572vt != null) {
                    new QQLogin().login(m6572vt);
                    return null;
                }
                return null;
            default:
                return null;
        }
    }

    /* renamed from: c */
    private void m7979c(AppDownloadTask appDownloadTask) {
        this.bdg.remove(appDownloadTask.orignalUrl);
    }

    /* renamed from: Vm */
    public static boolean m7982Vm() {
        IKlApplicationManager iKlApplicationManager = (IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class);
        if (iKlApplicationManager.getRunningPluginApplication(5004) == null && !iKlApplicationManager.launchPlugin(5004)) {
            throw new ayi(5004, 0);
        }
        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(5004, new BaseProtocol(35).transferToBundle());
        return true;
    }
}
