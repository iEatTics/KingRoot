package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
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
import com.kingroot.kinguser.ale;
import com.kingroot.kinguser.amz;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.ann;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownloadRecommendModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ann extends ans implements View.OnClickListener {
    protected static String TAG = "ku_pageAppDownloadTaskPage";

    /* renamed from: Gc */
    private int f1493Gc;
    private ArrayList<ame> aAY;
    protected NestedScrollView aBf;
    private ano aBg;
    private ArrayList<ame> aCa;
    private ArrayList<ame> aCb;
    private ArrayList<ame> aCc;
    private RecyclerView aCd;
    private RecyclerView aCe;
    private ale aCf;
    private ale aCg;
    private TextView aCh;
    private TextView aCi;
    private TextView aCj;
    private TextView aCk;
    private LinearLayout aCl;
    private LinearLayout aCm;
    private AtomicBoolean aCn;
    private ArrayList<String> aCo;
    private String aCp;
    private int aCq;
    private boolean aCr;
    private ale.InterfaceC1068a aCs;
    private ale.InterfaceC1068a aCt;
    private ILoadAppHistoryListener aCu;
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

    public ann(Context context) {
        super(context);
        this.aCa = new ArrayList<>();
        this.aCb = new ArrayList<>();
        this.aCc = new ArrayList<>();
        this.aAY = new ArrayList<>();
        this.f1493Gc = 0;
        this.aon = 0;
        this.aCn = new AtomicBoolean(true);
        this.aCo = new ArrayList<>();
        this.aCq = 0;
        this.aCs = new ale.InterfaceC1068a() { // from class: com.kingroot.kinguser.ann.3
            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: h */
            public void mo9930h(View view, int i) {
                ady.m12308tK().mo1746bi(100597);
                amz.m10365II().m9874z(((AppDownLoadModel) ann.this.aCa.get(i)).pkgName, true);
                ann.this.aCa.remove(i);
                ann.this.aCf.notifyItemRemoved(i);
                ann.this.m10188cz(false);
                C3954zj.m1307c(C3953zi.m1311pr().getText(R.string.app_download_task_delete_toast), 0);
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: i */
            public void mo9929i(View view, int i) {
                and.m10326a(ann.this.mContext, (AppDownLoadModel) ann.this.aCa.get(i), ann.this.awu, ann.this.akB, ann.this.akD);
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: a */
            public void mo9932a(AppDownLoadModel appDownLoadModel) {
                and.m10319a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn), ann.this.awu, ann.this.akB);
            }
        };
        this.aCt = new ale.InterfaceC1068a() { // from class: com.kingroot.kinguser.ann.4
            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: h */
            public void mo9930h(View view, int i) {
                ady.m12308tK().mo1746bi(100597);
                AppDownLoadModel appDownLoadModel = (AppDownLoadModel) ann.this.aCb.get(i);
                C3563rs.m2345r(apu.m9741h(AppDownloadRequest.m4059j(appDownLoadModel)));
                amz.m10365II().m9874z(appDownLoadModel.pkgName, true);
                ann.this.aCb.remove(i);
                ann.this.aCg.notifyItemRemoved(i);
                ann.this.m10189cA(false);
                C3954zj.m1307c(C3953zi.m1311pr().getText(R.string.app_download_task_delete_toast), 0);
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: i */
            public void mo9929i(View view, int i) {
                and.m10326a(ann.this.mContext, (AppDownLoadModel) ann.this.aCb.get(i), (IAppDownloadListener.Stub) null, ann.this.akB, ann.this.akD);
            }

            @Override // com.kingroot.kinguser.ale.InterfaceC1068a
            /* renamed from: a */
            public void mo9932a(AppDownLoadModel appDownLoadModel) {
                and.m10320a(appDownLoadModel, appDownLoadModel.m4188Ih(), C3953zi.m1311pr().getString(R.string.app_download_state_btn));
            }
        };
        this.aoM = new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$6
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                ArrayList arrayList;
                int i2;
                ArrayList arrayList2;
                if (list.size() > 0) {
                    arrayList = ann.this.aCo;
                    for (AppBaseModel appBaseModel : anf.m10282c(list, arrayList)) {
                        arrayList2 = ann.this.aAY;
                        arrayList2.add(new AppDownloadRecommendModel(appBaseModel));
                    }
                    ann annVar = ann.this;
                    i2 = ann.this.aon;
                    annVar.aon = i2 + 30;
                    ann.this.getHandler().obtainMessage(2).sendToTarget();
                    return;
                }
                ann.this.getHandler().obtainMessage(3).sendToTarget();
            }
        };
        this.aCu = new ILoadAppHistoryListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$7
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener
            public void onComplete(List<AppDownLoadModel> list) {
                AtomicBoolean atomicBoolean;
                ArrayList arrayList;
                ArrayList arrayList2;
                if (list != null) {
                    final ArrayList arrayList3 = new ArrayList();
                    final ArrayList arrayList4 = new ArrayList();
                    for (AppDownLoadModel appDownLoadModel : list) {
                        if (!apu.m9741h(AppDownloadRequest.m4059j(appDownLoadModel)).exists()) {
                            arrayList3.add(appDownLoadModel);
                            DownloaderTaskInfo hM = amz.m10365II().mo4079hM(appDownLoadModel.pkgName);
                            if (hM != null) {
                                amz.m10365II().m9882a(hM, ann.this.awu);
                            }
                        } else {
                            arrayList4.add(appDownLoadModel);
                            aso.m9417Ol().mo9329a(appDownLoadModel.pkgName, ann.this.akB);
                        }
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ArrayList arrayList5;
                            ArrayList arrayList6;
                            ArrayList arrayList7;
                            int size = arrayList3.size();
                            int size2 = arrayList4.size();
                            if (size > 0) {
                                ann.this.aCa.clear();
                                ann.this.aCa.addAll(arrayList3);
                            }
                            if (size2 > 0) {
                                ann.this.aCb.clear();
                                ann.this.aCb.addAll(arrayList4);
                            }
                            if (size > 0 || size2 > 0) {
                                arrayList5 = ann.this.aCc;
                                arrayList5.clear();
                                arrayList6 = ann.this.aCc;
                                arrayList6.addAll(ann.this.aCa);
                                arrayList7 = ann.this.aCc;
                                arrayList7.addAll(ann.this.aCb);
                            }
                            ann.this.getHandler().obtainMessage(0).sendToTarget();
                        }
                    });
                    atomicBoolean = ann.this.aCn;
                    if (atomicBoolean.compareAndSet(true, false)) {
                        for (AppDownLoadModel appDownLoadModel2 : list) {
                            arrayList = ann.this.aCo;
                            if (!arrayList.contains(appDownLoadModel2.pkgName)) {
                                arrayList2 = ann.this.aCo;
                                arrayList2.add(appDownLoadModel2.pkgName);
                            }
                        }
                        ann.this.m10200Jb();
                    }
                }
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            and.m10315a(ann.this.aCa, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            and.m10315a(ann.this.aCa, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                aso.m9417Ol().mo9329a(downloaderTaskInfo.m4049KM(), ann.this.akB);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(ann.this.aCa, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        and.m10315a(ann.this.aCa, downloaderTaskInfo);
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(ann.this.aCa, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(ann.this.aCa, downloaderTaskInfo);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$8.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            and.m10315a(ann.this.aCa, downloaderTaskInfo);
                        }
                    }
                });
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$9
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, final int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppDownloadTaskPage$9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ArrayList arrayList;
                        arrayList = ann.this.aCc;
                        and.m10308b(arrayList, str, i);
                    }
                });
            }
        };
        this.akD = new and.C1258a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
        anf.m10292a(list, this.aCo, this.awu, this.akB);
        this.aoj.m10629GN();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            m10181j(intent);
            m10179k(intent);
        }
    }

    /* renamed from: j */
    private void m10181j(Intent intent) {
        this.aCp = intent.getStringExtra("key_game_summon_install_pkg_from_notification");
        if (intent.getBooleanExtra("key_is_from_game_summon_notification", false)) {
            if (TextUtils.isEmpty(this.aCp)) {
                ady.m12308tK().mo1746bi(100664);
            } else {
                ady.m12308tK().mo1746bi(100666);
            }
            String stringExtra = intent.getStringExtra("key_id_to_cancel_notification");
            if (!TextUtils.isEmpty(stringExtra)) {
                adm.m12480st().m12499eA(stringExtra);
            }
        }
    }

    /* renamed from: k */
    private void m10179k(Intent intent) {
        this.aCq = intent.getIntExtra("key_from_uninstall_notification_id", 0);
        this.aCr = intent.getBooleanExtra("key_is_auto_install", false);
        if (this.aCq != 0) {
            adm.m12480st().m12501cy(this.aCq);
            if (this.aCr) {
                ady.m12308tK().mo1746bi(100711);
            } else {
                ady.m12308tK().mo1746bi(100710);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            m10181j(intent);
        }
        m10199Jh();
        getActivity().setIntent(intent);
    }

    /* renamed from: Jh */
    private void m10199Jh() {
        if (!TextUtils.isEmpty(this.aCp)) {
            Iterator<ame> it = this.aCb.iterator();
            while (it.hasNext()) {
                ame next = it.next();
                if ((next instanceof AppDownLoadModel) && TextUtils.equals(this.aCp, ((AppDownLoadModel) next).pkgName)) {
                    and.m10326a(this.mContext, (AppDownLoadModel) next, (IAppDownloadListener.Stub) null, this.akB, this.akD);
                    this.aCp = "";
                    ana.m10352IO().mo10331a(((AppDownLoadModel) next).reportInfo, 80);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.app_download_task_layout, (ViewGroup) null);
        this.aBf = (NestedScrollView) inflate.findViewById(R.id.scroll_view);
        this.aBf.m13268i(this.aBg.mo10167sg());
        C3472qk.m2594a(this.aBf);
        this.aCh = (TextView) inflate.findViewById(R.id.app_task_download_all_btn);
        this.aCh.setOnClickListener(this);
        this.aCi = (TextView) inflate.findViewById(R.id.app_task_install_all_btn);
        this.aCi.setOnClickListener(this);
        this.aCj = (TextView) inflate.findViewById(R.id.app_task_download_title);
        this.aCk = (TextView) inflate.findViewById(R.id.app_task_install_title);
        this.aCl = (LinearLayout) inflate.findViewById(R.id.app_task_download_title_layout);
        this.aCm = (LinearLayout) inflate.findViewById(R.id.app_task_install_title_layout);
        FixLinearLayoutManager fixLinearLayoutManager = new FixLinearLayoutManager(this.mContext, 1, false);
        fixLinearLayoutManager.m13337Y(false);
        this.aCd = (RecyclerView) inflate.findViewById(R.id.app_task_download_recycle_list);
        this.aCf = new ale(this.aCa, this.aCs);
        this.aCd.setLayoutManager(fixLinearLayoutManager);
        this.aCd.setItemAnimator(new DefaultItemAnimator());
        this.aCd.setAdapter(this.aCf);
        this.aCd.setNestedScrollingEnabled(false);
        FixLinearLayoutManager fixLinearLayoutManager2 = new FixLinearLayoutManager(this.mContext, 1, false);
        fixLinearLayoutManager2.m13337Y(false);
        this.aCe = (RecyclerView) inflate.findViewById(R.id.app_task_install_recycle_list);
        this.aCg = new ale(this.aCb, this.aCt);
        this.aCe.setLayoutManager(fixLinearLayoutManager2);
        this.aCe.setItemAnimator(new DefaultItemAnimator());
        this.aCe.setAdapter(this.aCg);
        this.aCe.setNestedScrollingEnabled(false);
        this.mEmptyView = ((ViewStub) inflate.findViewById(R.id.list_empty)).inflate();
        this.mEmptyView.setBackgroundResource(R.color.card_background);
        ((TextView) inflate.findViewById(R.id.nc_list_empty_desc)).setText(m1417V(2131166189L));
        this.mEmptyView.setVisibility(8);
        this.aoh = (LinearLayout) inflate.findViewById(R.id.app_detail_recommend);
        this.aoi = (RecyclerView) inflate.findViewById(R.id.app_task_recommend_list);
        this.aoj = new alf(this.mContext, this.aAY);
        this.aoj.m10621fe(4);
        this.aoj.m10628a(this.akD);
        this.aoi.setLayoutManager(new FixLinearLayoutManager(this.mContext, 0, false));
        this.aoi.setItemAnimator(new DefaultItemAnimator());
        this.aoi.setAdapter(this.aoj);
        this.aok = inflate.findViewById(R.id.app_task_recommend_more);
        this.aok.setOnClickListener(this);
        this.aiM = (FrameLayout) inflate.findViewById(R.id.loading_layout);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        amz.m10365II().m10362a(this.aCu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m10196Jk();
                if (this.aiM.getVisibility() != 8) {
                    this.aiM.setVisibility(8);
                }
                m10199Jh();
                if (this.aCr) {
                    m10197Jj();
                    this.aCr = false;
                    return;
                }
                return;
            case 1:
            default:
                return;
            case 2:
            case 3:
                if (this.aAY.size() < 4 && this.f1493Gc < 2) {
                    m10200Jb();
                    this.f1493Gc++;
                    return;
                }
                m10172wD();
                this.f1493Gc = 0;
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aBg = new ano(getContext(), C3953zi.m1311pr().getString(R.string.app_download_task_title));
        this.aBg.m10170Jn().setVisibility(8);
        return this.aBg;
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
            case R.id.app_task_download_all_btn /* 2131689657 */:
                m10198Ji();
                break;
            case R.id.app_task_install_all_btn /* 2131689661 */:
                m10197Jj();
                break;
            case R.id.app_task_recommend_more /* 2131689665 */:
                AppDownloadActivity.m12644c(this.mContext, C3953zi.m1311pr().getString(R.string.app_download_task_recommend_title), 5012412);
                break;
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

    /* renamed from: Ji */
    private synchronized void m10198Ji() {
        byte m1921O = C3748vb.m1921O(KApplication.m13453ge());
        if (m1921O == -1 || m1921O == 2 || m1921O == 1) {
            C3953zi m1311pr = C3953zi.m1311pr();
            if (m1921O == -1) {
                C3954zj.m1310b(m1311pr.getString(R.string.apps_market_download_no_network_content));
            } else if (m1921O == 2 || m1921O == 1) {
                final bid bidVar = new bid(this.mContext);
                bidVar.show();
                bidVar.setTitleText(m1311pr.getString(R.string.apps_market_download_title));
                bidVar.m6933d(m1311pr.getString(R.string.apps_market_download_content));
                bidVar.mo6682lK(m1311pr.getString(R.string.apps_market_download_later));
                bidVar.m6930lL(m1311pr.getString(R.string.apps_market_continue_download));
                bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ann.1
                    @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                    /* renamed from: n */
                    public void mo1843n(View view) {
                        bidVar.dismiss();
                    }
                });
                bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ann.2
                    @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                    /* renamed from: n */
                    public void mo1843n(View view) {
                        ArrayList arrayList = new ArrayList();
                        Iterator it = ann.this.aCa.iterator();
                        while (it.hasNext()) {
                            AppDownLoadModel appDownLoadModel = (AppDownLoadModel) ((ame) it.next());
                            if (appDownLoadModel.m4187Ii() && appDownLoadModel.appStatus != 1) {
                                arrayList.add(appDownLoadModel);
                            }
                        }
                        if (arrayList.size() > 0) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                AppDownLoadModel appDownLoadModel2 = (AppDownLoadModel) ((ame) it2.next());
                                amz.m10365II().m10359a(AppDownloadRequest.m4059j(appDownLoadModel2), 1, ann.this.awu, true, ann.this.akB);
                                appDownLoadModel2.appStatus = 1;
                            }
                            return;
                        }
                        C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.downloading_all_text));
                    }
                });
            }
        } else if (m1921O == 0) {
            ArrayList arrayList = new ArrayList();
            Iterator<ame> it = this.aCa.iterator();
            while (it.hasNext()) {
                AppDownLoadModel appDownLoadModel = (AppDownLoadModel) it.next();
                if (appDownLoadModel.m4187Ii() && appDownLoadModel.appStatus != 1) {
                    arrayList.add(appDownLoadModel);
                }
            }
            if (arrayList.size() > 0) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    AppDownLoadModel appDownLoadModel2 = (AppDownLoadModel) ((ame) it2.next());
                    amz.m10365II().m10359a(AppDownloadRequest.m4059j(appDownLoadModel2), 1, this.awu, true, this.akB);
                    appDownLoadModel2.appStatus = 1;
                }
            } else {
                C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.downloading_all_text));
            }
        }
    }

    /* renamed from: Jj */
    private synchronized void m10197Jj() {
        ArrayList arrayList = new ArrayList();
        Iterator<ame> it = this.aCb.iterator();
        while (it.hasNext()) {
            AppDownLoadModel appDownLoadModel = (AppDownLoadModel) it.next();
            if (appDownLoadModel.appStatus == 5) {
                arrayList.add(appDownLoadModel);
            }
        }
        if (arrayList.size() > 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                alm.m10566GQ().mo9331a(ApkInstallRequest.m3784l((AppDownLoadModel) ((ame) it2.next())), this.akB);
            }
        } else {
            C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.installing_all_text));
        }
    }

    /* renamed from: Jk */
    public void m10196Jk() {
        m10188cz(true);
        m10189cA(true);
    }

    /* renamed from: cz */
    public void m10188cz(boolean z) {
        C3953zi m1311pr = C3953zi.m1311pr();
        if (this.aCa.size() > 0) {
            this.aCj.setText(m1311pr.getString(R.string.app_download_task_download_title, Integer.valueOf(this.aCa.size())));
            this.aCl.setVisibility(0);
            if (z) {
                this.aCf.notifyDataSetChanged();
                m10195Jl();
            }
        } else {
            this.aCl.setVisibility(8);
        }
        if (this.aCa.size() <= 0 && this.aCb.size() <= 0) {
            this.mEmptyView.setVisibility(0);
            return;
        }
        ady.m12308tK().mo1746bi(100596);
        this.mEmptyView.setVisibility(8);
    }

    /* renamed from: cA */
    public void m10189cA(boolean z) {
        C3953zi m1311pr = C3953zi.m1311pr();
        if (this.aCb.size() > 0) {
            this.aCk.setText(m1311pr.getString(R.string.app_download_task_install_title, Integer.valueOf(this.aCb.size())));
            this.aCm.setVisibility(0);
            if (z) {
                this.aCg.notifyDataSetChanged();
            }
        } else {
            this.aCm.setVisibility(8);
        }
        if (this.aCa.size() <= 0 && this.aCb.size() <= 0) {
            this.mEmptyView.setVisibility(0);
        } else {
            this.mEmptyView.setVisibility(8);
        }
    }

    /* renamed from: wD */
    private void m10172wD() {
        if (this.aAY.size() < 4) {
            this.aoh.setVisibility(8);
            return;
        }
        this.aoj.notifyDataSetChanged();
        this.aoh.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Jb */
    public void m10200Jb() {
        alq.m10547GY().mo10433a(5012412, 30, this.aon, this.aoM);
    }

    /* renamed from: Jl */
    public void m10195Jl() {
        if (this.aCf != null) {
            akl m11257AS = akl.m11257AS();
            int m11241Bb = m11257AS.m11241Bb();
            long m11240Bc = m11257AS.m11240Bc();
            long currentTimeMillis = System.currentTimeMillis();
            if (m11241Bb < 2 && adk.m12539b(m11240Bc, currentTimeMillis, 172800000L) && !C3942yy.m1351d(this.aCa)) {
                m11257AS.m11193dY(m11241Bb + 1);
                m11257AS.m11208ap(currentTimeMillis);
                this.aCd.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.ann.5
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        ann.this.aCd.getViewTreeObserver().removeOnPreDrawListener(this);
                        C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.ann.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ann.this.aCf.m10635r(0, true);
                            }
                        }, 1000L);
                        return false;
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public void m10192a(ano anoVar) {
        this.aBg = anoVar;
    }
}
