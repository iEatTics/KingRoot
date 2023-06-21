package com.kingroot.kinguser;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3826wd;
import com.kingroot.kinguser.C3828we;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppDownloadManagerActivity;
import com.kingroot.kinguser.activitys.AppSearchActivity;
import com.kingroot.kinguser.activitys.PopRecommendAppSplashActivity;
import com.kingroot.kinguser.activitys.ReserveActivity;
import com.kingroot.kinguser.activitys.ShareLoginActivity;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.asw;
import com.kingroot.kinguser.atm;
import com.kingroot.kinguser.ato;
import com.kingroot.kinguser.atp;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppReserveModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IGetSplashResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult;
import com.kingroot.kinguser.distribution.appsmarket.view.SearchView;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer;
import com.kingroot.kinguser.gamebox.common.IAppChangedListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguser.gamebox.foreground.GameBoxAddActivity;
import com.kingroot.kinguser.gamebox.foreground.GameBoxGamesListView;
import com.kingroot.kinguser.gamebox.foreground.GameBoxGuideActivityDialog;
import com.kingroot.kinguser.gamebox.foreground.RecommendGameDetailActivity;
import com.kingroot.kinguser.gamebox.foreground.view.GameBoxTitleView;
import com.kingroot.kinguser.gamebox.foreground.view.GameboxGridview;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class atm extends ans {
    private ArrayList<String> aBF;
    private ILoadAppStatusListener aBo;
    private anx aCF;
    private ImageView aDS;
    private SearchView aDT;
    private String aGj;
    private int aNY;
    private AtomicInteger aOA;
    private AtomicLong aOB;
    private AtomicLong aOC;
    private AtomicInteger aOD;
    private ArrayList<ame> aOE;
    private Map<String, Integer> aOF;
    private boolean aOG;
    private IAppChangedListener.Stub aOH;
    private AppReserveModel aOI;
    private final List<CountDownLatch> aOJ;
    private IReservateGameResult.Stub aOK;
    private GameBoxProcessOptimizer.InterfaceC3079a aOL;
    private boolean aOM;
    private final AdapterView.OnItemClickListener aON;
    private bed aOO;
    private View.OnClickListener aOP;
    private int aOl;
    private GameBoxTitleView aOm;
    private atq aOn;
    private GameboxGridview aOo;
    atp.C1582b aOp;
    private GameBoxGamesListView aOq;
    private Button aOr;
    private ListView aOs;
    private List<ats> aOt;
    private ArrayList<ato.C1574a> aOu;
    private String aOv;
    private String aOw;
    private ato aOx;
    private atp aOy;
    private boolean aOz;
    private C3828we.C3829a aiS;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private C3637tk anQ;
    private AppDownloadClient.AppDownloadListenerAdapter awu;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        anf.m10292a(list, this.aBF, this.awu, this.akB);
    }

    public atm(Context context, int i) {
        super(context);
        this.aOl = 0;
        this.aOt = new ArrayList();
        this.aOz = false;
        this.aOA = new AtomicInteger(0);
        this.aOB = new AtomicLong(aav.m12901qp() / 1024);
        this.aOC = new AtomicLong(0L);
        this.aOD = new AtomicInteger(0);
        this.aOE = new ArrayList<>();
        this.aBF = new ArrayList<>();
        this.aOF = Collections.synchronizedMap(new HashMap());
        this.aOG = false;
        this.aGj = "";
        this.aOJ = new ArrayList();
        this.aiS = new C3828we.C3829a() { // from class: com.kingroot.kinguser.atm.1
            @Override // com.kingroot.kinguser.C3828we.C3829a
            /* renamed from: b */
            public void mo1568b(boolean z, C3826wd.C3827a c3827a) {
                if (atm.this.anQ != null) {
                    atm.this.anQ.release();
                }
                if (z && atm.this.aOI != null) {
                    atm.this.aOI.reservationEntity.f2447qq = c3827a.f3861My;
                    atm.this.aOI.reservationEntity.f2448wx = c3827a.f3862Mz;
                    alq.m10547GY().mo10423a(atm.this.aOI.reservationEntity.activityId, atm.this.aOI.pkgName, atm.this.aOI.reservationEntity.f2447qq, atm.this.aOI.reservationEntity.f2448wx, atm.this.aOK);
                }
            }
        };
        this.aOK = new IReservateGameResult.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$2
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult
            public void onResult(final boolean z, String str, String str2, final String str3, final String str4) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (z && atm.this.aOI != null) {
                            if (!TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str4)) {
                                atm.this.aOI.appStatus = 12;
                                C3954zj.m1307c(atm.this.m1417V(2131166401L), 0);
                            } else {
                                atm.this.aOI.appStatus = 11;
                            }
                            and.m10307c(atm.this.aOI.m4188Ih(), atm.this.aOI);
                        }
                    }
                });
            }
        };
        this.aOL = new GameBoxProcessOptimizer.InterfaceC3079a() { // from class: com.kingroot.kinguser.atm.7
            @Override // com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer.InterfaceC3079a
            /* renamed from: b */
            public void mo3770b(double d, int i2) {
            }

            @Override // com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer.InterfaceC3079a
            /* renamed from: f */
            public void mo3769f(String str, int i2, int i3) {
                atm.this.aOA.incrementAndGet();
                atm.this.aOB.addAndGet(i2);
                atm.this.aOC.addAndGet(i2);
                atm.this.aOD.set(i3);
                atm.this.getHandler().sendEmptyMessage(103);
            }

            @Override // com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer.InterfaceC3079a
            /* renamed from: Ow */
            public void mo3772Ow() {
                atm.this.aOA.set(0);
                atm.this.aOC.set(0L);
                atm.this.aOD.set(0);
                atm.this.aOB.set(aav.m12901qp() / 1024);
                atm.this.getHandler().sendEmptyMessage(105);
            }

            @Override // com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer.InterfaceC3079a
            /* renamed from: Ox */
            public void mo3771Ox() {
                atm.this.getHandler().sendEmptyMessage(104);
            }

            @Override // com.kingroot.kinguser.gamebox.common.GameBoxProcessOptimizer.InterfaceC3079a
            /* renamed from: gz */
            public long mo3768gz(int i2) {
                if (i2 == 0) {
                    return 0L;
                }
                if (i2 > 10) {
                    return 4000 / i2;
                }
                return 2000 / i2;
            }
        };
        this.aOM = true;
        this.aON = new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.atm.13
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                ame ameVar = (ame) atm.this.aOE.get(i2);
                if (ameVar != null) {
                    switch (ameVar.getType()) {
                        case 1:
                            if (ameVar instanceof AppDownLoadModel) {
                                atp.C1583c c1583c = null;
                                if (view.getTag() instanceof atp.C1583c) {
                                    c1583c = (atp.C1583c) view.getTag();
                                }
                                if (c1583c != null) {
                                    int[] iArr = new int[2];
                                    int[] iArr2 = new int[2];
                                    c1583c.awb.getLocationOnScreen(iArr);
                                    view.getLocationOnScreen(iArr2);
                                    Bundle bundle = new Bundle();
                                    bundle.putInt("extra_game_icon_left_i", iArr[0]);
                                    bundle.putInt("extra_game_icon_top_i", iArr[1]);
                                    bundle.putInt("extra_game_icon_width_i", c1583c.awb.getWidth());
                                    bundle.putInt("extra_game_icon_height_i", c1583c.awb.getHeight());
                                    bundle.putInt("extra_game_list_item_left_i", iArr2[0]);
                                    bundle.putInt("extra_game_list_item_top_i", iArr2[1]);
                                    bundle.putInt("extra_game_list_item_width_i", view.getWidth());
                                    bundle.putInt("extra_game_list_item_height_i", view.getHeight());
                                    AppBaseModel appBaseModel = (AppBaseModel) ameVar;
                                    bundle.putParcelable("extra_game_modle", appBaseModel);
                                    RecommendGameDetailActivity.m3759a(atm.this.getActivity(), bundle);
                                    ady.m12308tK().m12314eN(appBaseModel.pkgName);
                                    return;
                                }
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
            }
        };
        this.aOO = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.atm.14
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                List<AppBaseModel> m9337iU = asx.m9338OK().m9337iU(atm.this.aGj);
                if (m9337iU != null && !m9337iU.isEmpty()) {
                    if (interfaceC2117a.mo7445nF().size() > 0 && (interfaceC2117a.mo7445nF().get(0) instanceof CountDownLatch)) {
                        ((CountDownLatch) interfaceC2117a.mo7445nF().get(0)).countDown();
                    }
                    for (CountDownLatch countDownLatch : atm.this.aOJ) {
                        try {
                            countDownLatch.await(10L, TimeUnit.SECONDS);
                        } catch (InterruptedException e) {
                        }
                    }
                    atm.this.m9218bf(m9337iU);
                }
            }
        });
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i2, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i2);
                            and.m10315a(atm.this.aOE, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10315a(atm.this.aOE, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), atm.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(atm.this.aOE, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10315a(atm.this.aOE, downloaderTaskInfo);
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(atm.this.aOE, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(atm.this.aOE, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$25.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(atm.this.aOE, downloaderTaskInfo);
                        }
                    }
                });
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$26
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, final int i2, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$26.1
                    @Override // java.lang.Runnable
                    public void run() {
                        and.m10308b(atm.this.aOE, str, i2);
                    }
                });
                if (i2 == 10 || i2 == 11) {
                    beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$26.2
                        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                        public void run() {
                            super.run();
                            if (!TextUtils.isEmpty(str)) {
                                asw.m9343iR(str);
                            }
                            atm.this.getHandler().sendEmptyMessage(101);
                        }
                    }));
                }
            }
        };
        this.aOP = new View.OnClickListener() { // from class: com.kingroot.kinguser.atm.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (atm.this.aOz && atm.this.aOM) {
                    atm.this.m9233Pk();
                }
            }
        };
        this.aBo = new ILoadAppStatusListener.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$29
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDownloadCount(final int i2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$29.1
                    @Override // java.lang.Runnable
                    public void run() {
                        atm.this.aCF.m10015fL(i2);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowWaitDownloadCount(final int i2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$29.2
                    @Override // java.lang.Runnable
                    public void run() {
                        atm.this.aCF.m10014fM(i2);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDot() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$29.3
                    @Override // java.lang.Runnable
                    public void run() {
                        atm.this.aCF.m10016fK(0);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowNormal() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$29.4
                    @Override // java.lang.Runnable
                    public void run() {
                        atm.this.aCF.m10016fK(8);
                    }
                });
            }
        };
        this.akD = new and.C1258a() { // from class: com.kingroot.kinguser.atm.18
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: c */
            public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
                ang.m10275a(atm.this.getActivity(), appDownLoadModel.m4185Ik(), atm.this.aCF.m10024Jm(), appDownLoadModel);
            }

            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: a */
            public void mo9189a(View view, AppReserveModel appReserveModel) {
                alq.m10547GY().mo10423a(appReserveModel.reservationEntity.activityId, appReserveModel.pkgName, C3826wd.f3855Mu.f3861My, C3826wd.f3855Mu.f3862Mz, atm.this.aOK);
            }

            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: a */
            public void mo9190a(Context context2, View view, AppReserveModel appReserveModel) {
                if (atm.this.anQ == null) {
                    atm.this.anQ = C3637tk.m2167cS("gamebox_main_loginaccount");
                }
                if (atm.this.anQ != null) {
                    atm.this.anQ.m2161s(300000L);
                }
                ShareLoginActivity.m12600aK(context2);
            }
        };
        this.aOl = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        aks.m11143BP().m10994Ei();
        if (aii.m11642xL().m11641xM()) {
            this.aGj = "5010006";
            this.aNY = this.aOl == 1 ? 5 : 20;
        } else {
            this.aGj = "5010001";
            this.aNY = 20;
        }
        C3828we.m1571a(this.aiS);
        m9195vf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return super.mo1405oO();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    @SuppressLint({"NewApi"})
    /* renamed from: oG */
    protected View mo1371oG() {
        LayoutInflater layoutInflater = getLayoutInflater();
        View inflate = layoutInflater.inflate(R.layout.page_gamebox_main_body, (ViewGroup) null);
        this.aDS = (ImageView) inflate.findViewById(R.id.back);
        this.aDS.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atm.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                atm.this.getActivity().finish();
            }
        });
        this.aCF = new anx(this.mContext);
        ((FrameLayout) inflate.findViewById(R.id.title_right_container)).addView(this.aCF.getWholeView());
        this.aCF.m10029JN();
        this.aCF.m10024Jm().setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atm.20
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (atm.this.aCF.m10025JR().getVisibility() == 0) {
                    akl.m11257AS().m11215aB(System.currentTimeMillis());
                }
                AppDownloadManagerActivity.m12643aK(atm.this.getActivity());
            }
        });
        this.aDT = (SearchView) inflate.findViewById(R.id.search_box);
        this.aDT.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atm.21
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppSearchActivity.m12639e(atm.this.getActivity(), null, atm.this.aDT.getCurHotWord());
            }
        });
        this.aOq = (GameBoxGamesListView) inflate.findViewById(R.id.list_view);
        this.aOq.setHandler(getHandler());
        inflate.findViewById(R.id.game_box_list_view_empty).setOnClickListener(this.aOP);
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atm.22
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                atm.this.aOt = atu.m9142OH();
                if (atm.this.getActivity() != null && !atm.this.aOG) {
                    atm.this.m9230Pn();
                }
            }
        }));
        this.aOy = new atp(getActivity(), this.aGj, this.aOE, this.awu, this.akB, getHandler());
        this.aOy.m9152a(this.akD);
        this.aOq.setAdapter((ListAdapter) this.aOy);
        this.aOq.setDivider(null);
        this.aOq.setOnItemClickListener(this.aON);
        this.aOm = (GameBoxTitleView) inflate.findViewById(R.id.game_optimize_title);
        View inflate2 = layoutInflater.inflate(R.layout.layout_game_box_local_game, (ViewGroup) this.aOq, false);
        this.aOo = (GameboxGridview) inflate2.findViewById(R.id.game_optimize_body_grid_view);
        this.aOp = new atp.C1582b();
        this.aOp.aPP = inflate2;
        if (abd.m12839qb() >= 11) {
            this.aOo.setLayoutTransition(new LayoutTransition());
            this.aOq.setLayoutTransition(new LayoutTransition());
        }
        this.aOm.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atm.23
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                atm.this.m9233Pk();
            }
        });
        this.aOn = new atq(getContext(), this.aOt);
        this.aOn.setHandler(getHandler());
        this.aOo.setAdapter((ListAdapter) this.aOn);
        this.aOH = new IAppChangedListener.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$8
            @Override // com.kingroot.kinguser.gamebox.common.IAppChangedListener
            public void onPackageAdd(String str) {
                atm.this.getHandler().obtainMessage(101).sendToTarget();
            }

            @Override // com.kingroot.kinguser.gamebox.common.IAppChangedListener
            public void onPackageReplace(String str) {
                atm.this.getHandler().obtainMessage(101).sendToTarget();
            }

            @Override // com.kingroot.kinguser.gamebox.common.IAppChangedListener
            public void onPackageDelete(String str) {
                atm.this.getHandler().obtainMessage(101).sendToTarget();
            }
        };
        aso.m9417Ol().m9416a(this.aOH);
        this.aOr = (Button) inflate.findViewById(R.id.game_optimize_create_btn);
        if (this.aOl == 2) {
            this.aOr.setVisibility(8);
        } else if (this.aOG) {
            this.aOr.setVisibility(8);
        } else {
            this.aOr.setVisibility(0);
            this.aOr.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.atm.24
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    atm.this.m9215cJ(false);
                    ady.m12308tK().mo1746bi(100277);
                }
            });
        }
        if (aks.m11143BP().m11051Dd() || aks.m11143BP().m11055DZ()) {
            aks.m11143BP().m10863bQ(false);
            if (abc.m12845qK().isRootPermition() && !this.aOG) {
                m9215cJ(true);
                ady.m12308tK().mo1746bi(100277);
            }
        }
        this.aOv = C3953zi.m1311pr().getString(R.string.gamebox_procss_optimize_detail);
        this.aOw = C3953zi.m1311pr().getString(R.string.gamebox_memory_release_detail);
        this.aOs = (ListView) inflate.findViewById(R.id.optimize_detail_list);
        this.aOu = new ArrayList<>();
        this.aOx = new ato(this.mContext, this.aOu);
        this.aOs.setAdapter((ListAdapter) this.aOx);
        this.aOs.setDivider(C3953zi.m1311pr().getDrawable(R.drawable.list_view_game_box_detail_divider_shape));
        this.aOs.setEnabled(false);
        return inflate;
    }

    /* renamed from: vf */
    private void m9195vf() {
        this.aOJ.clear();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.aOJ.add(countDownLatch);
        CountDownLatch countDownLatch2 = new CountDownLatch(1);
        this.aOJ.add(countDownLatch2);
        this.aOE.clear();
        this.aBF.clear();
        m9219b(countDownLatch);
        m9224a(countDownLatch2);
    }

    /* renamed from: a */
    private void m9224a(final CountDownLatch countDownLatch) {
        alq.m10547GY().mo10420b(5012416, 20, 0, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$10
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                AppBaseModel appBaseModel = null;
                Collections.shuffle(list);
                Iterator<AppBaseModel> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AppBaseModel next = it.next();
                    if (!C3952zh.m1312pq().m1314du(next.pkgName) && next.reservationEntity != null && !next.reservationEntity.m4151Iu() && !next.reservationEntity.onlineFlag) {
                        appBaseModel = next;
                        break;
                    }
                }
                countDownLatch.countDown();
                for (CountDownLatch countDownLatch2 : atm.this.aOJ) {
                    try {
                        countDownLatch2.await(10L, TimeUnit.SECONDS);
                    } catch (InterruptedException e) {
                    }
                }
                Message obtainMessage = atm.this.getHandler().obtainMessage(112);
                obtainMessage.obj = appBaseModel;
                obtainMessage.sendToTarget();
            }
        });
    }

    /* renamed from: b */
    private void m9219b(CountDownLatch countDownLatch) {
        beg.m7461Zj().m7454a(this.aOO, countDownLatch);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        m9234Pj();
        this.aOm.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.atm.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                atm.this.aOm.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                atm.this.m9232Pl();
            }
        });
        amb.m10458Ib().mo10398a(2, new IGetSplashResult.Stub() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$12
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IGetSplashResult
            public void onResult(final AppBaseModel appBaseModel) {
                if (appBaseModel != null) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.gamebox.foreground.GameBoxMainPage$12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!atm.this.m1404oP()) {
                                PopRecommendAppSplashActivity.m12616a(atm.this.getActivity(), appBaseModel, 2);
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.aDT != null) {
            this.aDT.m4117fN(5012112);
        }
        m9235Pi();
        Iterator<ame> it = this.aOE.iterator();
        while (it.hasNext()) {
            ame next = it.next();
            if (next instanceof AppDownLoadModel) {
                AppDownLoadModel appDownLoadModel = (AppDownLoadModel) next;
                and.m10320a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
            }
        }
        m9240Jf();
        amz.m10365II().m10358b(this.aBo);
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atm.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                atm.this.m9230Pn();
            }
        }));
        getHandler().sendEmptyMessageDelayed(101, 200L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        C3828we.m1569b(this.aiS);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 100:
                m9223b(message.what, message.obj);
                return;
            case 101:
                m9237Pg();
                return;
            case 102:
                this.aOn.notifyDataSetChanged();
                return;
            case 103:
                m9234Pj();
                return;
            case 104:
                this.aOm.m3750gC(this.aOD.get());
                return;
            case 105:
                this.aOm.m3753Px();
                return;
            case 106:
                this.aOm.setOkState(message.arg1);
                return;
            case 107:
                if (message.obj instanceof List) {
                    try {
                        List<AppBaseModel> list = (List) message.obj;
                        Collections.sort(list, new Comparator<AppBaseModel>() { // from class: com.kingroot.kinguser.atm.4
                            @Override // java.util.Comparator
                            /* renamed from: a */
                            public int compare(AppBaseModel appBaseModel, AppBaseModel appBaseModel2) {
                                if (appBaseModel.position < appBaseModel2.position) {
                                    return -1;
                                }
                                if (appBaseModel.position > appBaseModel2.position) {
                                    return 1;
                                }
                                return 0;
                            }
                        });
                        m9217bh(list);
                        return;
                    } catch (ClassCastException e) {
                        return;
                    }
                }
                return;
            case 108:
            case 113:
            case 114:
            case 115:
            case C4393util.S_BABYLH_EXPIRED /* 116 */:
            case 117:
            case 118:
            default:
                return;
            case 109:
                if (message.obj instanceof String) {
                    this.aOF.put((String) message.obj, Integer.valueOf(message.arg1));
                    return;
                }
                return;
            case 110:
                if (this.aOn != null && this.aOn.aPT) {
                    this.aOn.aPT = false;
                    getHandler().sendEmptyMessage(102);
                    return;
                }
                return;
            case 111:
                this.aOm.m3752Py();
                return;
            case 112:
                if (message.obj instanceof AppBaseModel) {
                    this.aOI = new AppReserveModel((AppBaseModel) message.obj);
                    atp.C1581a c1581a = new atp.C1581a();
                    c1581a.title = C3953zi.m1311pr().getString(R.string.reserve_page_title);
                    c1581a.aPN = true;
                    c1581a.aPO = new View.OnClickListener() { // from class: com.kingroot.kinguser.atm.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            ReserveActivity.m12613aK(atm.this.mContext);
                        }
                    };
                    this.aOE.add(Math.min(this.aOE.size(), 1), c1581a);
                    this.aOE.add(Math.min(this.aOE.size(), 2), this.aOI);
                    this.aOy.notifyDataSetChanged();
                    return;
                }
                return;
            case 119:
                this.aOr.setVisibility(8);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        m9239Pe();
        amz.m10365II().m10361a(this.aBo);
        amz.m10365II().m9881a(this.awu);
        aso.m9417Ol().mo9330a(this.akB);
        aso.m9417Ol().m9415b(this.aOH);
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        super.onPause();
    }

    /* renamed from: Pe */
    private void m9239Pe() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atm.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                for (Map.Entry entry : atm.this.aOF.entrySet()) {
                    ((Integer) entry.getValue()).intValue();
                    ady.m12308tK().m12313eO((String) entry.getKey());
                }
                atm.this.aOF.clear();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Pf */
    public void m9238Pf() {
        if (acu.m12571g(asz.m9328OL().m9327OM().mo9304OP(), 180000L)) {
            GameBoxProcessOptimizer.m3776a(this.aOL);
            C3954zj.m1308c("[游戏加速] killing");
            return;
        }
        Message obtainMessage = getHandler().obtainMessage();
        obtainMessage.what = 111;
        getHandler().sendMessage(obtainMessage);
    }

    /* renamed from: Pg */
    private void m9237Pg() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atm.8
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                atm.this.aOt = atu.m9142OH();
                if (atm.this.getActivity() != null) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.atm.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (C3942yy.m1351d(atm.this.aOt)) {
                                atm.this.aOn.aPT = false;
                            }
                            atm.this.m9236Ph();
                            if (atm.this.aOn != null) {
                                atm.this.aOn.m9146aZ(atm.this.aOt);
                                atm.this.aOn.notifyDataSetChanged();
                            }
                        }
                    });
                }
            }
        }));
    }

    /* renamed from: b */
    private void m9223b(int i, Object obj) {
        if (obj != null && (obj instanceof ats)) {
            ats atsVar = (ats) obj;
            if (this.aOn != null && this.aOn.aPT) {
                asw.m9342iS(atsVar.adZ);
                asu.m9363iP(atsVar.adZ);
                m9235Pi();
                getHandler().sendEmptyMessage(101);
            } else if (atsVar.aQc) {
                GameBoxAddActivity.m3767c(getActivity());
            } else {
                atu.m9135w(getContext(), atsVar.adZ);
                aks.m11143BP().m10718n(atsVar.adZ, System.currentTimeMillis());
                ArrayList arrayList = new ArrayList();
                arrayList.add(atsVar.adZ);
                if (this.aOl == 1) {
                    ady.m12308tK().mo1747a(100305, (List<Object>) arrayList);
                } else if (this.aOl == 2) {
                    ady.m12308tK().mo1747a(100284, (List<Object>) arrayList);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.aOz && this.aOM) {
                m9233Pk();
                return true;
            } else if (this.aOn != null && this.aOn.aPT) {
                this.aOn.aPT = false;
                getHandler().sendEmptyMessage(102);
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ph */
    public void m9236Ph() {
        if (this.aOt != null) {
            if (this.aOt == null || this.aOt.size() <= 0 || !this.aOt.get(this.aOt.size() - 1).aQc) {
                ats atsVar = new ats();
                atsVar.mIcon = getResources().getDrawable(R.drawable.gamebox_add_grid_item_selector);
                atsVar.mAppName = getResources().getString(R.string.gamebox_body_grid_item_added);
                atsVar.aQc = true;
                atsVar.aQd = null;
                this.aOt.add(atsVar);
            }
        }
    }

    /* renamed from: Pi */
    private void m9235Pi() {
        List<ats> m9148Mq;
        if (this.aOn != null && (m9148Mq = this.aOn.m9148Mq()) != null && m9148Mq.size() != 0) {
            int size = m9148Mq.size();
            for (int i = 0; i < size; i++) {
                if (m9148Mq.get(i) != null && m9148Mq.get(i).aQd != null) {
                    m9148Mq.get(i).aQd.end();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cJ */
    public void m9215cJ(boolean z) {
        asv.m9360cJ(z);
        if (!z) {
            GameBoxGuideActivityDialog.m3764Pd();
        }
        aks.m11143BP().m11058DW();
        m9229Po();
    }

    /* renamed from: Pj */
    private void m9234Pj() {
        this.aOu.removeAll(this.aOu);
        ato.C1574a c1574a = new ato.C1574a();
        c1574a.aPE = String.format(this.aOv, Integer.valueOf(this.aOA.get()));
        c1574a.aPD = C3953zi.m1311pr().getString(R.string.gamebox_procss_optimize_done);
        this.aOu.add(c1574a);
        ato.C1574a c1574a2 = new ato.C1574a();
        c1574a2.aPE = String.format(this.aOw, act.m12654b(this.aOB.get() * 1024, true));
        c1574a2.aPD = C3953zi.m1311pr().getString(R.string.gamebox_memory_release_done);
        this.aOu.add(c1574a2);
        this.aOx.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Pk */
    public void m9233Pk() {
        if (!this.aOm.m3751Pz() && this.aOM) {
            int[] iArr = new int[2];
            this.aOq.getLocationInWindow(iArr);
            int i = iArr[1];
            this.aOM = false;
            if (!this.aOz) {
                this.aOz = true;
                this.aOm.setArrowState(this.aOz);
                bhk.m6996a(this.aOq, null, 0.0f, getWholeView().getHeight() - i);
                bhk.m6996a(this.aOs, null, -this.aOs.getHeight(), 0.0f);
                bhk.m6989d(this.aOs, null);
                bhk.m6990c(this.aOq, new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.atm.9
                    @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        atm.this.aOM = true;
                    }
                });
                return;
            }
            this.aOz = false;
            this.aOm.setArrowState(this.aOz);
            bhk.m6996a(this.aOq, null, i, 0.0f);
            bhk.m6996a(this.aOs, null, 0.0f, -this.aOs.getHeight());
            bhk.m6990c(this.aOs, null);
            bhk.m6989d(this.aOq, new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.atm.10
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    atm.this.aOM = true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Pl */
    public void m9232Pl() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atm.11
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                atm.this.aOt = atu.m9142OH();
                String m11056DY = aks.m11143BP().m11056DY();
                for (ats atsVar : atm.this.aOt) {
                    if (atsVar != null && atsVar.adZ != null && atsVar.adZ.equals(m11056DY)) {
                        atm.this.m9231Pm();
                        return;
                    }
                }
                atm.this.m9238Pf();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Pm */
    public void m9231Pm() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atm.12
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                GameBoxProcessOptimizer.OptimizeResult m3780Ot = GameBoxProcessOptimizer.m3780Ot();
                if (m3780Ot != null) {
                    atm.this.aOA.set(m3780Ot.processCountOptimized);
                    atm.this.aOC.set(m3780Ot.memoryreReleased);
                    atm.this.aOD.set(m3780Ot.optimizePercent);
                    atm.this.getHandler().sendEmptyMessage(103);
                    Message obtainMessage = atm.this.getHandler().obtainMessage();
                    obtainMessage.what = 106;
                    obtainMessage.arg1 = m3780Ot.optimizePercent;
                    atm.this.getHandler().sendMessage(obtainMessage);
                    return;
                }
                atm.this.m9238Pf();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bf */
    public void m9218bf(List<AppBaseModel> list) {
        Message obtainMessage = getHandler().obtainMessage();
        obtainMessage.what = 107;
        obtainMessage.obj = list;
        obtainMessage.sendToTarget();
    }

    /* renamed from: bh */
    private void m9217bh(List<AppBaseModel> list) {
        this.aOE.add(Math.min(this.aOE.size(), 0), this.aOp);
        if (!C3942yy.m1351d(list)) {
            Iterator<AppBaseModel> it = list.iterator();
            this.aOt = atu.m9142OH();
            while (it.hasNext()) {
                AppBaseModel next = it.next();
                if (next != null) {
                    Iterator<ats> it2 = this.aOt.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (it2.next().adZ.equals(next.pkgName)) {
                                it.remove();
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
            }
            if (!C3942yy.m1351d(list)) {
                atp.C1581a c1581a = new atp.C1581a();
                c1581a.title = C3953zi.m1311pr().getString(R.string.gamebox_recommend_title);
                this.aOE.add(c1581a);
                for (AppBaseModel appBaseModel : list) {
                    this.aOE.add(new AppDownLoadModel(appBaseModel));
                    this.aBF.add(appBaseModel.pkgName);
                }
                m9240Jf();
            }
        }
        this.aOy.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Pn */
    public void m9230Pn() {
        try {
            this.aOG = asv.m9362Oy();
        } catch (Exception e) {
        }
        if (this.aOG) {
            getHandler().sendEmptyMessage(119);
        }
    }

    /* renamed from: Po */
    private void m9229Po() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.atm.16
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    Thread.sleep(4000L);
                } catch (Exception e) {
                }
                atm.this.m9230Pn();
                if (atm.this.aOG) {
                    atm.this.getHandler().sendEmptyMessage(119);
                }
            }
        }));
    }

    /* renamed from: Jf */
    private void m9240Jf() {
        final ArrayList arrayList = new ArrayList(this.aOE);
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.atm.19
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ame ameVar = (ame) it.next();
                    if (ameVar instanceof AppDownLoadModel) {
                        and.m10322a((AppDownLoadModel) ameVar, ((AppDownLoadModel) ameVar).m4188Ih(), atm.this.awu, atm.this.akB);
                    }
                }
            }
        }));
    }
}
