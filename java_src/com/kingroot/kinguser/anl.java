package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.kingcore.uilib.ProgressWhell;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.alf;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.anl;
import com.kingroot.kinguser.anx;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownloadRecommendModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.view.AppListView;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class anl extends ans implements AdapterView.OnItemClickListener, AppListView.InterfaceC2928a {

    /* renamed from: Gc */
    private int f1492Gc;
    protected String TAG;
    private ArrayList<ame> aAY;
    protected boolean aBA;
    protected ald aBB;
    public ArrayList<ame> aBC;
    private AppDownLoadModel aBD;
    private AppDownLoadModel aBE;
    protected ArrayList<String> aBF;
    protected AppListView aBG;
    private amf aBH;
    protected ILoadAppsListener aBI;
    private and.C1258a aBJ;
    private ano aBg;
    private ILoadRecommendAppsListener aBl;
    protected ILoadAppStatusListener aBo;
    protected String aBy;
    protected int aBz;
    protected FrameLayout aiM;
    protected ProgressWhell aiO;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private alf aoj;
    public int aon;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    protected View mEmptyView;

    public anl(Context context) {
        super(context);
        this.TAG = "ku_pageAppDownloadListPage";
        this.aBC = new ArrayList<>();
        this.aAY = new ArrayList<>();
        this.aBF = new ArrayList<>();
        this.f1492Gc = 0;
        this.aon = 0;
        this.aBI = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$4
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                int i2;
                final List m10217aG;
                if (list.size() > 0) {
                    m10217aG = anl.this.m10217aG(list);
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            anl.this.aBC.addAll(anl.this.aBC.size(), m10217aG);
                            anl.this.aon += 30;
                            anl.this.getHandler().obtainMessage(0).sendToTarget();
                        }
                    });
                    return;
                }
                i2 = anl.this.f1492Gc;
                if (i2 < 2) {
                    anl.this.getHandler().obtainMessage(0).sendToTarget();
                } else {
                    anl.this.getHandler().obtainMessage(1).sendToTarget();
                }
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10315a(anl.this.aBC, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10315a(anl.this.aBC, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), anl.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(anl.this.aBC, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10315a(anl.this.aBC, downloaderTaskInfo);
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(anl.this.aBC, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(anl.this.aBC, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$5.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(anl.this.aBC, downloaderTaskInfo);
                        }
                    }
                });
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$6
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, final int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        and.m10308b(anl.this.aBC, str, i);
                    }
                });
            }
        };
        this.akD = new and.C1258a() { // from class: com.kingroot.kinguser.anl.4
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: c */
            public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
                ang.m10275a(anl.this.getActivity(), appDownLoadModel.m4185Ik(), anl.this.aBg.m10171Jm(), appDownLoadModel);
            }

            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: d */
            public void mo10042d(View view, AppDownLoadModel appDownLoadModel) {
                if (appDownLoadModel != null && anl.this.aBD != appDownLoadModel) {
                    anl.this.aBE = anl.this.aBD;
                    anl.this.aBD = appDownLoadModel;
                    alq.m10547GY().mo10430a(5012413, anl.this.aBD.pkgName, 30, 0, anl.this.aBD.groupId, anl.this.aBl);
                }
            }
        };
        this.aBJ = new and.C1258a() { // from class: com.kingroot.kinguser.anl.5
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: c */
            public void mo7288c(View view, AppDownLoadModel appDownLoadModel) {
                ang.m10275a(anl.this.getActivity(), appDownLoadModel.m4185Ik(), anl.this.aBg.m10171Jm(), appDownLoadModel);
            }
        };
        this.aBo = new ILoadAppStatusListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$10
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Context context2;
                        anx m10169Jo = anl.this.aBg.m10169Jo();
                        context2 = anl.this.mContext;
                        m10169Jo.m10013l(context2, -1);
                        anl.this.aBg.m10169Jo().m10015fL(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowWaitDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$10.2
                    @Override // java.lang.Runnable
                    public void run() {
                        anl.this.aBg.m10169Jo().m10014fM(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDot() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$10.3
                    @Override // java.lang.Runnable
                    public void run() {
                        anl.this.aBg.m10169Jo().m10016fK(0);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowNormal() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$10.4
                    @Override // java.lang.Runnable
                    public void run() {
                        anl.this.aBg.m10169Jo().m10016fK(8);
                    }
                });
            }
        };
        this.aBl = new ILoadRecommendAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$11
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadRecommendAppsListener
            public void onReceive(int i, int i2, final String str, List<AppBaseModel> list) {
                if (list.size() > 0 && anl.this.aBD != null && anl.this.aBD.pkgName.equals(str)) {
                    C3952zh m1312pq = C3952zh.m1312pq();
                    final ArrayList arrayList = new ArrayList();
                    for (AppBaseModel appBaseModel : list) {
                        if (!m1312pq.m1314du(appBaseModel.pkgName) && !anl.this.aBD.pkgName.equals(appBaseModel.pkgName)) {
                            arrayList.add(new AppDownloadRecommendModel(appBaseModel));
                        }
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadListPage$11.1
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
                            if (anl.this.aBD != null && anl.this.aBD.pkgName.equals(str) && anl.this.aBD.m4184Il() != null) {
                                appDownLoadModel = anl.this.aBE;
                                if (appDownLoadModel != null) {
                                    appDownLoadModel2 = anl.this.aBE;
                                    if (appDownLoadModel2.m4184Il() != null) {
                                        appDownLoadModel3 = anl.this.aBE;
                                        appDownLoadModel3.m4184Il().setVisibility(8);
                                        appDownLoadModel4 = anl.this.aBE;
                                        appDownLoadModel4.isExpand = false;
                                    }
                                }
                                arrayList2 = anl.this.aAY;
                                synchronized (arrayList2) {
                                    arrayList3 = anl.this.aAY;
                                    arrayList3.clear();
                                    arrayList4 = anl.this.aAY;
                                    arrayList4.addAll(arrayList);
                                }
                                ady.m12308tK().mo1746bi(100702);
                                alfVar = anl.this.aoj;
                                alfVar.m10626b(anl.this.aBD);
                            }
                        }
                    });
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        anf.m10292a(list, this.aBF, this.awu, this.akB);
        this.aoj.m10629GN();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.aBy = "";
        if (intent != null) {
            this.aBy = intent.getStringExtra("app_download_page_title");
            this.aBz = intent.getIntExtra("app_download_page_category_id", 0);
            this.aBA = intent.getBooleanExtra("app_download_page_is_show_logo", false);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.app_list_body_layout, (ViewGroup) null);
        this.aBG = (AppListView) inflate.findViewById(R.id.app_list_view);
        this.mEmptyView = ((ViewStub) inflate.findViewById(R.id.list_empty)).inflate();
        this.mEmptyView.setBackgroundResource(R.color.card_background);
        this.mEmptyView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anl.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                anl.this.aiM.setVisibility(0);
                anl.this.aiO.m13555gU();
                anl.this.mo9979Ja();
            }
        });
        ((TextView) this.mEmptyView.findViewById(R.id.nc_list_empty_desc)).setText(m1417V(2131166179L));
        this.aBG.setEmptyView(this.mEmptyView);
        this.aBG.setOnItemClickListener(this);
        this.aBG.setBackgroundResource(R.color.card_background);
        this.aBG.m13334b(getImageFetcher());
        this.aBG.setLoadMoreListener(this);
        this.aBG.m4129i(this.aBg.mo10167sg());
        this.aBB = new ald(getContext(), this.aBC, this.awu, this.akB);
        this.aBB.m10639a(this.akD);
        this.aBG.setAdapter((ListAdapter) this.aBB);
        this.aiM = (FrameLayout) inflate.findViewById(R.id.loading_layout);
        this.aiO = (ProgressWhell) inflate.findViewById(R.id.loading_progress);
        this.aiO.setVisibility(0);
        this.aiO.setBarColor(C3953zi.m1311pr().getColor(R.color.blue_0));
        this.aiO.setProgress(0.0f);
        this.aiO.setBarWidth(abg.m12835r(2.0f));
        this.aiO.setCircleRadius(abg.m12835r(20.0f));
        this.aiO.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.anl.2
            @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
            /* renamed from: d */
            public void mo6827d(float f) {
                if (f == 0.0f) {
                    anl.this.aiO.setProgress(1.0f);
                } else if (f == 1.0f) {
                    anl.this.aiO.setProgress(0.0f);
                }
            }
        });
        this.aiO.m13555gU();
        this.aoj = new alf(this.mContext, this.aAY);
        this.aoj.m10621fe(4);
        this.aoj.m10628a(this.aBJ);
        this.aBB.m10640a(this.aoj);
        if (this.aBA) {
            ady.m12308tK().mo1746bi(100705);
            this.aBH = new amf();
            this.aBC.add(0, this.aBH);
        }
        mo9979Ja();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        Iterator<ame> it = this.aBC.iterator();
        while (it.hasNext()) {
            ame next = it.next();
            if (next instanceof AppDownLoadModel) {
                AppDownLoadModel appDownLoadModel = (AppDownLoadModel) next;
                and.m10320a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
            }
        }
        m10223Jf();
        amz.m10365II().m10358b(this.aBo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
        amz.m10365II().m9881a(this.awu);
        amz.m10365II().m10361a(this.aBo);
        aso.m9417Ol().mo9330a(this.akB);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                this.aBB.notifyDataSetChanged();
                if (this.aBC.size() < 5) {
                    mo9979Ja();
                    this.f1492Gc++;
                    return;
                }
                this.f1492Gc = 0;
                m10223Jf();
                this.aBG.m4134Jp();
                if (this.aiM.getVisibility() != 8) {
                    this.aiM.setVisibility(8);
                    this.aiO.m13556gT();
                    return;
                }
                return;
            case 1:
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.anl.3
                    @Override // java.lang.Runnable
                    public void run() {
                        anl.this.aBG.m4133Jq();
                    }
                }, 1000L);
                if (this.aiM.getVisibility() != 8) {
                    this.aiM.setVisibility(8);
                    this.aBB.notifyDataSetChanged();
                    m10223Jf();
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aBg = new ano(getContext(), this.aBy);
        return this.aBg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i >= 0 && i < this.aBC.size()) {
            ame ameVar = this.aBC.get(i);
            if (ameVar instanceof AppDownLoadModel) {
                AppDetailActivity.m12647a(this.mContext, (AppDownLoadModel) ameVar);
            }
        }
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.view.AppListView.InterfaceC2928a
    /* renamed from: Je */
    public void mo4128Je() {
        mo9979Ja();
    }

    /* renamed from: Ja */
    protected void mo9979Ja() {
        alq.m10547GY().mo10433a(this.aBz, 30, this.aon, this.aBI);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aG */
    public List<ame> m10217aG(List<AppBaseModel> list) {
        List<AppBaseModel> m10282c = anf.m10282c(list, this.aBF);
        ArrayList arrayList = new ArrayList();
        for (AppBaseModel appBaseModel : m10282c) {
            arrayList.add(new AppDownLoadModel(appBaseModel));
            this.aBF.add(appBaseModel.pkgName);
        }
        return arrayList;
    }

    /* renamed from: Jf */
    private void m10223Jf() {
        final ArrayList arrayList = new ArrayList(this.aBC);
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anl.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ame ameVar = (ame) it.next();
                    if (ameVar instanceof AppDownLoadModel) {
                        and.m10322a((AppDownLoadModel) ameVar, ((AppDownLoadModel) ameVar).m4188Ih(), anl.this.awu, anl.this.akB);
                    }
                }
            }
        }));
    }

    /* renamed from: Jg */
    public ano m10222Jg() {
        return this.aBg;
    }

    /* renamed from: a */
    public void m10218a(ano anoVar) {
        this.aBg = anoVar;
    }
}
