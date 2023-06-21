package com.kingroot.kinguser;

import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IOnWifiAutoDownloadListener;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class amz extends aou {
    private static final cce<amz> sInstance = new cce<amz>() { // from class: com.kingroot.kinguser.amz.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: IM */
        public amz create() {
            return new amz();
        }
    };

    /* renamed from: II */
    public static amz m10365II() {
        return sInstance.get();
    }

    private amz() {
    }

    /* renamed from: c */
    public void m10356c(@NonNull AppDownloadRequest appDownloadRequest) {
        m2022a(105, new ArgsPack(appDownloadRequest));
    }

    /* renamed from: a */
    public void m10359a(@NonNull AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener, boolean z, @Nullable IAppInstallListener iAppInstallListener) {
        Object[] objArr = new Object[5];
        objArr[0] = appDownloadRequest;
        objArr[1] = Integer.valueOf(i);
        objArr[2] = iAppDownloadListener == null ? null : iAppDownloadListener.asBinder();
        objArr[3] = Boolean.valueOf(z);
        objArr[4] = iAppInstallListener != null ? iAppInstallListener.asBinder() : null;
        m2022a(101, new ArgsPack(objArr));
    }

    /* renamed from: g */
    public void m10355g(AppDownloadRequest appDownloadRequest) {
        m2022a(102, new ArgsPack(appDownloadRequest));
    }

    /* renamed from: hy */
    public AppDownloadRequest m10354hy(String str) {
        return (AppDownloadRequest) m2018b(104, new ArgsPack(str)).getResult();
    }

    /* renamed from: a */
    public void m10362a(@NonNull ILoadAppHistoryListener iLoadAppHistoryListener) {
        Object[] objArr = new Object[1];
        objArr[0] = iLoadAppHistoryListener == null ? null : iLoadAppHistoryListener.asBinder();
        m2022a(103, new ArgsPack(objArr));
    }

    /* renamed from: b */
    public void m10358b(@NonNull ILoadAppStatusListener iLoadAppStatusListener) {
        Object[] objArr = new Object[1];
        objArr[0] = iLoadAppStatusListener == null ? null : iLoadAppStatusListener.asBinder();
        m2022a(110, new ArgsPack(objArr));
    }

    /* renamed from: IJ */
    public void m10364IJ() {
        m2020aX(111);
    }

    /* renamed from: IF */
    public void m10367IF() {
        m2020aX(107);
    }

    /* renamed from: b */
    public void m10357b(IOnWifiAutoDownloadListener iOnWifiAutoDownloadListener) {
        Object[] objArr = new Object[1];
        objArr[0] = iOnWifiAutoDownloadListener == null ? null : iOnWifiAutoDownloadListener.asBinder();
        m2022a(108, new ArgsPack(objArr));
    }

    /* renamed from: a */
    public void m10360a(IOnWifiAutoDownloadListener iOnWifiAutoDownloadListener) {
        Object[] objArr = new Object[1];
        objArr[0] = iOnWifiAutoDownloadListener == null ? null : iOnWifiAutoDownloadListener.asBinder();
        m2022a(112, new ArgsPack(objArr));
    }

    /* renamed from: IG */
    public void m10366IG() {
        m2020aX(109);
    }

    @Override // com.kingroot.kinguser.aou
    /* renamed from: IK */
    public Class<? extends aov> mo7990IK() {
        return C1234a.class;
    }

    /* renamed from: a */
    public void m10361a(ILoadAppStatusListener iLoadAppStatusListener) {
        Object[] objArr = new Object[1];
        objArr[0] = iLoadAppStatusListener == null ? null : iLoadAppStatusListener.asBinder();
        m2022a(113, new ArgsPack(objArr));
    }

    /* renamed from: IL */
    public List<DownloaderTaskInfo> m10363IL() {
        ArrayList arrayList = new ArrayList();
        for (DownloaderTaskInfo downloaderTaskInfo : mo4097Ky()) {
            if (downloaderTaskInfo.m4052KJ() == boq.DOWNLOADING) {
                arrayList.add(downloaderTaskInfo);
            }
        }
        return arrayList;
    }

    /* renamed from: com.kingroot.kinguser.amz$a */
    /* loaded from: classes.dex */
    public static class C1234a extends aov {
        @Override // com.kingroot.kinguser.aov
        /* renamed from: IN */
        protected AppDownloadClient mo7983IN() {
            return amy.m10397IB();
        }

        @Override // com.kingroot.kinguser.aov, com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            super.mo1957a(i, argsPack, ipcResult);
            switch (i) {
                case 101:
                    amy.m10397IB().m10387a((AppDownloadRequest) argsPack.next(), ((Integer) argsPack.next()).intValue(), IAppDownloadListener.Stub.asInterface((IBinder) argsPack.next()), ((Boolean) argsPack.next()).booleanValue(), IAppInstallListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 102:
                    amy.m10397IB().m10373g((AppDownloadRequest) argsPack.next());
                    return;
                case 103:
                    amy.m10397IB().m10390a(ILoadAppHistoryListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 104:
                case 106:
                default:
                    return;
                case 105:
                    amy.m10397IB().m10378c((AppDownloadRequest) argsPack.next());
                    return;
                case 107:
                    amy.m10397IB().m10394IF();
                    return;
                case 108:
                    amy.m10397IB().m10382b(IOnWifiAutoDownloadListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 109:
                    amy.m10397IB().m10393IG();
                    return;
                case 110:
                    amy.m10397IB().m10383b(ILoadAppStatusListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 111:
                    amy.m10397IB().m10395ID();
                    return;
                case 112:
                    amy.m10397IB().m10388a(IOnWifiAutoDownloadListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 113:
                    amy.m10397IB().m10389a(ILoadAppStatusListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
            }
        }

        @Override // com.kingroot.kinguser.aov, com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 104:
                    return amy.m10397IB().m10370hy((String) argsPack.next());
                case 105:
                default:
                    return super.mo1955c(i, argsPack);
                case 106:
                    return amy.m10397IB().m10396IC();
            }
        }
    }
}
