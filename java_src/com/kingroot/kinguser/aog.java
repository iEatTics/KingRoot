package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import com.kingroot.kinguser.C3826wd;
import com.kingroot.kinguser.C3828we;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.activitys.ShareLoginActivity;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.aog;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppReserveModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameReservationState;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IQueryReservationStateResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult;
import com.kingroot.kinguser.webview.WebViewActivity;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class aog extends anl {
    private HashMap<String, AppReserveModel> aFp;
    private AppReserveModel aFq;
    private and.C1258a aFr;
    private IReservateGameResult aFs;
    private C3828we.C3829a aiS;

    public aog(Context context) {
        super(context);
        this.aFp = new HashMap<>();
        this.aFq = null;
        this.aFr = new and.C1258a() { // from class: com.kingroot.kinguser.aog.1
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: c */
            public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
                ang.m10275a(aog.this.getActivity(), appDownLoadModel.m4185Ik(), aog.this.m10222Jg().m10171Jm(), appDownLoadModel);
            }

            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: a */
            public void mo9189a(View view, AppReserveModel appReserveModel) {
                alq.m10547GY().mo10423a(appReserveModel.reservationEntity.activityId, appReserveModel.pkgName, C3826wd.f3855Mu.f3861My, C3826wd.f3855Mu.f3862Mz, aog.this.aFs);
            }

            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: a */
            public void mo9190a(Context context2, View view, AppReserveModel appReserveModel) {
                ShareLoginActivity.m12600aK(context2);
                aog.this.aFq = appReserveModel;
            }
        };
        this.aFs = new IReservateGameResult.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.ReserveGamePage$3
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult
            public void onResult(final boolean z, final String str, String str2, final String str3, final String str4) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.ReserveGamePage$3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        HashMap hashMap;
                        hashMap = aog.this.aFp;
                        AppReserveModel appReserveModel = (AppReserveModel) hashMap.get(str);
                        if (z && appReserveModel != null) {
                            if (TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4)) {
                                appReserveModel.appStatus = 11;
                            } else {
                                appReserveModel.appStatus = 12;
                                C3954zj.m1307c(aog.this.m1417V(2131166401L), 0);
                            }
                            and.m10307c(appReserveModel.m4188Ih(), appReserveModel);
                        }
                    }
                });
            }
        };
        this.aiS = new C3828we.C3829a() { // from class: com.kingroot.kinguser.aog.2
            @Override // com.kingroot.kinguser.C3828we.C3829a
            /* renamed from: b */
            public void mo1568b(boolean z, C3826wd.C3827a c3827a) {
                if (z && aog.this.aFq != null) {
                    aog.this.aFq.reservationEntity.f2447qq = c3827a.f3861My;
                    aog.this.aFq.reservationEntity.f2448wx = c3827a.f3862Mz;
                    alq.m10547GY().mo10423a(aog.this.aFq.reservationEntity.activityId, aog.this.aFq.pkgName, aog.this.aFq.reservationEntity.f2447qq, aog.this.aFq.reservationEntity.f2448wx, aog.this.aFs);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.TAG = "ku_pageReserveGamePage";
        this.aBy = C3953zi.m1311pr().getString(R.string.tab_reserve);
        this.aBz = 5012416;
        this.aBI = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.ReserveGamePage$1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                final List m9974aG;
                if (list.size() > 0) {
                    m9974aG = aog.this.m9974aG(list);
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.ReserveGamePage$1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aog.this.aBC.addAll(m9974aG);
                            aog.this.aon += 30;
                            aog.this.getHandler().obtainMessage(0).sendToTarget();
                        }
                    });
                    return;
                }
                aog.this.getHandler().obtainMessage(1).sendToTarget();
            }
        };
        C3828we.m1571a(this.aiS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.aFq != null) {
            m9975a(this.aFq);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.aBG.m4129i(null);
        this.aBB.m10639a(this.aFr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aG */
    public List<ame> m9974aG(List<AppBaseModel> list) {
        List<AppBaseModel> m10282c = anf.m10282c(list, this.aBF);
        ArrayList arrayList = new ArrayList();
        for (AppBaseModel appBaseModel : m10282c) {
            AppReserveModel appReserveModel = new AppReserveModel(appBaseModel);
            arrayList.add(appReserveModel);
            this.aBF.add(appBaseModel.pkgName);
            this.aFp.put(appBaseModel.reservationEntity.activityId, appReserveModel);
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.anl
    /* renamed from: Ja */
    protected void mo9979Ja() {
        alq.m10547GY().mo10420b(this.aBz, 30, this.aon, this.aBI);
    }

    @Override // com.kingroot.kinguser.anl, android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i >= 0 && i < this.aBC.size()) {
            ady.m12308tK().mo1746bi(100656);
            AppReserveModel appReserveModel = (AppReserveModel) this.aBC.get(i);
            if (appReserveModel.m4169Ip()) {
                this.aFq = appReserveModel;
                WebViewActivity.m1567a(this.mContext, appReserveModel.reservationEntity.reservationUrl, appReserveModel.appName, 21);
                return;
            }
            AppDetailActivity.m12647a(this.mContext, appReserveModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        C3828we.m1569b(this.aiS);
        super.onDestroy();
    }

    /* renamed from: a */
    private void m9975a(AppReserveModel appReserveModel) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(appReserveModel.reservationEntity.activityId);
        alq.m10547GY().mo10422a(arrayList, new IQueryReservationStateResult.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.ReserveGamePage$5
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IQueryReservationStateResult
            public void onResult(int i, List<GameReservationState> list) {
                if (!C3942yy.m1351d(list)) {
                    final GameReservationState gameReservationState = list.get(0);
                    if (gameReservationState.m4147Iv()) {
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.ReserveGamePage$5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                HashMap hashMap;
                                hashMap = aog.this.aFp;
                                AppReserveModel appReserveModel2 = (AppReserveModel) hashMap.get(gameReservationState.activityId);
                                if (appReserveModel2 != null) {
                                    appReserveModel2.m4168a(gameReservationState);
                                    and.m10307c(appReserveModel2.m4188Ih(), appReserveModel2);
                                }
                            }
                        });
                    }
                }
            }
        });
    }
}
