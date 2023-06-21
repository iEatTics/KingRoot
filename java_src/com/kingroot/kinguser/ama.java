package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.acu;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.akl;
import com.kingroot.kinguser.alz;
import com.kingroot.kinguser.ama;
import com.kingroot.kinguser.amz;
import com.kingroot.kinguser.ana;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.GameSummonEntity;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IQuerySummonListResult;
import com.kingroot.kinguser.distribution.appsmarket.report.ReportInfo;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ama implements amw {
    private static final String TAG = aiq.arY + "_MarketGameReservationHelper";
    private static final cce<ama> sInstance = new cce<ama>() { // from class: com.kingroot.kinguser.ama.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: HW */
        public ama create() {
            return new ama();
        }
    };
    private amw azx;

    /* renamed from: HV */
    public static ama m10466HV() {
        return sInstance.get();
    }

    private ama() {
        this.azx = (amw) C3729uv.m1971kM().m1973a(C1218a.m10464HX(), amw.class);
    }

    @Override // com.kingroot.kinguser.amw
    /* renamed from: rW */
    public void mo10399rW() {
        this.azx.mo10399rW();
    }

    /* renamed from: com.kingroot.kinguser.ama$a */
    /* loaded from: classes.dex */
    public static class C1218a implements amw {
        private static final cce<C1218a> sInstance = new cce<C1218a>() { // from class: com.kingroot.kinguser.ama.a.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: Ia */
            public C1218a create() {
                return new C1218a();
            }
        };
        private final alz<ArrayList<GameSummonEntity>> azy;

        /* renamed from: HX */
        public static C1218a m10464HX() {
            return sInstance.get();
        }

        private C1218a() {
            this.azy = new alz<ArrayList<GameSummonEntity>>() { // from class: com.kingroot.kinguser.ama.a.1
                @Override // com.kingroot.kinguser.alz
                /* renamed from: Ha */
                public File mo7424Ha() {
                    return new File(KApplication.m13453ge().getFilesDir(), "market_game_summon_list.dat");
                }

                @Override // com.kingroot.kinguser.alz
                /* renamed from: Hg */
                public ArrayList<GameSummonEntity> mo7423Hc() {
                    return new ArrayList<>();
                }
            };
            this.azy.m10472a(null);
        }

        @Override // com.kingroot.kinguser.amw
        /* renamed from: rW */
        public void mo10399rW() {
            m10462HZ();
            m10463HY();
        }

        /* renamed from: HY */
        private void m10463HY() {
            if (C3748vb.m1918R(KApplication.m13453ge()) && acu.m12571g(akl.m11257AS().m11228Bo(), 28800000L)) {
                akl.m11257AS().m11202au(System.currentTimeMillis());
                alq.m10547GY().mo10426a(new IQuerySummonListResult.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketGameReservationHelper$Impl$3
                    @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IQuerySummonListResult
                    public void onResult(int i, List<GameSummonEntity> list) {
                        alz alzVar;
                        alz alzVar2;
                        alz alzVar3;
                        alz alzVar4;
                        if (C3748vb.m1918R(KApplication.m13453ge())) {
                            alzVar = ama.C1218a.this.azy;
                            synchronized (alzVar) {
                                alzVar2 = ama.C1218a.this.azy;
                                ((ArrayList) alzVar2.m10475HR()).clear();
                                if (!C3942yy.m1351d(list)) {
                                    alzVar4 = ama.C1218a.this.azy;
                                    ((ArrayList) alzVar4.m10475HR()).addAll(list);
                                }
                                alzVar3 = ama.C1218a.this.azy;
                                alzVar3.m10473HT();
                            }
                            if (C3942yy.m1351d(list)) {
                            }
                            for (final GameSummonEntity gameSummonEntity : C3942yy.m1350e(list)) {
                                if (gameSummonEntity.tipsInfo != null && !C3952zh.m1312pq().m1314du(gameSummonEntity.pkgName)) {
                                    int m11184gN = akl.m11257AS().m11184gN(gameSummonEntity.pkgName);
                                    AppDownloadRequest m4061d = AppDownloadRequest.m4061d(gameSummonEntity.appInfo);
                                    File m9741h = apu.m9741h(m4061d);
                                    if (m11184gN <= 0) {
                                        m9741h.delete();
                                    }
                                    if (!m9741h.isFile() || !m9741h.exists()) {
                                        if (m11184gN < 3) {
                                            akl.m11257AS().m11183gO(gameSummonEntity.pkgName);
                                            amz.m10365II().m10359a(m4061d, 0, new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketGameReservationHelper$Impl$3.1
                                                @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
                                                public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
                                                    super.onComplete(downloaderTaskInfo);
                                                    adm.m12480st().m12499eA(gameSummonEntity.appInfo.pkgName);
                                                    akl.m11257AS().m11175k(gameSummonEntity.appInfo.pkgName, System.currentTimeMillis());
                                                }

                                                @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
                                                public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
                                                    super.onFailed(downloaderTaskInfo);
                                                    adm.m12480st().m12499eA(gameSummonEntity.appInfo.pkgName);
                                                }
                                            }, true, new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketGameReservationHelper$Impl$3.2
                                                @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
                                                public void onState(String str, int i2, String str2) {
                                                    if (i2 == 3) {
                                                        adm.m12480st().m12499eA(gameSummonEntity.appInfo.pkgName);
                                                    }
                                                }
                                            });
                                            apv.m9735LO().m9730a(gameSummonEntity.appInfo.logoUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketGameReservationHelper$Impl$3.3
                                                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                                                /* renamed from: a */
                                                public void mo4137a(String str, Bitmap bitmap) {
                                                    ana.m10352IO().mo10330a(ama.class.getName(), gameSummonEntity.appInfo.pkgName.hashCode(), new ReportInfo(gameSummonEntity.appInfo));
                                                    adm.m12480st().m12512a(gameSummonEntity.appInfo.pkgName, gameSummonEntity.appInfo.appName, bitmap, true);
                                                }

                                                @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                                                /* renamed from: eE */
                                                public void mo4136eE(String str) {
                                                }
                                            });
                                        }
                                    }
                                }
                            }
                        }
                    }
                });
            }
        }

        /* renamed from: HZ */
        private void m10462HZ() {
            amz.m10365II().m10362a(new ILoadAppHistoryListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketGameReservationHelper$Impl$4
                @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener
                public void onComplete(List<AppDownLoadModel> list) {
                    alz alzVar;
                    alz alzVar2;
                    for (AppDownLoadModel appDownLoadModel : C3942yy.m1350e(list)) {
                        if (appDownLoadModel.appStatus == 5 && !C3952zh.m1312pq().m1314du(appDownLoadModel.pkgName)) {
                            alzVar = ama.C1218a.this.azy;
                            synchronized (alzVar) {
                                alzVar2 = ama.C1218a.this.azy;
                                Iterator it = ((ArrayList) alzVar2.m10475HR()).iterator();
                                while (it.hasNext()) {
                                    final GameSummonEntity gameSummonEntity = (GameSummonEntity) it.next();
                                    if (TextUtils.equals(appDownLoadModel.pkgName, gameSummonEntity.pkgName) && acu.m12571g(akl.m11257AS().m11185gM(gameSummonEntity.pkgName), 14400000L) && !akl.m11257AS().m11182gP(gameSummonEntity.pkgName)) {
                                        apv.m9735LO().m9730a(gameSummonEntity.appInfo.logoUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.MarketGameReservationHelper$Impl$4.1
                                            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                                            /* renamed from: a */
                                            public void mo4137a(String str, Bitmap bitmap) {
                                                ana.m10352IO().mo10330a(ama.class.getName(), gameSummonEntity.appInfo.pkgName.hashCode(), new ReportInfo(gameSummonEntity.appInfo));
                                                adm.m12480st().m12512a(gameSummonEntity.appInfo.pkgName, gameSummonEntity.appInfo.appName, bitmap, false);
                                                akl.m11257AS().m11181gQ(gameSummonEntity.pkgName);
                                            }

                                            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
                                            /* renamed from: eE */
                                            public void mo4136eE(String str) {
                                            }
                                        });
                                    }
                                }
                            }
                        }
                    }
                }
            });
        }
    }
}
