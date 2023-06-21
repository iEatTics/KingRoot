package com.kingroot.kinguser;

import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener;
import java.util.List;
/* loaded from: classes.dex */
public interface amu {
    @InterfaceC3725us
    /* renamed from: Ht */
    void mo10416Ht();

    @InterfaceC3725us
    /* renamed from: Hu */
    void mo10415Hu();

    @WorkerThread
    @InterfaceC3728uu
    /* renamed from: Hw */
    List<AvailUpdateInfo> mo10414Hw();

    @WorkerThread
    @InterfaceC3728uu
    /* renamed from: Hx */
    List<AvailUpdateInfo> mo10413Hx();

    @WorkerThread
    @InterfaceC3728uu
    /* renamed from: Hy */
    List<AvailUpdateInfo> mo10412Hy();

    @InterfaceC3728uu
    /* renamed from: a */
    void mo10410a(AvailUpdateInfo availUpdateInfo, boolean z);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10409a(IRequestAvailUpdateListener iRequestAvailUpdateListener);

    @WorkerThread
    @InterfaceC3728uu
    /* renamed from: a */
    boolean mo10411a(AvailUpdateInfo availUpdateInfo);
}
