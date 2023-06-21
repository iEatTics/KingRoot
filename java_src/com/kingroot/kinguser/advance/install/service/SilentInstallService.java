package com.kingroot.kinguser.advance.install.service;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.kingroot.kinguser.C3636tj;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.advance.install.aidl.CheckResult;
import com.kingroot.kinguser.advance.install.aidl.ISilentInstallManager;
import com.kingroot.kinguser.advance.install.aidl.SilentInstallRequest;
import com.kingroot.kinguser.advance.install.p014ui.SilentInstallDialogActivity;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.advance.model.SilentInstallPermInfo;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.agx;
import com.kingroot.kinguser.agy;
import com.kingroot.kinguser.ahc;
import com.kingroot.kinguser.akh;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.awe;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class SilentInstallService extends Service {
    private HandlerC0737a anB;
    private final String TAG = "commonsilent_install_service";

    /* renamed from: Hf */
    private IBinder f1397Hf = new ISilentInstallManager.Stub() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.1
        @Override // com.kingroot.kinguser.advance.install.aidl.ISilentInstallManager
        public void check(SilentInstallRequest silentInstallRequest) {
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = silentInstallRequest;
            SilentInstallService.this.anB.sendMessage(obtain);
        }
    };

    /* renamed from: com.kingroot.kinguser.advance.install.service.SilentInstallService$a */
    /* loaded from: classes.dex */
    class HandlerC0737a extends Handler {
        public HandlerC0737a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v10, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v11, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v12, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v13, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v14, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v15, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v16, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v17, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v18, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v19, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v20 */
        /* JADX WARN: Type inference failed for: r1v21 */
        /* JADX WARN: Type inference failed for: r1v6, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r1v8, types: [com.kingroot.kinguser.advance.model.SilentInstallLogInfo] */
        /* JADX WARN: Type inference failed for: r1v9, types: [com.kingroot.kinguser.beg] */
        /* JADX WARN: Type inference failed for: r2v0, types: [com.kingroot.kinguser.advance.install.aidl.CheckResult] */
        /* JADX WARN: Type inference failed for: r2v1 */
        /* JADX WARN: Type inference failed for: r2v10, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v11, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v12, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v13, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v14, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v15, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v16, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v17, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v18, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v6, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v8, types: [com.kingroot.kinguser.bed] */
        /* JADX WARN: Type inference failed for: r2v9, types: [com.kingroot.kinguser.bed] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            SilentInstallLogInfo silentInstallLogInfo;
            CheckResult checkResult;
            int i;
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    SilentInstallRequest silentInstallRequest = (SilentInstallRequest) message.obj;
                    ?? checkResult2 = new CheckResult(0);
                    SilentInstallLogInfo silentInstallLogInfo2 = null;
                    silentInstallLogInfo2 = 0;
                    silentInstallLogInfo2 = 0;
                    try {
                        try {
                            if (!aks.m11143BP().m10948Fc() || !aks.m11143BP().m10932Fs()) {
                                checkResult2.anb = 2;
                                silentInstallRequest.m12443a(checkResult2);
                                if (silentInstallLogInfo2 != null) {
                                    if (i != r6) {
                                        break;
                                    }
                                }
                            } else {
                                silentInstallLogInfo2 = agx.m11885a(silentInstallRequest);
                                try {
                                    if (SilentInstallService.this.m12436fK(silentInstallLogInfo2.anE) || SilentInstallService.this.m12436fK(silentInstallLogInfo2.anH)) {
                                        checkResult2.anb = 2;
                                        silentInstallRequest.m12443a(checkResult2);
                                        if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                            final ahc m11836d = ahc.m11836d(silentInstallLogInfo2);
                                            silentInstallLogInfo2 = beg.m7461Zj();
                                            checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                public void run() {
                                                    super.run();
                                                    ady.m12308tK().m12331a(m11836d);
                                                }
                                            });
                                            silentInstallLogInfo2.m7450c(checkResult2);
                                        }
                                    } else if (!C3953zi.m1311pr().getString(R.string.silent_install_unknown_app).equals(silentInstallLogInfo2.apJ) || !C3953zi.m1311pr().getString(R.string.silent_install_unknown_app).equals(silentInstallLogInfo2.apK)) {
                                        if (awe.m8677SI().m8672aB(silentInstallLogInfo2.anH, silentInstallLogInfo2.apL) != 5) {
                                            SilentInstallPermInfo m11869fG = agy.m11867wk().m11869fG(silentInstallLogInfo2.anE);
                                            if (m11869fG != null) {
                                                switch (m11869fG.mRule) {
                                                    case 0:
                                                        checkResult2.anb = 1;
                                                        silentInstallRequest.m12443a(checkResult2);
                                                        silentInstallLogInfo2.mState = 0;
                                                        agy.m11867wk().m11876a((SilentInstallLogInfo) silentInstallLogInfo2);
                                                        if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                            final ahc m11836d2 = ahc.m11836d(silentInstallLogInfo2);
                                                            silentInstallLogInfo2 = beg.m7461Zj();
                                                            checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                                public void run() {
                                                                    super.run();
                                                                    ady.m12308tK().m12331a(m11836d2);
                                                                }
                                                            });
                                                            silentInstallLogInfo2.m7450c(checkResult2);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        checkResult2.anb = 2;
                                                        silentInstallRequest.m12443a(checkResult2);
                                                        silentInstallLogInfo2.mState = 1;
                                                        agy.m11867wk().m11876a((SilentInstallLogInfo) silentInstallLogInfo2);
                                                        if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                            final ahc m11836d3 = ahc.m11836d(silentInstallLogInfo2);
                                                            silentInstallLogInfo2 = beg.m7461Zj();
                                                            checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                                public void run() {
                                                                    super.run();
                                                                    ady.m12308tK().m12331a(m11836d3);
                                                                }
                                                            });
                                                            silentInstallLogInfo2.m7450c(checkResult2);
                                                            break;
                                                        }
                                                        break;
                                                    case 2:
                                                        checkResult2.anb = 3;
                                                        SilentInstallService.this.m12440a(silentInstallRequest, (SilentInstallLogInfo) silentInstallLogInfo2);
                                                        if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                            final ahc m11836d4 = ahc.m11836d(silentInstallLogInfo2);
                                                            silentInstallLogInfo2 = beg.m7461Zj();
                                                            checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                                public void run() {
                                                                    super.run();
                                                                    ady.m12308tK().m12331a(m11836d4);
                                                                }
                                                            });
                                                            silentInstallLogInfo2.m7450c(checkResult2);
                                                            break;
                                                        }
                                                        break;
                                                }
                                            }
                                            int m8667jw = awe.m8677SI().m8667jw(silentInstallLogInfo2.anE);
                                            boolean m10947Fd = aks.m11143BP().m10947Fd();
                                            switch (m8667jw) {
                                                case 1:
                                                    if (m10947Fd) {
                                                        silentInstallLogInfo2.mState = 0;
                                                        agy.m11867wk().m11876a((SilentInstallLogInfo) silentInstallLogInfo2);
                                                        checkResult2.anb = 1;
                                                        silentInstallRequest.m12443a(checkResult2);
                                                    } else {
                                                        SilentInstallService.this.m12440a(silentInstallRequest, (SilentInstallLogInfo) silentInstallLogInfo2);
                                                    }
                                                    if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                        final ahc m11836d5 = ahc.m11836d(silentInstallLogInfo2);
                                                        silentInstallLogInfo2 = beg.m7461Zj();
                                                        checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                            public void run() {
                                                                super.run();
                                                                ady.m12308tK().m12331a(m11836d5);
                                                            }
                                                        });
                                                        silentInstallLogInfo2.m7450c(checkResult2);
                                                        break;
                                                    }
                                                    break;
                                                case 2:
                                                    if (m10947Fd) {
                                                        silentInstallLogInfo2.mState = 1;
                                                        agy.m11867wk().m11876a((SilentInstallLogInfo) silentInstallLogInfo2);
                                                        checkResult2.anb = 2;
                                                        silentInstallRequest.m12443a(checkResult2);
                                                    } else {
                                                        SilentInstallService.this.m12440a(silentInstallRequest, (SilentInstallLogInfo) silentInstallLogInfo2);
                                                    }
                                                    if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                        final ahc m11836d6 = ahc.m11836d(silentInstallLogInfo2);
                                                        silentInstallLogInfo2 = beg.m7461Zj();
                                                        checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                            public void run() {
                                                                super.run();
                                                                ady.m12308tK().m12331a(m11836d6);
                                                            }
                                                        });
                                                        silentInstallLogInfo2.m7450c(checkResult2);
                                                        break;
                                                    }
                                                    break;
                                                case 3:
                                                default:
                                                    SilentInstallService.this.m12440a(silentInstallRequest, (SilentInstallLogInfo) silentInstallLogInfo2);
                                                    if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                        final ahc m11836d7 = ahc.m11836d(silentInstallLogInfo2);
                                                        silentInstallLogInfo2 = beg.m7461Zj();
                                                        checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                            public void run() {
                                                                super.run();
                                                                ady.m12308tK().m12331a(m11836d7);
                                                            }
                                                        });
                                                        silentInstallLogInfo2.m7450c(checkResult2);
                                                        break;
                                                    }
                                                    break;
                                                case 4:
                                                    checkResult2.anb = 1;
                                                    silentInstallRequest.m12443a(checkResult2);
                                                    if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                        final ahc m11836d8 = ahc.m11836d(silentInstallLogInfo2);
                                                        silentInstallLogInfo2 = beg.m7461Zj();
                                                        checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                            public void run() {
                                                                super.run();
                                                                ady.m12308tK().m12331a(m11836d8);
                                                            }
                                                        });
                                                        silentInstallLogInfo2.m7450c(checkResult2);
                                                        break;
                                                    }
                                                    break;
                                                case 5:
                                                    checkResult2.anb = 2;
                                                    silentInstallRequest.m12443a(checkResult2);
                                                    if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                        final ahc m11836d9 = ahc.m11836d(silentInstallLogInfo2);
                                                        silentInstallLogInfo2 = beg.m7461Zj();
                                                        checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                            public void run() {
                                                                super.run();
                                                                ady.m12308tK().m12331a(m11836d9);
                                                            }
                                                        });
                                                        silentInstallLogInfo2.m7450c(checkResult2);
                                                        break;
                                                    }
                                                    break;
                                            }
                                        } else {
                                            checkResult2.anb = 2;
                                            silentInstallRequest.m12443a(checkResult2);
                                            if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                                final ahc m11836d10 = ahc.m11836d(silentInstallLogInfo2);
                                                silentInstallLogInfo2 = beg.m7461Zj();
                                                checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                    public void run() {
                                                        super.run();
                                                        ady.m12308tK().m12331a(m11836d10);
                                                    }
                                                });
                                                silentInstallLogInfo2.m7450c(checkResult2);
                                            }
                                        }
                                    } else {
                                        checkResult2.anb = 2;
                                        silentInstallRequest.m12443a(checkResult2);
                                        if (silentInstallLogInfo2 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                            final ahc m11836d11 = ahc.m11836d(silentInstallLogInfo2);
                                            silentInstallLogInfo2 = beg.m7461Zj();
                                            checkResult2 = new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                public void run() {
                                                    super.run();
                                                    ady.m12308tK().m12331a(m11836d11);
                                                }
                                            });
                                            silentInstallLogInfo2.m7450c(checkResult2);
                                        }
                                    }
                                } catch (RemoteException e) {
                                    silentInstallLogInfo = silentInstallLogInfo2;
                                    checkResult = checkResult2;
                                    if (silentInstallLogInfo != null) {
                                        if (checkResult.anb == 2 || checkResult.anb == 1) {
                                            final ahc m11836d12 = ahc.m11836d(silentInstallLogInfo);
                                            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                                public void run() {
                                                    super.run();
                                                    ady.m12308tK().m12331a(m11836d12);
                                                }
                                            }));
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        } finally {
                            if (0 != 0 && (checkResult2.anb == 2 || checkResult2.anb == 1)) {
                                final ahc m11836d13 = ahc.m11836d(null);
                                beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.service.SilentInstallService.a.1
                                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                                    public void run() {
                                        super.run();
                                        ady.m12308tK().m12331a(m11836d13);
                                    }
                                }));
                            }
                        }
                    } catch (RemoteException e2) {
                        silentInstallLogInfo = silentInstallLogInfo2;
                        checkResult = checkResult2;
                    }
                    break;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("si_worker");
        handlerThread.start();
        this.anB = new HandlerC0737a(handlerThread.getLooper());
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f1397Hf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m12440a(SilentInstallRequest silentInstallRequest, SilentInstallLogInfo silentInstallLogInfo) {
        if (!akh.m11295Au()) {
            Intent intent = new Intent(this, SilentInstallDialogActivity.class);
            intent.addFlags(268435456);
            intent.putExtra(SilentInstallRequest.KEY, silentInstallRequest);
            intent.putExtra("silent_install_log_info", silentInstallLogInfo);
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fK */
    public boolean m12436fK(String str) {
        return C3636tj.m2169ge().getPackageName().equals(str);
    }
}
