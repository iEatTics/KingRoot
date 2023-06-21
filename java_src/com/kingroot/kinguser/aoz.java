package com.kingroot.kinguser;

import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import java.util.List;
/* loaded from: classes.dex */
public interface aoz {
    @WorkerThread
    /* renamed from: Ky */
    List<DownloaderTaskInfo> mo4097Ky();

    /* renamed from: Kz */
    List<DownloaderTaskInfo> mo4096Kz();

    @WorkerThread
    /* renamed from: hM */
    DownloaderTaskInfo mo4079hM(String str);

    @WorkerThread
    /* renamed from: hN */
    DownloaderTaskInfo mo4078hN(String str);
}
