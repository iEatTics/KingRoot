package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener;
/* loaded from: classes.dex */
public abstract class aov implements InterfaceC3705up {
    /* renamed from: IN */
    protected abstract AppDownloadClient mo7983IN();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.kingroot.kinguser.InterfaceC3705up
    /* renamed from: a */
    public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
        AppDownloadClient mo7983IN = mo7983IN();
        switch (i) {
            case 0:
                mo7983IN.mo4092a((AppDownloadRequest) argsPack.next(), ((Integer) argsPack.next()).intValue(), IAppDownloadListener.Stub.asInterface((IBinder) argsPack.next()));
                return;
            case 1:
                mo7983IN.m4087a(NetworkChangedRemoteListener.Stub.asInterface((IBinder) argsPack.next()));
                return;
            case 2:
                mo7983IN.m4081hK((String) argsPack.next());
                return;
            case 3:
                mo7983IN.m4098KA();
                return;
            case 4:
            case 7:
            case 8:
            case 9:
            case 15:
            default:
                return;
            case 5:
                mo7983IN.m4090a((DownloaderTaskInfo) argsPack.next(), IAppDownloadListener.Stub.asInterface((IBinder) argsPack.next()));
                return;
            case 6:
                mo7983IN.mo4091a((DownloaderTaskInfo) argsPack.next());
                return;
            case 10:
                mo7983IN.m4080hL((String) argsPack.next());
                return;
            case 11:
                mo7983IN.mo4072hx((String) argsPack.next());
                return;
            case 12:
                mo7983IN.mo4089a((DownloaderTaskInfo) argsPack.next(), ((Boolean) argsPack.next()).booleanValue());
                break;
            case 13:
                mo7983IN.mo4070z((String) argsPack.next(), ((Boolean) argsPack.next()).booleanValue());
                return;
            case 14:
                break;
            case 16:
                mo7983IN.m4088a(IAppDownloadListener.Stub.asInterface((IBinder) argsPack.next()));
                return;
            case 17:
                mo7983IN.m4083b(NetworkChangedRemoteListener.Stub.asInterface((IBinder) argsPack.next()));
                return;
        }
        mo7983IN.m4085a((String) argsPack.next(), IAppDownloadListener.Stub.asInterface((IBinder) argsPack.next()));
    }

    @Override // com.kingroot.kinguser.InterfaceC3705up
    /* renamed from: c */
    public Object mo1955c(int i, ArgsPack argsPack) {
        AppDownloadClient mo7983IN = mo7983IN();
        switch (i) {
            case 7:
                return mo7983IN.mo4097Ky();
            case 8:
                return mo7983IN.mo4079hM((String) argsPack.next());
            case 9:
                return mo7983IN.mo4078hN((String) argsPack.next());
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            default:
                return null;
            case 15:
                return mo7983IN.mo4096Kz();
        }
    }
}
