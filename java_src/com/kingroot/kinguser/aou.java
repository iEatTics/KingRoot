package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener;
import java.util.List;
/* loaded from: classes.dex */
public abstract class aou extends AbstractC3704uo implements aoz {
    private Class<? extends aov> aGy = mo7990IK();

    /* renamed from: IK */
    public abstract Class<? extends aov> mo7990IK();

    /* renamed from: a */
    public void m9884a(@NonNull AppDownloadRequest appDownloadRequest, int i, @Nullable IAppDownloadListener iAppDownloadListener) {
        if (iAppDownloadListener == null) {
            m2022a(0, new ArgsPack(appDownloadRequest, Integer.valueOf(i), null));
        } else {
            m2022a(0, new ArgsPack(appDownloadRequest, Integer.valueOf(i), iAppDownloadListener.asBinder()));
        }
    }

    /* renamed from: a */
    public void m9880a(@NonNull NetworkChangedRemoteListener networkChangedRemoteListener) {
        m2022a(1, new ArgsPack(networkChangedRemoteListener.asBinder()));
    }

    /* renamed from: b */
    public void m9878b(@NonNull NetworkChangedRemoteListener networkChangedRemoteListener) {
        m2022a(17, new ArgsPack(networkChangedRemoteListener.asBinder()));
    }

    /* renamed from: hK */
    public void m9877hK(@NonNull String str) {
        m2022a(2, new ArgsPack(str));
    }

    /* renamed from: hL */
    public void m9876hL(@NonNull String str) {
        m2022a(10, new ArgsPack(str));
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: hM */
    public DownloaderTaskInfo mo4079hM(String str) {
        return (DownloaderTaskInfo) m2018b(8, new ArgsPack(str)).getResult();
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: hN */
    public DownloaderTaskInfo mo4078hN(String str) {
        return (DownloaderTaskInfo) m2018b(9, new ArgsPack(str)).getResult();
    }

    /* renamed from: a */
    public void m9882a(@NonNull DownloaderTaskInfo downloaderTaskInfo, @NonNull IAppDownloadListener iAppDownloadListener) {
        Object[] objArr = new Object[2];
        objArr[0] = downloaderTaskInfo;
        objArr[1] = iAppDownloadListener == null ? null : iAppDownloadListener.asBinder();
        m2022a(5, new ArgsPack(objArr));
    }

    /* renamed from: a */
    public void m9881a(@NonNull IAppDownloadListener iAppDownloadListener) {
        Object[] objArr = new Object[1];
        objArr[0] = iAppDownloadListener == null ? null : iAppDownloadListener.asBinder();
        m2022a(16, new ArgsPack(objArr));
    }

    /* renamed from: a */
    public void m9883a(DownloaderTaskInfo downloaderTaskInfo) {
        m2022a(6, new ArgsPack(downloaderTaskInfo));
    }

    /* renamed from: hx */
    public void m9875hx(@NonNull String str) {
        m2022a(11, new ArgsPack(str));
    }

    /* renamed from: z */
    public void m9874z(@NonNull String str, boolean z) {
        m2022a(13, new ArgsPack(str, Boolean.valueOf(z)));
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: Ky */
    public List<DownloaderTaskInfo> mo4097Ky() {
        return (List) m2019aY(7).getResult();
    }

    /* renamed from: a */
    public void m9879a(@NonNull String str, @NonNull IAppDownloadListener iAppDownloadListener) {
        Object[] objArr = new Object[2];
        objArr[0] = str;
        objArr[1] = iAppDownloadListener == null ? null : iAppDownloadListener.asBinder();
        m2022a(14, new ArgsPack(objArr));
    }

    @Override // com.kingroot.kinguser.aoz
    /* renamed from: Kz */
    public List<DownloaderTaskInfo> mo4096Kz() {
        return (List) m2019aY(15).getResult();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return this.aGy;
    }
}
