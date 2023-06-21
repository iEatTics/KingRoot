package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import java.util.ArrayList;
/* loaded from: classes.dex */
public interface asy {
    @InterfaceC3728uu
    /* renamed from: GT */
    ArrayList<String> mo9333GT();

    @InterfaceC3728uu
    /* renamed from: GU */
    boolean mo9332GU();

    @InterfaceC3725us
    /* renamed from: a */
    void mo9331a(@NonNull ApkInstallRequest apkInstallRequest, IAppInstallListener iAppInstallListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo9330a(IAppInstallListener iAppInstallListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo9329a(String str, IAppInstallListener iAppInstallListener);
}
