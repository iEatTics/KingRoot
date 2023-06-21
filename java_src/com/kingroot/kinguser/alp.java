package com.kingroot.kinguser;

import android.os.RemoteException;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.entity.CategoryEntity;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationState;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameSummonEntity;
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
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity;
import com.tencent.qqpimsecure.seachsdk.common.CategoryInfo;
import com.tencent.qqpimsecure.seachsdk.common.SoftwareAdvertiseEntity;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.GetGameReservationResp;
import com.tencent.qqpimsecure.seachsdk.network.RequestInfo;
import com.tencent.qqpimsecure.seachsdk.network.ResponseInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class alp implements ams {
    private static final String TAG = aiq.arY + "_AppsMarketCloudMgr";
    private static final cce<ams> sInstance = new cce<ams>() { // from class: com.kingroot.kinguser.alp.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: GZ */
        public ams create() {
            return new alp();
        }
    };
    private alz<ConcurrentHashMap<Integer, Long>> ayd;

    @InterfaceC3726ut
    /* renamed from: GY */
    public static ams m10551GY() {
        return sInstance.get();
    }

    private alp() {
        this.ayd = new alz<ConcurrentHashMap<Integer, Long>>() { // from class: com.kingroot.kinguser.alp.9
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "apps_market_group_id.data");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hb */
            public ConcurrentHashMap<Integer, Long> mo7423Hc() {
                return new ConcurrentHashMap<>();
            }
        };
        this.ayd.m10476HQ();
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10432a(final int i, final ILoadAppsListener iLoadAppsListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.10
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5512a(i, 0L, new bun<AppInfo>() { // from class: com.kingroot.kinguser.alp.10.1
                    @Override // com.kingroot.kinguser.bun
                    public void onReceive(int i2, List<AppInfo> list) {
                        if (iLoadAppsListener != null) {
                            try {
                                iLoadAppsListener.onReceive(i2, AppBaseModel.m4200a(list, -1L));
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10428a(final long j, final int i, final int i2, final ILoadDataListener iLoadDataListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.11
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5509a(j, i, i2, new buc<String>() { // from class: com.kingroot.kinguser.alp.11.1
                    @Override // com.kingroot.kinguser.buc
                    /* renamed from: a */
                    public void mo5491a(int i3, List<String> list, RequestInfo requestInfo) {
                        if (iLoadDataListener != null) {
                            try {
                                iLoadDataListener.onReceive(i3, list);
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10425a(final String str, final IReqSuggWordListener iReqSuggWordListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.12
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5504a(str, new bud<AppInfo, String>() { // from class: com.kingroot.kinguser.alp.12.1
                    @Override // com.kingroot.kinguser.bud
                    /* renamed from: a */
                    public void mo5490a(int i, List<AppInfo> list, List<String> list2, RequestInfo requestInfo) {
                        if (iReqSuggWordListener != null) {
                            try {
                                iReqSuggWordListener.onReceive(i, AppBaseModel.m4200a(list, -1L), list2);
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10427a(final AppBaseModel appBaseModel, final ILoadAppsDetailListener iLoadAppsDetailListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.13
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                if (C3748vb.m1921O(KApplication.m13453ge()) != -1) {
                    ady.m12308tK().mo1746bi(100618);
                }
                btx.aid().m5506a(appBaseModel.m4202If(), new buc<AppInfo>() { // from class: com.kingroot.kinguser.alp.13.1
                    @Override // com.kingroot.kinguser.buc
                    /* renamed from: a */
                    public void mo5491a(int i, List<AppInfo> list, RequestInfo requestInfo) {
                        if (C3748vb.m1921O(KApplication.m13453ge()) != -1) {
                            ady.m12308tK().mo1746bi(100619);
                        }
                        if (iLoadAppsDetailListener != null) {
                            try {
                                if (C3942yy.m1351d(list)) {
                                    iLoadAppsDetailListener.onReceive(i, null);
                                    return;
                                }
                                AppDetailModel appDetailModel = new AppDetailModel(list.get(0));
                                if (appBaseModel.reportInfo != null) {
                                    appDetailModel.reportInfo = appBaseModel.reportInfo;
                                    appDetailModel.categoryId = appBaseModel.reportInfo.categoryid;
                                }
                                iLoadAppsDetailListener.onReceive(i, appDetailModel);
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10429a(final int i, final String str, final int i2, final int i3, final ISearchAppsListener iSearchAppsListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.14
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                if (C3748vb.m1921O(KApplication.m13453ge()) != -1) {
                    ady.m12308tK().mo1746bi(100616);
                }
                btx.aid().m5505a(str, i2, i3, i, new buc<AppInfo>() { // from class: com.kingroot.kinguser.alp.14.1
                    @Override // com.kingroot.kinguser.buc
                    /* renamed from: a */
                    public void mo5491a(int i4, List<AppInfo> list, RequestInfo requestInfo) {
                        if (C3748vb.m1921O(KApplication.m13453ge()) != -1) {
                            ady.m12308tK().mo1746bi(100617);
                        }
                        if (iSearchAppsListener != null) {
                            try {
                                iSearchAppsListener.onReceive(i4, str, i2, i3, i, AppBaseModel.m4200a(anf.m10289aC(list), -1L));
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10433a(final int i, final int i2, final int i3, final ILoadAppsListener iLoadAppsListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.15
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                final long currentTimeMillis = System.currentTimeMillis();
                Long l = (Long) ((ConcurrentHashMap) alp.this.ayd.m10475HR()).get(Integer.valueOf(i));
                btx.aid().m5513a(i, i2, Long.valueOf(l == null ? 0L : l.longValue()).longValue(), i3, 0L, new bue<AppInfo>() { // from class: com.kingroot.kinguser.alp.15.1
                    @Override // com.kingroot.kinguser.bue
                    /* renamed from: a */
                    public void mo5489a(int i4, List<AppInfo> list, RequestInfo requestInfo, ResponseInfo responseInfo) {
                        if (iLoadAppsListener != null) {
                            try {
                                iLoadAppsListener.onReceive(i4, AppBaseModel.m4200a(anf.m10289aC(list), responseInfo != null ? responseInfo.groupId : -1L));
                                Long l2 = (Long) ((ConcurrentHashMap) alp.this.ayd.m10475HR()).get(Integer.valueOf(i));
                                if (responseInfo != null) {
                                    if (l2 == null || l2.longValue() != responseInfo.groupId) {
                                        ((ConcurrentHashMap) alp.this.ayd.m10475HR()).put(Integer.valueOf(i), Long.valueOf(responseInfo.groupId));
                                        alp.this.ayd.m10473HT();
                                    }
                                }
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10430a(final int i, final String str, final int i2, final int i3, final long j, final ILoadRecommendAppsListener iLoadRecommendAppsListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.16
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5510a(i, str, i2, i3, j, new bui<AppInfo, SoftwareAdvertiseEntity>() { // from class: com.kingroot.kinguser.alp.16.1
                    @Override // com.kingroot.kinguser.bui
                    /* renamed from: a */
                    public void mo5416a(int i4, List<AppInfo> list, List<SoftwareAdvertiseEntity> list2, RequestInfo requestInfo, ResponseInfo responseInfo) {
                        if (iLoadRecommendAppsListener != null) {
                            try {
                                iLoadRecommendAppsListener.onReceive(i4, i, str, AppBaseModel.m4200a(anf.m10289aC(list), responseInfo != null ? responseInfo.groupId : -1L));
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: b */
    public void mo10420b(final int i, final int i2, final int i3, final ILoadAppsListener iLoadAppsListener) {
        final long currentTimeMillis = System.currentTimeMillis();
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5514a(i, i3, i2, new bue<AppInfo>() { // from class: com.kingroot.kinguser.alp.2.1
                    @Override // com.kingroot.kinguser.bue
                    /* renamed from: a */
                    public void mo5489a(int i4, List<AppInfo> list, RequestInfo requestInfo, ResponseInfo responseInfo) {
                        if (iLoadAppsListener != null) {
                            try {
                                iLoadAppsListener.onReceive(i4, AppBaseModel.m4200a(list, responseInfo != null ? responseInfo.groupId : -1L));
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10423a(final String str, final String str2, final String str3, final String str4, final IReservateGameResult iReservateGameResult) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5502a(str, str2, str3, str4, new bum() { // from class: com.kingroot.kinguser.alp.3.1
                    @Override // com.kingroot.kinguser.bum
                    /* renamed from: b */
                    public void mo5485b(boolean z, String str5, String str6) {
                        if (iReservateGameResult != null) {
                            if (z) {
                                try {
                                    if (TextUtils.isEmpty(str6) && TextUtils.isEmpty(str4)) {
                                        ady.m12308tK().mo1746bi(100661);
                                    } else {
                                        ady.m12308tK().mo1746bi(100699);
                                    }
                                } catch (RemoteException e) {
                                    return;
                                }
                            }
                            iReservateGameResult.onResult(z, str, str2, str6, str4);
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10422a(final ArrayList<String> arrayList, final IQueryReservationStateResult iQueryReservationStateResult) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5501a(arrayList, new bun<GetGameReservationResp>() { // from class: com.kingroot.kinguser.alp.4.1
                    @Override // com.kingroot.kinguser.bun
                    public void onReceive(int i, List<GetGameReservationResp> list) {
                        if (iQueryReservationStateResult != null) {
                            ArrayList arrayList2 = new ArrayList();
                            if (!C3942yy.m1351d(list)) {
                                for (GetGameReservationResp getGameReservationResp : list) {
                                    arrayList2.add(new GameReservationState(getGameReservationResp));
                                }
                            }
                            try {
                                iQueryReservationStateResult.onResult(i, arrayList2);
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10426a(final IQuerySummonListResult iQuerySummonListResult) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5507a(new bun<buz>() { // from class: com.kingroot.kinguser.alp.5.1
                    @Override // com.kingroot.kinguser.bun
                    public void onReceive(int i, List<buz> list) {
                        if (iQuerySummonListResult != null) {
                            ArrayList arrayList = new ArrayList();
                            if (!C3942yy.m1351d(list) && i == 0) {
                                for (buz buzVar : list) {
                                    arrayList.add(new GameSummonEntity(buzVar));
                                }
                            }
                            try {
                                iQuerySummonListResult.onResult(i, arrayList);
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10431a(final int i, final ILoadCategoryListener iLoadCategoryListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                btx.aid().m5511a(i, new buc<CategoryInfo>() { // from class: com.kingroot.kinguser.alp.6.1
                    @Override // com.kingroot.kinguser.buc
                    /* renamed from: a */
                    public void mo5491a(int i2, List<CategoryInfo> list, RequestInfo requestInfo) {
                        try {
                            iLoadCategoryListener.onReceive(i2, CategoryEntity.m4154a(list, requestInfo != null ? requestInfo.groupId : -1L));
                        } catch (RemoteException e) {
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10421a(final List<LocalAppInfo> list, final IRequestAvailUpdateListener iRequestAvailUpdateListener) {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alp.7
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList(list.size());
                for (LocalAppInfo localAppInfo : list) {
                    arrayList.add(localAppInfo.m4142Ix());
                }
                btx.aid().m5500a(arrayList, new btz() { // from class: com.kingroot.kinguser.alp.7.1
                    @Override // com.kingroot.kinguser.btz
                    public void onFetchResult(List<AvailUpdateEntity> list2, boolean z) {
                        if (iRequestAvailUpdateListener != null) {
                            ArrayList arrayList2 = new ArrayList();
                            for (AvailUpdateEntity availUpdateEntity : C3942yy.m1350e(list2)) {
                                arrayList2.add(new AvailUpdateInfo(availUpdateEntity));
                            }
                            try {
                                iRequestAvailUpdateListener.onFetchResult(arrayList2, z);
                            } catch (RemoteException e) {
                            }
                        }
                    }

                    @Override // com.kingroot.kinguser.btz
                    public void onFetchDiffResult(List<AvailUpdateEntity> list2, boolean z) {
                        if (iRequestAvailUpdateListener != null) {
                            ArrayList arrayList2 = new ArrayList();
                            for (AvailUpdateEntity availUpdateEntity : C3942yy.m1350e(list2)) {
                                arrayList2.add(new AvailUpdateInfo(availUpdateEntity));
                            }
                            try {
                                iRequestAvailUpdateListener.onFetchDiffResult(arrayList2, z);
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.ams
    /* renamed from: a */
    public void mo10424a(String str, String str2, AvailUpdateInfo availUpdateInfo, final IMergeApkPatchListener iMergeApkPatchListener) {
        btx.aid().m5503a(str, str2, availUpdateInfo.m4159Ir(), new buj() { // from class: com.kingroot.kinguser.alp.8
            @Override // com.kingroot.kinguser.buj
            public void onMergeResult(String str3, int i, String str4) {
                if (iMergeApkPatchListener != null) {
                    try {
                        iMergeApkPatchListener.onMergeResult(str3, i, str4);
                    } catch (RemoteException e) {
                    }
                }
            }
        });
    }
}
