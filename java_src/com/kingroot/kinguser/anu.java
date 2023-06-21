package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingcore.uilib.ProgressWhell;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.activitys.AppSearchActivity;
import com.kingroot.kinguser.activitys.AppsMarketWellChosenAppsActivity;
import com.kingroot.kinguser.activitys.PopRecommendAppSplashActivity;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.alf;
import com.kingroot.kinguser.alj;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.anu;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.auf;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownloadRecommendModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.view.SearchView;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class anu extends ans implements alj.InterfaceC1137i, alj.InterfaceC1138j, auf.InterfaceC1606b {
    private static final String TAG = aiq.arY + "_AppsMarketMainPage";
    private static final int aDF = C3953zi.m1311pr().getColor(R.color.transparent);
    private ArrayList<ame> aAY;
    private AppDownLoadModel aBD;
    private AppDownLoadModel aBE;
    private and.C1258a aBJ;
    private ILoadRecommendAppsListener aBl;
    private ILoadAppStatusListener aBo;
    private anx aCF;
    private RecyclerView aDG;
    private alj aDH;
    private auf.InterfaceC1605a aDI;
    private List<amm> aDJ;
    private View aDK;
    private List<AppDownLoadModel> aDL;
    private List<AppBaseModel> aDM;
    private List<AppBaseModel> aDN;
    private List<AppBaseModel> aDO;
    private List<AppBaseModel> aDP;
    private List<AvailUpdateInfo> aDQ;
    private View aDR;
    private ImageView aDS;
    private SearchView aDT;
    private int aDU;
    private TextView aDV;
    private ImageView aDW;
    private boolean aDX;
    private View aDY;
    private boolean aDZ;
    private IAppDownloadListener.Stub aDv;
    private boolean aEa;
    private Runnable aEb;
    private int aEc;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private ProgressWhell amm;
    private alf aoj;
    private List<AppBaseModel> axb;
    private RecyclerView.OnScrollListener mScrollListener;

    public anu(Context context) {
        super(context);
        this.aDL = new ArrayList();
        this.aDM = new ArrayList();
        this.aDN = new ArrayList();
        this.aDO = new ArrayList();
        this.axb = new ArrayList();
        this.aDP = new ArrayList();
        this.aDQ = new ArrayList();
        this.aDU = 0;
        this.aDX = false;
        this.aDZ = false;
        this.aEa = true;
        this.aAY = new ArrayList<>();
        this.aBJ = new and.C1258a() { // from class: com.kingroot.kinguser.anu.1
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: c */
            public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
                ang.m10275a(anu.this.getActivity(), appDownLoadModel.m4185Ik(), anu.this.aCF.m10024Jm(), appDownLoadModel);
            }
        };
        this.mScrollListener = new RecyclerView.OnScrollListener() { // from class: com.kingroot.kinguser.anu.12
            @Override // android.support.p007v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                anu.this.m10072b(recyclerView, i2);
            }
        };
        this.aEc = 8;
        this.aDv = new IAppDownloadListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$20
            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
                anu.this.m10061hE(downloaderTaskInfo.m4049KM());
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
                anu.this.m10061hE(downloaderTaskInfo.m4049KM());
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), anu.this.akB);
                anu.this.m10061hE(downloaderTaskInfo.m4049KM());
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
                anu.this.m10061hE(downloaderTaskInfo.m4049KM());
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(DownloaderTaskInfo downloaderTaskInfo) {
                anu.this.m10061hE(downloaderTaskInfo.m4049KM());
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(DownloaderTaskInfo downloaderTaskInfo) {
                anu.this.m10061hE(downloaderTaskInfo.m4049KM());
            }

            @Override // com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(DownloaderTaskInfo downloaderTaskInfo) {
                anu.this.m10061hE(downloaderTaskInfo.m4049KM());
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$22
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$22.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AtomicInteger atomicInteger = new AtomicInteger(-1);
                        if (anu.this.m10073a(str, atomicInteger) != null && atomicInteger.get() != -1) {
                            anu.this.aDH.m10590fg(atomicInteger.get());
                        }
                    }
                });
            }
        };
        this.akD = new and.C1258a() { // from class: com.kingroot.kinguser.anu.14
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: c */
            public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
                ang.m10275a(anu.this.getActivity(), appDownLoadModel.m4185Ik(), anu.this.aCF.m10024Jm(), appDownLoadModel);
            }

            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: d */
            public void mo10042d(View view, AppDownLoadModel appDownLoadModel) {
                if (appDownLoadModel != null && anu.this.aBD != appDownLoadModel) {
                    anu.this.aBE = anu.this.aBD;
                    anu.this.aBD = appDownLoadModel;
                    alq.m10547GY().mo10430a(5012413, anu.this.aBD.pkgName, 30, 0, anu.this.aBD.groupId, anu.this.aBl);
                }
            }
        };
        this.aBl = new ILoadRecommendAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$24
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener
            public void onReceive(int i, int i2, final String str, List<AppBaseModel> list) {
                if (list.size() > 0 && anu.this.aBD != null && anu.this.aBD.pkgName.equals(str)) {
                    C3952zh m1312pq = C3952zh.m1312pq();
                    final ArrayList arrayList = new ArrayList();
                    for (AppBaseModel appBaseModel : list) {
                        if (!m1312pq.m1314du(appBaseModel.pkgName) && !anu.this.aBD.pkgName.equals(appBaseModel.pkgName)) {
                            arrayList.add(new AppDownloadRecommendModel(appBaseModel));
                        }
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$24.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AppDownLoadModel appDownLoadModel;
                            ArrayList arrayList2;
                            ArrayList arrayList3;
                            ArrayList arrayList4;
                            alf alfVar;
                            AppDownLoadModel appDownLoadModel2;
                            AppDownLoadModel appDownLoadModel3;
                            AppDownLoadModel appDownLoadModel4;
                            if (anu.this.aBD != null && anu.this.aBD.pkgName.equals(str) && anu.this.aBD.m4184Il() != null) {
                                appDownLoadModel = anu.this.aBE;
                                if (appDownLoadModel != null) {
                                    appDownLoadModel2 = anu.this.aBE;
                                    if (appDownLoadModel2.m4184Il() != null) {
                                        appDownLoadModel3 = anu.this.aBE;
                                        appDownLoadModel3.m4184Il().setVisibility(8);
                                        appDownLoadModel4 = anu.this.aBE;
                                        appDownLoadModel4.isExpand = false;
                                    }
                                }
                                arrayList2 = anu.this.aAY;
                                synchronized (arrayList2) {
                                    arrayList3 = anu.this.aAY;
                                    arrayList3.clear();
                                    arrayList4 = anu.this.aAY;
                                    arrayList4.addAll(arrayList);
                                }
                                ady.m12308tK().mo1746bi(100702);
                                alfVar = anu.this.aoj;
                                alfVar.m10626b(anu.this.aBD);
                            }
                        }
                    });
                }
            }
        };
        this.aBo = new ILoadAppStatusListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$25
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$25.1
                    @Override // java.lang.Runnable
                    public void run() {
                        anu.this.aCF.m10015fL(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowWaitDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$25.2
                    @Override // java.lang.Runnable
                    public void run() {
                        anu.this.aCF.m10014fM(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDot() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$25.3
                    @Override // java.lang.Runnable
                    public void run() {
                        anu.this.aCF.m10016fK(0);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowNormal() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketMainPage$25.4
                    @Override // java.lang.Runnable
                    public void run() {
                        anu.this.aCF.m10016fK(8);
                    }
                });
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (AppDownLoadModel appDownLoadModel : this.aDL) {
            arrayList.add(appDownLoadModel.pkgName);
        }
        anf.m10292a(list, arrayList, this.aDv, this.akB);
        this.aoj.m10629GN();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return super.mo1405oO();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.app_market_main_layout, (ViewGroup) null);
        this.aDR = inflate.findViewById(R.id.top_bar);
        this.aDY = inflate.findViewById(R.id.top_bar_outer);
        this.aDS = (ImageView) inflate.findViewById(R.id.back);
        this.aCF = new anx(this.mContext);
        ((FrameLayout) inflate.findViewById(R.id.title_right_container)).addView(this.aCF.getWholeView());
        this.aCF.m10030JM();
        this.aDT = (SearchView) inflate.findViewById(R.id.search_box);
        this.aDV = (TextView) inflate.findViewById(R.id.search_text);
        this.aDW = (ImageView) inflate.findViewById(R.id.search_ic);
        this.aDG = (RecyclerView) inflate.findViewById(R.id.main_rv);
        this.aDK = inflate.findViewById(R.id.data_exception);
        this.aDK.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anu.15
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                anu.this.m10088JE();
            }
        });
        this.aDG.setLayoutManager(new FixLinearLayoutManager(getActivity()));
        this.aDG.setOverScrollMode(2);
        this.aDG.addOnScrollListener(this.mScrollListener);
        this.aDJ = new ArrayList();
        this.aDH = new alj(getActivity(), this.aDJ, this.axb);
        this.aDH.m10599a((alj.InterfaceC1138j) this);
        this.aDH.m10600a((alj.InterfaceC1137i) this);
        this.aDG.setAdapter(this.aDH);
        this.aDG.setItemAnimator(new DefaultItemAnimator());
        this.aCF.m10024Jm().setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anu.16
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (anu.this.aCF.m10025JR().getVisibility() == 0) {
                    akl.m11257AS().m11215aB(System.currentTimeMillis());
                }
                anu.this.aDI.mo9055j(anu.this.getActivity());
            }
        });
        this.aDS.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anu.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                anu.this.getActivity().finish();
            }
        });
        this.aDT.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anu.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppSearchActivity.m12639e(anu.this.getActivity(), null, anu.this.aDT.getCurHotWord());
            }
        });
        this.amm = (ProgressWhell) inflate.findViewById(R.id.progress_iv);
        this.amm.setVisibility(0);
        this.amm.setBarColor(C3953zi.m1311pr().getColor(R.color.blue_0));
        this.amm.setProgress(0.0f);
        this.amm.setBarWidth(abg.m12835r(2.0f));
        this.amm.setCircleRadius(abg.m12835r(20.0f));
        this.amm.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.anu.19
            @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
            /* renamed from: d */
            public void mo6827d(float f) {
                if (f == 0.0f) {
                    anu.this.amm.setProgress(1.0f);
                } else if (f == 1.0f) {
                    anu.this.amm.setProgress(0.0f);
                }
            }
        });
        this.aoj = new alf(this.mContext, this.aAY);
        this.aoj.m10621fe(4);
        this.aoj.m10628a(this.aBJ);
        this.aDH.m10602a(this.aoj);
        m10088JE();
        bfl.m7265a(getHandler(), 11, this.aDG);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: JE */
    public void m10088JE() {
        this.aDG.setVisibility(8);
        this.aDK.setVisibility(8);
        m10085JJ();
        this.aDI.mo9075PK();
        this.aDI.mo9074PL();
        this.aDI.mo9073PM();
        this.aDI.mo9072PN();
        this.aDI.mo9071PO();
        this.aDI.mo9070PP();
        this.aDI.mo9069PQ();
        this.aDI.mo9068PR();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        if (this.aDT != null) {
            this.aDT.m4117fN(5012111);
        }
        for (int i = 0; i < this.aDL.size(); i++) {
            this.aDH.m10590fg(i);
        }
        m10084Jf();
        amz.m10365II().m10358b(this.aBo);
        if (this.aEa) {
            this.aDG.scrollToPosition(0);
            this.aEa = false;
        }
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Jf */
    public void m10084Jf() {
        final ArrayList arrayList = new ArrayList(this.aDL);
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anu.20
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                for (AppDownLoadModel appDownLoadModel : arrayList) {
                    if (appDownLoadModel != null) {
                        and.m10322a(appDownLoadModel, appDownLoadModel.m4188Ih(), anu.this.aDv, anu.this.akB);
                    }
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        amz.m10365II().m10361a(this.aBo);
        amz.m10365II().m9881a(this.aDv);
        aso.m9417Ol().mo9330a(this.akB);
        if (this.aEb != null) {
            C3840wl.m1550d(this.aEb);
        }
        super.onStop();
    }

    /* renamed from: a */
    public void m10074a(auf.InterfaceC1605a interfaceC1605a) {
        this.aDI = interfaceC1605a;
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: aM */
    public void mo9100aM(final List<AppBaseModel> list) {
        if (list != null) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.21
                @Override // java.lang.Runnable
                public void run() {
                    anu.this.aDM.clear();
                    anu.this.aDM.addAll(list);
                }
            });
        }
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: JF */
    public void mo9104JF() {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.2
            @Override // java.lang.Runnable
            public void run() {
                anu.this.aDM.clear();
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: aN */
    public void mo9099aN(final List<AppBaseModel> list) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.3
            @Override // java.lang.Runnable
            public void run() {
                anu.this.aDN.clear();
                if (list != null) {
                    List subList = list.subList(0, Math.min(12, list.size()));
                    Collections.shuffle(subList);
                    anu.this.aDN.addAll(subList);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: aO */
    public void mo9098aO(final List<AppBaseModel> list) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.4
            @Override // java.lang.Runnable
            public void run() {
                anu.this.aDO.clear();
                if (list != null) {
                    List subList = list.subList(0, Math.min(12, list.size()));
                    Collections.shuffle(subList);
                    anu.this.aDO.addAll(subList);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: aP */
    public void mo9097aP(final List<AppBaseModel> list) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.5
            @Override // java.lang.Runnable
            public void run() {
                anu.this.axb.clear();
                if (list != null) {
                    anu.this.axb.addAll(list.subList(0, Math.min(4, list.size())));
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: aQ */
    public void mo9096aQ(final List<AppBaseModel> list) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.6
            @Override // java.lang.Runnable
            public void run() {
                anu.this.aDP.clear();
                if (list != null) {
                    anu.this.aDP.addAll(list.subList(0, Math.min(3, list.size())));
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: aR */
    public void mo9095aR(final List<AvailUpdateInfo> list) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.7
            @Override // java.lang.Runnable
            public void run() {
                anu.this.aDQ.clear();
                if (list != null) {
                    anu.this.aDQ.addAll(list);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: a */
    public void mo9101a(final List<AppBaseModel> list, final boolean z, final boolean z2) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.8
            @Override // java.lang.Runnable
            public void run() {
                int i = 0;
                if (!z2) {
                    anu.this.aDL.clear();
                }
                if (list != null) {
                    if (list.size() == 0 && z2) {
                        anu.this.aDH.m10592cw(false);
                    }
                    int size = anu.this.aDL.size();
                    anu.this.aDL.addAll(AppDownLoadModel.m4176az(list));
                    anf.m10290aB(anu.this.aDL);
                    int size2 = anu.this.aDL.size() - size;
                    if (z) {
                        while (true) {
                            int i2 = i;
                            if (i2 >= C3942yy.m1350e(anu.this.aDJ).size()) {
                                break;
                            }
                            amm ammVar = (amm) anu.this.aDJ.get(i2);
                            if ((ammVar instanceof amd) && anu.this.aDL.contains(((amd) ammVar).m10443Io())) {
                                anu.this.aEc = i2;
                                break;
                            }
                            i = i2 + 1;
                        }
                        if (anu.this.aEc > 0) {
                            anu.this.m10063h(anu.this.aEc, anu.this.aDL.size() - size2, size2);
                        }
                    }
                    anu.this.m10084Jf();
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: JG */
    public void mo9103JG() {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.9
            @Override // java.lang.Runnable
            public void run() {
                anu.this.aDG.setVisibility(0);
                anu.this.aDK.setVisibility(0);
                anu.this.m10087JH();
                anu.this.m10086JI();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: JH */
    public void m10087JH() {
        this.aDH.m10591cx(false);
        if (this.aDJ.size() - 1 >= 0 && (this.aDJ.get(0) instanceof ami)) {
            this.aDJ.remove(0);
        }
        this.aDJ.add(0, new ami(new ArrayList()));
        this.aDH.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: JI */
    public void m10086JI() {
        this.amm.setVisibility(8);
        this.amm.m13556gT();
    }

    /* renamed from: JJ */
    private void m10085JJ() {
        this.amm.setVisibility(0);
        this.amm.m13555gU();
    }

    /* renamed from: com.kingroot.kinguser.anu$10 */
    /* loaded from: classes.dex */
    class RunnableC130810 implements Runnable {
        RunnableC130810() {
        }

        @Override // java.lang.Runnable
        public void run() {
            anu.this.aDG.setVisibility(0);
            anu.this.aDJ.clear();
            anu.this.aDK.setVisibility(8);
            anu.this.m10086JI();
            if (!C3942yy.m1351d(anu.this.aDO) || !C3942yy.m1351d(anu.this.aDN) || !C3942yy.m1351d(anu.this.aDL)) {
                if (C3942yy.m1351d(anu.this.aDM)) {
                    anu.this.m10087JH();
                } else {
                    anu.this.aDH.m10591cx(true);
                    ArrayList arrayList = new ArrayList();
                    int min = Math.min(anu.this.aDM.size(), 5);
                    Random random = new Random();
                    while (arrayList.size() < min) {
                        AppBaseModel appBaseModel = (AppBaseModel) anu.this.aDM.get(random.nextInt(min));
                        if (!arrayList.contains(appBaseModel)) {
                            arrayList.add(appBaseModel);
                        }
                    }
                    anu.this.aDJ.add(0, new ami(arrayList));
                }
                anu.this.aDJ.add(Math.min(1, anu.this.aDJ.size()), new amo());
                if (!C3942yy.m1351d(anu.this.aDP) || !C3942yy.m1351d(anu.this.aDQ)) {
                    boolean z = acu.m12571g(akl.m11257AS().m11246BD(), 259200000L) && acu.m12571g(akl.m11257AS().m11219Bx(), 172800000L);
                    boolean m12571g = acu.m12571g(akl.m11257AS().m11247BC(), 172800000L);
                    if (C3942yy.m1351d(anu.this.aDQ) || !z) {
                        if (!C3942yy.m1351d(anu.this.aDP) && m12571g) {
                            anu.this.aDJ.add(Math.min(2, anu.this.aDJ.size()), new amp(anu.this.aDP));
                        }
                    } else {
                        anu.this.aDJ.add(Math.min(2, anu.this.aDJ.size()), new amh(anu.this.aDQ));
                        akl.m11257AS().m11212aE(System.currentTimeMillis());
                        ady.m12308tK().mo1746bi(100722);
                    }
                }
                if (!C3942yy.m1351d(anu.this.aDO)) {
                    anu.this.aDJ.add(Math.min(3, anu.this.aDJ.size()), new amk(anu.this.aDO, anu.this.m1417V(2131166239L), new View.OnClickListener() { // from class: com.kingroot.kinguser.anu.10.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            anu.this.aDI.mo9057h(anu.this.getActivity());
                        }
                    }));
                }
                if (!C3942yy.m1351d(anu.this.axb)) {
                    anu.this.aDJ.add(Math.min(4, anu.this.aDJ.size()), new amj(anu.this.axb));
                }
                if (!C3942yy.m1351d(anu.this.aDN)) {
                    anu.this.aDJ.add(Math.min(5, anu.this.aDJ.size()), new amk(anu.this.aDN, anu.this.m1417V(2131166241L), new View.OnClickListener() { // from class: com.kingroot.kinguser.anu.10.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            anu.this.aDI.mo9056i(anu.this.getActivity());
                        }
                    }));
                }
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                arrayList2.add(Integer.valueOf((int) R.drawable.apps_market_pay_safety_entry));
                arrayList2.add(Integer.valueOf((int) R.drawable.apps_market_individuation_entry));
                arrayList2.add(Integer.valueOf((int) R.drawable.apps_market_new_pop_entry));
                arrayList2.add(Integer.valueOf((int) R.drawable.apps_market_new_game_recommend_entry));
                arrayList2.add(Integer.valueOf((int) R.drawable.apps_market_top_most_download_entry));
                arrayList3.add(5012405);
                arrayList3.add(5012406);
                arrayList3.add(5012408);
                arrayList3.add(5012409);
                arrayList3.add(5012410);
                arrayList4.add(Integer.valueOf((int) R.string.apps_market_main_topic_title_pay_safety));
                arrayList4.add(Integer.valueOf((int) R.string.apps_market_main_topic_title_individuation));
                arrayList4.add(Integer.valueOf((int) R.string.apps_market_main_topic_title_new_pop));
                arrayList4.add(Integer.valueOf((int) R.string.apps_market_main_topic_title_new_game_recommend));
                arrayList4.add(Integer.valueOf((int) R.string.apps_market_main_topic_title_most_download_app));
                anu.this.aDJ.add(Math.min(6, anu.this.aDJ.size()), new amr(arrayList4, arrayList2, arrayList3));
                if (!C3942yy.m1351d(anu.this.aDL)) {
                    anu.this.aDJ.add(Math.min(7, anu.this.aDJ.size()), new amq(anu.this.m1417V(2131166240L)));
                    anu.this.aEc = Math.min(8, anu.this.aDJ.size());
                    anu.this.m10063h(anu.this.aEc, 0, anu.this.aDL.size());
                    anu.this.aDJ.add(new amn());
                }
                anu.this.aDH.notifyItemChanged(0, Integer.valueOf(anu.this.aDJ.size() - 1));
                ady.m12308tK().mo1746bi(100588);
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.anu.10.3
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        if (!AppsMarketWellChosenAppsActivity.m12634vs()) {
                            anu.this.aDI.mo9066PT();
                            return;
                        }
                        final int intValue = alx.m10508HB().mo10407HD().intValue();
                        anu.this.aEb = new Runnable() { // from class: com.kingroot.kinguser.anu.10.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Bundle extras = anu.this.getIntent().getExtras();
                                if (extras != null && !anu.this.m1404oP() && extras.getBoolean("show_well_chosen", false) && !anu.this.aDZ) {
                                    AppsMarketWellChosenAppsActivity.m12635f(anu.this.getContext(), intValue);
                                    anu.this.aDZ = true;
                                }
                            }
                        };
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.10.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!anu.this.m1404oP()) {
                                    C3840wl.m1551c(anu.this.aEb, 800L);
                                }
                            }
                        });
                    }
                }));
                return;
            }
            anu.this.mo9103JG();
        }
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: JK */
    public void mo9102JK() {
        C3840wl.m1552c(new RunnableC130810());
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1606b
    /* renamed from: i */
    public void mo9094i(@NonNull final AppBaseModel appBaseModel) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.11
            @Override // java.lang.Runnable
            public void run() {
                if (!anu.this.m1404oP()) {
                    PopRecommendAppSplashActivity.m12616a(anu.this.getContext(), appBaseModel, 1);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m10063h(int i, int i2, int i3) {
        int i4 = i + i2;
        int i5 = i4;
        for (AppDownLoadModel appDownLoadModel : this.aDL.subList(i2, i2 + i3)) {
            this.aDJ.add(i5, new amd(appDownLoadModel));
            i5++;
        }
        this.aDH.notifyItemRangeChanged(i4, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m10072b(RecyclerView recyclerView, int i) {
        this.aDU += i;
        float min = Math.min(this.aDU / (recyclerView.getHeight() / 5.0f), 1.0f);
        this.aDR.setBackgroundColor(bgi.getColor((int) (255.0f * min), R.color.white_1));
        if (min >= 0.75d) {
            if (!this.aDX) {
                this.aDS.setImageResource(R.drawable.common_arrow_back);
                this.aDT.setBackgroundResource(R.drawable.apps_market_main_search_box_bg_grey);
                this.aDV.setTextColor(bgi.getColor(R.color.apps_market_main_top_search_text_pull_down));
                this.aCF.m10028JO();
                this.aDW.setImageResource(R.drawable.ic_search_gray);
                this.aDX = true;
            }
        } else if (this.aDX) {
            this.aDS.setImageResource(R.drawable.apps_market_white_arrow_shadown_back);
            this.aDT.setBackgroundResource(R.drawable.apps_market_search_box_white_bg);
            this.aDV.setTextColor(bgi.getColor(R.color.sub_title_text));
            this.aCF.m10030JM();
            this.aDW.setImageResource(R.drawable.ic_search_white_shadown);
            this.aDX = false;
        }
        if (min == 1.0f) {
            C3857ws.m1501a(this.aDY, bgi.getColor(100, R.color.black_1), aDF);
        } else {
            C3857ws.m1501a(this.aDY, bgi.getColor(0, R.color.black_1), aDF);
        }
    }

    @Override // com.kingroot.kinguser.alj.InterfaceC1138j
    /* renamed from: GP */
    public void mo10089GP() {
        this.aDI.mo9067PS();
    }

    @Override // com.kingroot.kinguser.alj.InterfaceC1137i
    /* renamed from: c */
    public void mo10068c(AppDownLoadModel appDownLoadModel) {
        and.m10326a(getActivity(), appDownLoadModel, this.aDv, this.akB, this.akD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public AppDownLoadModel m10073a(String str, AtomicInteger atomicInteger) {
        atomicInteger.set(this.aEc);
        for (AppDownLoadModel appDownLoadModel : this.aDL) {
            if (!TextUtils.equals(str, appDownLoadModel.pkgName)) {
                atomicInteger.incrementAndGet();
            } else {
                return appDownLoadModel;
            }
        }
        atomicInteger.set(-1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hE */
    public void m10061hE(final String str) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anu.13
            @Override // java.lang.Runnable
            public void run() {
                AtomicInteger atomicInteger = new AtomicInteger(-1);
                if (anu.this.m10073a(str, atomicInteger) != null && atomicInteger.get() != -1) {
                    anu.this.aDH.m10590fg(atomicInteger.get());
                }
            }
        });
    }
}
