package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.distribution.base.QQPimAppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public class ayu extends aou {
    private static final cce<ayu> sInstance = new cce<ayu>() { // from class: com.kingroot.kinguser.ayu.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Vj */
        public ayu create() {
            return new ayu();
        }
    };
    private static bed bdf = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ayu.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (!C3942yy.m1351d(mo7445nF)) {
                try {
                    AppDownloadTask appDownloadTask = (AppDownloadTask) mo7445nF.get(0);
                    if (appDownloadTask != null) {
                        int i = aiv.m11525yw().m11547a(new File(appDownloadTask.savePath), true).retCode;
                        if (i == 0) {
                            ayw.m7978Vn().m7973g(appDownloadTask);
                            ays.m8006Vf().m8002ke(appDownloadTask.packageName);
                        } else if (i == 1) {
                            ayw.m7978Vn().m7973g(appDownloadTask);
                            ays.m8006Vf().m8000kg(appDownloadTask.packageName);
                            ays.m8006Vf().m7999kh(appDownloadTask.packageName);
                        } else {
                            ays.m8006Vf().m8001kf(appDownloadTask.packageName);
                        }
                    }
                } catch (Exception e) {
                }
            }
        }
    });

    /* renamed from: Vh */
    public static ayu m7989Vh() {
        return sInstance.get();
    }

    private ayu() {
    }

    @Override // com.kingroot.kinguser.aou
    /* renamed from: IK */
    public Class<? extends aov> mo7990IK() {
        return C2033b.class;
    }

    /* renamed from: com.kingroot.kinguser.ayu$b */
    /* loaded from: classes.dex */
    public static class C2033b extends aov {
        @Override // com.kingroot.kinguser.aov
        /* renamed from: IN */
        protected AppDownloadClient mo7983IN() {
            return C2031a.m7985Vk();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ayu$a */
    /* loaded from: classes.dex */
    public static class C2031a extends AppDownloadClient {
        private static final cce<C2031a> sInstance = new cce<C2031a>() { // from class: com.kingroot.kinguser.ayu.a.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: Vl */
            public C2031a create() {
                return new C2031a();
            }
        };

        /* renamed from: Vk */
        public static C2031a m7985Vk() {
            return sInstance.get();
        }

        private C2031a() {
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient
        public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
            String originalUrl = downloaderTaskInfo.getOriginalUrl();
            AppDownloadRequest appDownloadRequest = this.aGA.get(originalUrl);
            if (appDownloadRequest instanceof QQPimAppDownloadRequest) {
                QQPimAppDownloadRequest qQPimAppDownloadRequest = (QQPimAppDownloadRequest) appDownloadRequest;
                AppDownloadTask m7994a = ayt.m7994a(downloaderTaskInfo, qQPimAppDownloadRequest);
                ayw.m7978Vn().m7974f(m7994a);
                ays.m8006Vf().m8003kd(qQPimAppDownloadRequest.pkgName);
                RemoteCallbackList<IAppDownloadListener> remoteCallbackList = this.axV.get(downloaderTaskInfo.m4049KM());
                if (remoteCallbackList != null) {
                    synchronized (this) {
                        int beginBroadcast = remoteCallbackList.beginBroadcast();
                        if (beginBroadcast <= 0) {
                            beg.m7461Zj().m7454a(ayu.bdf, m7994a);
                            return;
                        }
                        while (beginBroadcast > 0) {
                            int i = beginBroadcast - 1;
                            try {
                                remoteCallbackList.getBroadcastItem(i).onComplete(downloaderTaskInfo);
                                beginBroadcast = i;
                            } catch (RemoteException e) {
                                beg.m7461Zj().m7454a(ayu.bdf, m7994a);
                                beginBroadcast = i;
                            }
                        }
                        remoteCallbackList.finishBroadcast();
                    }
                }
                mo4071hz(originalUrl);
            }
        }

        @Override // com.kingroot.kinguser.aoy
        /* renamed from: IE */
        public String mo7986IE() {
            return C2031a.class.getName();
        }
    }
}
