package com.kingroot.kinguser;

import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.entity.LocalAppInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsDetailListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadCategoryListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadDataListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IMergeApkPatchListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IQueryReservationStateResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IQuerySummonListResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IReqSuggWordListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public interface ams {
    @InterfaceC3725us
    /* renamed from: a */
    void mo10433a(int i, int i2, int i3, ILoadAppsListener iLoadAppsListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10432a(int i, ILoadAppsListener iLoadAppsListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10431a(int i, ILoadCategoryListener iLoadCategoryListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10430a(int i, String str, int i2, int i3, long j, ILoadRecommendAppsListener iLoadRecommendAppsListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10429a(int i, String str, int i2, int i3, ISearchAppsListener iSearchAppsListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10428a(long j, int i, int i2, ILoadDataListener iLoadDataListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10427a(AppBaseModel appBaseModel, ILoadAppsDetailListener iLoadAppsDetailListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10426a(IQuerySummonListResult iQuerySummonListResult);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10425a(String str, IReqSuggWordListener iReqSuggWordListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10424a(String str, String str2, AvailUpdateInfo availUpdateInfo, IMergeApkPatchListener iMergeApkPatchListener);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10423a(String str, String str2, String str3, String str4, IReservateGameResult iReservateGameResult);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10422a(ArrayList<String> arrayList, IQueryReservationStateResult iQueryReservationStateResult);

    @InterfaceC3725us
    /* renamed from: a */
    void mo10421a(List<LocalAppInfo> list, IRequestAvailUpdateListener iRequestAvailUpdateListener);

    @InterfaceC3725us
    /* renamed from: b */
    void mo10420b(int i, int i2, int i3, ILoadAppsListener iLoadAppsListener);
}
