package com.kingroot.kinguser;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import java.util.List;
/* loaded from: classes.dex */
public interface auf {

    /* renamed from: com.kingroot.kinguser.auf$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1605a extends InterfaceC3899xt {
        /* renamed from: PK */
        void mo9075PK();

        /* renamed from: PL */
        void mo9074PL();

        /* renamed from: PM */
        void mo9073PM();

        /* renamed from: PN */
        void mo9072PN();

        /* renamed from: PO */
        void mo9071PO();

        /* renamed from: PP */
        void mo9070PP();

        /* renamed from: PQ */
        void mo9069PQ();

        /* renamed from: PR */
        void mo9068PR();

        /* renamed from: PS */
        void mo9067PS();

        @WorkerThread
        /* renamed from: PT */
        void mo9066PT();

        /* renamed from: h */
        void mo9057h(Activity activity);

        /* renamed from: i */
        void mo9056i(Activity activity);

        /* renamed from: j */
        void mo9055j(Activity activity);
    }

    /* renamed from: com.kingroot.kinguser.auf$b */
    /* loaded from: classes.dex */
    public interface InterfaceC1606b {
        /* renamed from: JF */
        void mo9104JF();

        /* renamed from: JG */
        void mo9103JG();

        /* renamed from: JK */
        void mo9102JK();

        /* renamed from: a */
        void mo9101a(List<AppBaseModel> list, boolean z, boolean z2);

        /* renamed from: aM */
        void mo9100aM(List<AppBaseModel> list);

        /* renamed from: aN */
        void mo9099aN(List<AppBaseModel> list);

        /* renamed from: aO */
        void mo9098aO(List<AppBaseModel> list);

        /* renamed from: aP */
        void mo9097aP(List<AppBaseModel> list);

        /* renamed from: aQ */
        void mo9096aQ(List<AppBaseModel> list);

        /* renamed from: aR */
        void mo9095aR(List<AvailUpdateInfo> list);

        /* renamed from: i */
        void mo9094i(@NonNull AppBaseModel appBaseModel);
    }
}
