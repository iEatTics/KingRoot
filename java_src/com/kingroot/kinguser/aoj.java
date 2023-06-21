package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.common.uilib.NestedScrollView;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguser.activitys.AppIgnoreUpdateActivity;
import com.kingroot.kinguser.ale;
import com.kingroot.kinguser.alv;
import com.kingroot.kinguser.ame;
import com.kingroot.kinguser.amz;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.aoj;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownloadRecommendModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppUpdateModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aoj extends ans implements View.OnClickListener {
    protected static String TAG = "ku_pageUpdateTabPage";

    /* renamed from: Gc */
    private int f1508Gc;
    private ArrayList<ame> aAY;
    private boolean aBX;
    protected NestedScrollView aBf;
    private AtomicBoolean aCn;
    private ArrayList<String> aCo;
    private List<AvailUpdateInfo> aEO;
    private bed aEP;
    private IRequestAvailUpdateListener aER;
    private final ArrayList<ame> aFL;
    private final ArrayList<ame> aFM;
    private RecyclerView aFN;
    private ale aFO;
    private Button aFP;
    private View aFQ;
    private TextView aFR;
    private LinearLayout aFS;
    private TextView aFT;
    private View aFU;
    private TextView aFV;
    private boolean aFW;
    private boolean aFX;
    private ale.InterfaceC1072c aFY;
    protected FrameLayout aiM;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;
    private ILoadAppsListener aoM;
    private LinearLayout aoh;
    private RecyclerView aoi;
    private alf aoj;
    private View aok;
    private int aon;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    private View mEmptyView;
    private List<AvailUpdateInfo> mUpdateInfoList;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        anf.m10292a(list, this.aCo, this.awu, this.akB);
        this.aoj.m10629GN();
    }

    public aoj(Context context, boolean z) {
        super(context);
        this.aFL = new ArrayList<>();
        this.aFM = new ArrayList<>();
        this.mUpdateInfoList = new ArrayList();
        this.aEO = new ArrayList();
        this.aAY = new ArrayList<>();
        this.f1508Gc = 0;
        this.aon = 0;
        this.aCn = new AtomicBoolean(true);
        this.aCo = new ArrayList<>();
        this.aFY = new ale.InterfaceC1072c() { // from class: com.kingroot.kinguser.aoj.5
            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: h */
            public void mo9930h(View view, int i) {
                AppUpdateModel appUpdateModel = (AppUpdateModel) aoj.this.aFL.get(i);
                C3563rs.m2345r(apu.m9741h(AppDownloadRequest.m4059j(appUpdateModel)));
                amz.m10365II().m9874z(appUpdateModel.pkgName, true);
                aoj.this.mUpdateInfoList.remove(i);
                aoj.this.aFL.remove(i);
                aoj.this.aFO.notifyItemRemoved(i);
                aoj.this.m9952cE(false);
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: i */
            public void mo9929i(View view, int i) {
                and.m10326a(aoj.this.mContext, (AppUpdateModel) aoj.this.aFL.get(i), aoj.this.awu, aoj.this.akB, aoj.this.akD);
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: a */
            public void mo9932a(AppDownLoadModel appDownLoadModel) {
                and.m10319a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), aoj.this.awu, aoj.this.akB);
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1072c
            /* renamed from: j */
            public void mo9928j(View view, int i) {
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1072c
            /* renamed from: f */
            public void mo9931f(View view, int i) {
                ady.m12308tK().mo1746bi(100730);
                final AvailUpdateInfo availUpdateInfo = (AvailUpdateInfo) aoj.this.mUpdateInfoList.get(i);
                if (!akl.m11257AS().m11245BE()) {
                    final bid bidVar = new bid(aoj.this.mContext);
                    bidVar.show();
                    bidVar.setTitleText(C3953zi.m1311pr().getString(R.string.ignore_update_dialog_title));
                    bidVar.m6933d(C3953zi.m1311pr().getString(R.string.ignore_update_dialog_content));
                    bidVar.mo6683iY(8);
                    bidVar.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_i_know));
                    bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.aoj.5.1
                        @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                        /* renamed from: n */
                        public void mo1843n(View view2) {
                            bidVar.dismiss();
                        }
                    });
                    akl.m11257AS().m11244BF();
                }
                mo9930h(view, i);
                beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aoj.5.2
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        alv.m10524Hq().mo10410a(availUpdateInfo, true);
                        beg.m7461Zj().m7450c(aoj.this.aEP);
                    }
                }));
                C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.ignore_update_toast_tetx));
            }
        };
        this.aoM = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$5
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                ArrayList arrayList;
                int i2;
                if (list.size() > 0) {
                    arrayList = aoj.this.aCo;
                    for (AppBaseModel appBaseModel : anf.m10282c(list, arrayList)) {
                        aoj.this.aAY.add(new AppDownloadRecommendModel(appBaseModel));
                    }
                    aoj aojVar = aoj.this;
                    i2 = aoj.this.aon;
                    aojVar.aon = i2 + 30;
                }
                aoj.this.m9963JW();
                aoj.this.getHandler().obtainMessage(2).sendToTarget();
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10315a(aoj.this.aFL, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10315a(aoj.this.aFL, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), aoj.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(aoj.this.aFL, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10315a(aoj.this.aFL, downloaderTaskInfo);
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(aoj.this.aFL, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(aoj.this.aFL, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$6.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(aoj.this.aFL, downloaderTaskInfo);
                        }
                    }
                });
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$7
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, final int i, final String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (i != 2) {
                            and.m10308b(aoj.this.aFL, str, i);
                        } else {
                            C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.update_merge_failed_toast_tetx, str2));
                        }
                    }
                });
            }
        };
        this.akD = new and.C1258a();
        this.aEP = new bed(bem.HIGH, bec.Normal, true, new C13807());
        this.aER = new IRequestAvailUpdateListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.UpdateTabPage$9
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchResult(List<AvailUpdateInfo> list, boolean z2) {
                AtomicBoolean atomicBoolean;
                ArrayList arrayList;
                ArrayList arrayList2;
                ArrayList arrayList3;
                if (list != null) {
                    aoj.this.aEO = alv.m10524Hq().mo10412Hy();
                    for (AvailUpdateInfo availUpdateInfo : list) {
                        if (!aoj.this.aEO.contains(availUpdateInfo) && !aoj.this.mUpdateInfoList.contains(availUpdateInfo)) {
                            AppUpdateModel m4163b = AppUpdateModel.m4163b(availUpdateInfo);
                            arrayList = aoj.this.aFM;
                            arrayList.add(m4163b);
                            aoj.this.mUpdateInfoList.add(availUpdateInfo);
                            arrayList2 = aoj.this.aCo;
                            if (!arrayList2.contains(availUpdateInfo.pkgName)) {
                                arrayList3 = aoj.this.aCo;
                                arrayList3.add(availUpdateInfo.pkgName);
                            }
                            if (apu.m9741h(AppDownloadRequest.m4059j(m4163b)).exists()) {
                                aso.m9417Ol().mo9329a(m4163b.pkgName, aoj.this.akB);
                            } else {
                                DownloaderTaskInfo hM = amz.m10365II().mo4079hM(m4163b.pkgName);
                                if (hM != null) {
                                    amz.m10365II().m9882a(hM, aoj.this.awu);
                                }
                            }
                        }
                    }
                    atomicBoolean = aoj.this.aCn;
                    if (atomicBoolean.compareAndSet(true, false)) {
                        aoj.this.m9962Jb();
                    }
                }
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchDiffResult(List<AvailUpdateInfo> list, boolean z2) {
                ArrayList arrayList;
                if (list != null && list.size() > 0) {
                    arrayList = aoj.this.aFM;
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        AppUpdateModel appUpdateModel = (AppUpdateModel) ((ame) it.next());
                        Iterator<AvailUpdateInfo> it2 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                AvailUpdateInfo next = it2.next();
                                if (appUpdateModel.pkgName.equals(next.pkgName)) {
                                    appUpdateModel.m4162c(next);
                                    break;
                                }
                            }
                        }
                    }
                }
                aoj.this.getHandler().obtainMessage(0).sendToTarget();
            }
        };
        this.aBX = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.app_update_task_layout, (ViewGroup) null);
        this.aBf = (NestedScrollView) inflate.findViewById(R.id.scroll_view);
        C3472qk.m2594a(this.aBf);
        this.aBf.m13268i(null);
        this.aFP = (Button) inflate.findViewById(R.id.update_all_button);
        this.aFP.setOnClickListener(this);
        this.aFQ = inflate.findViewById(R.id.update_all_layout);
        this.aFR = (TextView) inflate.findViewById(R.id.app_task_download_title);
        this.aFS = (LinearLayout) inflate.findViewById(R.id.app_task_download_title_layout);
        FixLinearLayoutManager fixLinearLayoutManager = new FixLinearLayoutManager(this.mContext, 1, false);
        fixLinearLayoutManager.m13337Y(false);
        this.aFN = (RecyclerView) inflate.findViewById(R.id.app_task_update_recycle_list);
        this.aFO = new ale(this.aFL, this.aFY);
        this.aFN.setLayoutManager(fixLinearLayoutManager);
        this.aFN.setItemAnimator(new DefaultItemAnimator());
        this.aFN.setAdapter(this.aFO);
        this.aFN.setNestedScrollingEnabled(false);
        this.mEmptyView = ((ViewStub) inflate.findViewById(R.id.list_empty)).inflate();
        this.mEmptyView.setBackgroundResource(R.color.card_background);
        ((TextView) inflate.findViewById(R.id.nc_list_empty_desc)).setText(m1417V(2131166223L));
        this.mEmptyView.setVisibility(8);
        this.aFU = inflate.findViewById(R.id.ignore_update_layout);
        this.aFV = (TextView) inflate.findViewById(R.id.ignore_update_title);
        this.aoh = (LinearLayout) inflate.findViewById(R.id.app_detail_recommend);
        this.aoi = (RecyclerView) inflate.findViewById(R.id.app_task_recommend_list);
        this.aoj = new alf(this.mContext, this.aAY);
        this.aoj.m10621fe(4);
        this.aoj.m10628a(this.akD);
        this.aoi.setLayoutManager(new FixLinearLayoutManager(this.mContext, 0, false));
        this.aoi.setItemAnimator(new DefaultItemAnimator());
        this.aoi.setAdapter(this.aoj);
        this.aFT = (TextView) inflate.findViewById(R.id.app_task_recommend_title);
        this.aok = inflate.findViewById(R.id.app_task_recommend_more);
        this.aFT.setText(C3953zi.m1311pr().getString(R.string.app_update_task_recommend_title));
        this.aok.setOnClickListener(this);
        this.aiM = (FrameLayout) inflate.findViewById(R.id.loading_layout);
        m9964JV();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.aFW) {
            m9964JV();
            this.aFW = false;
        }
        if (this.aFX) {
            m9962Jb();
            this.aFX = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m9952cE(true);
                if (this.aiM.getVisibility() != 8) {
                    this.aiM.setVisibility(8);
                    return;
                }
                return;
            case 1:
            default:
                return;
            case 2:
                if (this.aAY.size() < 4 && this.f1508Gc < 2) {
                    m9962Jb();
                    this.f1508Gc++;
                    return;
                }
                m9933wD();
                this.f1508Gc = 0;
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.setClickable(false);
        switch (view.getId()) {
            case R.id.app_task_recommend_more /* 2131689665 */:
                AppDownloadActivity.m12644c(this.mContext, C3953zi.m1311pr().getString(R.string.app_update_task_recommend_title), 5012421);
                this.aFX = true;
                break;
            case R.id.update_all_button /* 2131689727 */:
                if (C3953zi.m1311pr().getString(R.string.install_all_text).equals(this.aFP.getText())) {
                    ady.m12308tK().mo1746bi(100729);
                    m9960Jj();
                    break;
                } else {
                    ady.m12308tK().mo1746bi(100728);
                    m9965JU();
                    break;
                }
        }
        view.setClickable(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        amz.m10365II().m9881a(this.awu);
        aso.m9417Ol().mo9330a(this.akB);
        super.onStop();
    }

    /* renamed from: Jj */
    private synchronized void m9960Jj() {
        ArrayList arrayList = new ArrayList();
        Iterator<ame> it = this.aFL.iterator();
        while (it.hasNext()) {
            AppUpdateModel appUpdateModel = (AppUpdateModel) it.next();
            if (appUpdateModel.appStatus == 5) {
                arrayList.add(appUpdateModel);
            }
        }
        if (arrayList.size() > 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                alm.m10566GQ().mo9331a(ApkInstallRequest.m3784l((AppUpdateModel) ((ame) it2.next())), this.akB);
            }
        } else {
            C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.installing_all_text));
        }
    }

    /* renamed from: JU */
    private synchronized void m9965JU() {
        byte m1921O = C3748vb.m1921O(KApplication.m13453ge());
        if (m1921O == -1 || m1921O == 2 || m1921O == 1) {
            C3953zi m1311pr = C3953zi.m1311pr();
            if (m1921O == -1) {
                C3954zj.m1310b(m1311pr.getString(R.string.apps_market_download_no_network_content));
            } else if (m1921O == 2 || m1921O == 1) {
                final bid bidVar = new bid(this.mContext);
                bidVar.show();
                bidVar.setTitleText(m1311pr.getString(R.string.apps_market_update_title));
                bidVar.m6933d(m1311pr.getString(R.string.apps_market_update_content));
                bidVar.m6930lL(m1311pr.getString(R.string.apps_market_continue_update));
                bidVar.mo6682lK(m1311pr.getString(R.string.apps_market_update_later));
                bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.aoj.1
                    @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                    /* renamed from: n */
                    public void mo1843n(View view) {
                        bidVar.dismiss();
                    }
                });
                bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.aoj.4
                    @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                    /* renamed from: n */
                    public void mo1843n(View view) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = aoj.this.aFL.iterator();
                        while (it.hasNext()) {
                            AppUpdateModel appUpdateModel = (AppUpdateModel) ((ame) it.next());
                            if (appUpdateModel.m4187Ii() && appUpdateModel.appStatus != 1 && appUpdateModel.appStatus != 2) {
                                arrayList.add(appUpdateModel);
                            }
                        }
                        if (arrayList.size() > 0) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                AppUpdateModel appUpdateModel2 = (AppUpdateModel) ((ame) it2.next());
                                amz.m10365II().m10359a(AppDownloadRequest.m4059j(appUpdateModel2), 1, aoj.this.awu, true, aoj.this.akB);
                                appUpdateModel2.appStatus = 1;
                            }
                            return;
                        }
                        C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.updating_all_text));
                    }
                });
            }
        } else if (m1921O == 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<ame> it = this.aFL.iterator();
            while (it.hasNext()) {
                AppUpdateModel appUpdateModel = (AppUpdateModel) it.next();
                if (appUpdateModel.m4187Ii() && appUpdateModel.appStatus != 1 && appUpdateModel.appStatus != 2) {
                    arrayList.add(appUpdateModel);
                }
            }
            if (arrayList.size() > 0) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    AppUpdateModel appUpdateModel2 = (AppUpdateModel) ((ame) it2.next());
                    amz.m10365II().m10359a(AppDownloadRequest.m4059j(appUpdateModel2), 1, this.awu, true, this.akB);
                    appUpdateModel2.appStatus = 1;
                }
            } else {
                C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.updating_all_text));
            }
        }
    }

    /* renamed from: cE */
    public void m9952cE(boolean z) {
        if (z) {
            int size = this.aFM.size();
            synchronized (this.aFL) {
                if (size > 0) {
                    this.aFL.addAll(this.aFM);
                    this.aFM.clear();
                }
            }
            this.aFO.notifyItemRangeInserted(this.aFL.size() - size, size);
            m9961Jf();
            m9959Jl();
        }
        C3953zi m1311pr = C3953zi.m1311pr();
        if (this.aFL.size() > 0) {
            this.aFS.setVisibility(0);
            this.aFQ.setVisibility(0);
            this.mEmptyView.setVisibility(8);
            this.aFR.setText(m1311pr.getString(R.string.update_list_title, Integer.valueOf(this.aFL.size())));
            Iterator<ame> it = this.aFL.iterator();
            long j = 0;
            long j2 = 0;
            int i = 0;
            int i2 = 0;
            while (it.hasNext()) {
                AppUpdateModel appUpdateModel = (AppUpdateModel) it.next();
                j += appUpdateModel.remoteSize;
                if (appUpdateModel.remoteDiffPkgSize > 0) {
                    j2 += appUpdateModel.remoteSize - appUpdateModel.remoteDiffPkgSize;
                }
                if (appUpdateModel.m4187Ii()) {
                    i2++;
                }
                i = appUpdateModel.m4186Ij() ? i + 1 : i;
            }
            if (i2 > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(m1311pr.getString(R.string.update_all_text, anf.m10285bQ(j - j2)));
                if (j2 > 0) {
                    sb.append(m1311pr.getString(R.string.update_all_save_text, anf.m10285bQ(j2)));
                }
                this.aFP.setText(sb);
            } else if (i > 0) {
                this.aFP.setText(m1311pr.getString(R.string.install_all_text));
            }
            if (this.aBX) {
                m9965JU();
                this.aBX = false;
                return;
            }
            return;
        }
        this.aFS.setVisibility(8);
        this.aFQ.setVisibility(8);
        this.mEmptyView.setVisibility(0);
    }

    /* renamed from: wD */
    private void m9933wD() {
        if (this.aAY.size() < 4) {
            this.aoh.setVisibility(4);
            return;
        }
        this.aoj.notifyDataSetChanged();
        this.aoh.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Jb */
    public void m9962Jb() {
        alq.m10547GY().mo10433a(5012421, 30, this.aon, this.aoM);
    }

    /* renamed from: Jl */
    public void m9959Jl() {
        if (this.aFO != null) {
            akl m11257AS = akl.m11257AS();
            int m11241Bb = m11257AS.m11241Bb();
            long m11240Bc = m11257AS.m11240Bc();
            long currentTimeMillis = System.currentTimeMillis();
            if (m11241Bb < 2 && adk.m12539b(m11240Bc, currentTimeMillis, 172800000L) && !C3942yy.m1351d(this.aFL)) {
                m11257AS.m11193dY(m11241Bb + 1);
                m11257AS.m11208ap(currentTimeMillis);
                this.aFN.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.aoj.6
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        aoj.this.aFN.getViewTreeObserver().removeOnPreDrawListener(this);
                        C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.aoj.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                aoj.this.aFO.m10635r(0, true);
                            }
                        }, 1000L);
                        return false;
                    }
                });
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.aoj$7 */
    /* loaded from: classes.dex */
    class C13807 extends bek {
        C13807() {
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            aoj.this.aEO = alv.m10524Hq().mo10412Hy();
            final int size = aoj.this.aEO.size();
            if (size <= 0) {
                aoj.this.aFU.setVisibility(4);
            } else {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aoj.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        StringBuilder sb = new StringBuilder();
                        sb.append(C3953zi.m1311pr().getString(R.string.ignore_update_page_title));
                        sb.append('(');
                        sb.append(size);
                        sb.append(')');
                        aoj.this.aFU.setVisibility(0);
                        aoj.this.aFV.setText(sb);
                        aoj.this.aFU.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aoj.7.1.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                AppIgnoreUpdateActivity.m12641aK(aoj.this.getContext());
                                aoj.this.aFW = true;
                            }
                        });
                    }
                });
            }
        }
    }

    /* renamed from: JV */
    private void m9964JV() {
        alv.m10524Hq().mo10409a(this.aER);
        beg.m7461Zj().m7450c(this.aEP);
    }

    /* renamed from: Jf */
    private void m9961Jf() {
        final ArrayList arrayList = new ArrayList(this.aFL);
        try {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aoj.2
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ame ameVar = (ame) it.next();
                        and.m10322a((AppDownLoadModel) ameVar, ((AppDownLoadModel) ameVar).m4188Ih(), aoj.this.awu, aoj.this.akB);
                    }
                    countDownLatch.countDown();
                }
            }));
            countDownLatch.await(5L, TimeUnit.SECONDS);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: JW */
    public void m9963JW() {
        try {
            if (this.aAY.size() >= 4) {
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aoj.3
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 < 4) {
                                AppDownLoadModel appDownLoadModel = (AppDownLoadModel) aoj.this.aAY.get(i2);
                                and.m10322a(appDownLoadModel, appDownLoadModel.m4188Ih(), aoj.this.awu, aoj.this.akB);
                                i = i2 + 1;
                            } else {
                                countDownLatch.countDown();
                                return;
                            }
                        }
                    }
                }));
                countDownLatch.await(3L, TimeUnit.SECONDS);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: cF */
    public void m9951cF(boolean z) {
        this.aBX = z;
    }
}
