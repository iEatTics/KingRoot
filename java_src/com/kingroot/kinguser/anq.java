package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import com.kingcore.uilib.ProgressWhell;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.alg;
import com.kingroot.kinguser.alh;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.anh;
import com.kingroot.kinguser.anq;
import com.kingroot.kinguser.aso;
import com.kingroot.kinguser.asw;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppUpdateModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IReqSuggWordListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ISearchAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$7;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class anq extends ans implements aoa {

    /* renamed from: Gc */
    private int f1494Gc;
    private int aDc;
    private String aDd;
    private List<String> aDe;
    private final List<ame> aDf;
    private C3953zi aDg;
    private aoi aDh;
    private anz aDi;
    private C1305anr aDj;
    private aoc aDk;
    private aof aDl;
    private AppBaseModel aDm;
    private alg.InterfaceC1090a aDn;
    private alh.InterfaceC1095c aDo;
    private ISearchAppsListener aDp;
    private IReqSuggWordListener aDq;
    private IAppInstallListener.Stub akB;
    private ProgressWhell amm;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    private Handler mHandler;
    private int mOffset;

    /* renamed from: h */
    static /* synthetic */ int m10120h(anq anqVar) {
        int i = anqVar.f1494Gc;
        anqVar.f1494Gc = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        ady.m12308tK().mo1746bi(100591);
        Intent intent = getActivity().getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("app_search_key_word");
            if (!TextUtils.isEmpty(stringExtra)) {
                this.aDh.m9970C(stringExtra, true);
                mo10009B(stringExtra, false);
                return;
            }
            bfm.aah().mo7270ai(6, 2);
            m10108s(this.aDh.m9969JS());
            mo10005cB(true);
            m10127cC(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.aDl != null) {
            this.aDl.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        amz.m10365II().m9881a(this.awu);
        aso.m9417Ol().mo9330a(this.akB);
        this.aDl.recycle();
        super.onStop();
    }

    public anq(Context context) {
        super(context);
        this.aDf = new ArrayList();
        this.aDg = C3953zi.m1311pr();
        this.mHandler = new Handler() { // from class: com.kingroot.kinguser.anq.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        anq.this.aDi.m10032cD(true);
                        anq.this.aDj.m10032cD(false);
                        anq.this.aDk.m10032cD(false);
                        anq.this.aDi.m10012av((List) message.obj);
                        return;
                    case 2:
                        anq.this.aDi.m10032cD(false);
                        anq.this.aDj.m10032cD(true);
                        anq.this.aDk.m10032cD(false);
                        anq.this.aDl.m10032cD(false);
                        synchronized (anq.this.aDf) {
                            if (anq.this.aDf.size() >= 5 || anq.this.f1494Gc >= 2) {
                                anq.this.f1494Gc = 0;
                                anq.this.aDj.m10103c(anq.this.aDd, anq.this.aDf);
                                anq.this.amm.m13556gT();
                                anq.this.amm.setVisibility(4);
                            } else {
                                anq.this.mo10009B(anq.this.aDd, true);
                                anq.m10120h(anq.this);
                            }
                        }
                        return;
                    case 3:
                        anq.this.aDi.m10032cD(false);
                        anq.this.aDj.m10032cD(false);
                        anq.this.aDk.m10032cD(true);
                        anq.this.aDl.m10032cD(false);
                        anq.this.aDk.m9998aT((List) message.obj);
                        return;
                    case 4:
                        anq.this.mo10007Jy();
                        anq.this.aDi.m10032cD(false);
                        anq.this.aDj.m10032cD(true);
                        anq.this.aDk.m10032cD(false);
                        anq.this.aDl.m10032cD(false);
                        anq.this.aDj.m10104JB();
                        anq.this.amm.setVisibility(0);
                        anq.this.amm.m13555gU();
                        return;
                    case 5:
                        anq.this.aDi.m10032cD(false);
                        anq.this.aDj.m10032cD(false);
                        anq.this.aDk.m10032cD(true);
                        anq.this.aDl.m10032cD(false);
                        anq.this.aDk.m9999aS((List) message.obj);
                        return;
                    case 6:
                        AppDownLoadModel appDownLoadModel = (AppDownLoadModel) message.obj;
                        anq.this.aDl.m10032cD(true);
                        anq.this.aDl.m9982d(appDownLoadModel);
                        ana.m10352IO().mo10330a(anq.this.getActivity().getClass().getName(), anq.this.getActivity().hashCode(), appDownLoadModel.reportInfo);
                        return;
                    default:
                        return;
                }
            }
        };
        this.aDn = new alg.InterfaceC1090a() { // from class: com.kingroot.kinguser.anq.4
            @Override // com.kingroot.kinguser.alg.InterfaceC1090a
            /* renamed from: y */
            public void mo10107y(String str, int i) {
                if (str != null) {
                    anq.this.aDh.m9970C(str, true);
                    anq.this.mo10009B(str, false);
                    ady.m12308tK().mo1746bi(100592);
                }
            }
        };
        this.aDo = new alh.InterfaceC1095c() { // from class: com.kingroot.kinguser.anq.5
            @Override // com.kingroot.kinguser.alh.InterfaceC1095c
            /* renamed from: z */
            public void mo10105z(String str, int i) {
                List<String> m11186gL = akl.m11257AS().m11186gL(str);
                anq.this.aDk.m9997ff(i);
                if (C3942yy.m1351d(m11186gL)) {
                    anq.this.mo10005cB(false);
                    anq.this.m10127cC(false);
                }
            }

            @Override // com.kingroot.kinguser.alh.InterfaceC1095c
            /* renamed from: A */
            public void mo10106A(String str, int i) {
                anq.this.aDh.m9970C(str, true);
                anq.this.mo10009B(str, false);
            }
        };
        this.aDp = new AppSearchPage$7(this);
        this.aDq = new IReqSuggWordListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$8
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IReqSuggWordListener
            public void onReceive(int i, List<AppBaseModel> list, List<String> list2) {
                C3953zi c3953zi;
                if (i != 0) {
                    c3953zi = anq.this.aDg;
                    C3954zj.m1307c(c3953zi.getString(R.string.app_search_net_error), 0);
                    return;
                }
                anq.this.m10137aL(list2);
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(final int i, final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(i);
                            synchronized (anq.this.aDf) {
                                and.m10315a(anq.this.aDf, downloaderTaskInfo);
                            }
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            downloaderTaskInfo.setPercentage(0);
                            synchronized (anq.this.aDf) {
                                and.m10315a(anq.this.aDf, downloaderTaskInfo);
                            }
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(final DownloaderTaskInfo downloaderTaskInfo) {
                IAppInstallListener.Stub stub;
                aso m9417Ol = aso.m9417Ol();
                String m4049KM = downloaderTaskInfo.m4049KM();
                stub = anq.this.akB;
                m9417Ol.mo9329a(m4049KM, stub);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            synchronized (anq.this.aDf) {
                                and.m10315a(anq.this.aDf, downloaderTaskInfo);
                            }
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C3953zi m1311pr = C3953zi.m1311pr();
                        synchronized (anq.this.aDf) {
                            and.m10315a(anq.this.aDf, downloaderTaskInfo);
                        }
                        C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed));
                        if (C3748vb.m1921O(KApplication.m13453ge()) == -1) {
                            C3954zj.m1310b(m1311pr.getString(R.string.gamebox_recommend_download_toast_failed_no_net));
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPaused(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            synchronized (anq.this.aDf) {
                                and.m10315a(anq.this.aDf, downloaderTaskInfo);
                            }
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onRemove(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            synchronized (anq.this.aDf) {
                                and.m10315a(anq.this.aDf, downloaderTaskInfo);
                            }
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onPending(final DownloaderTaskInfo downloaderTaskInfo) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$9.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (downloaderTaskInfo != null) {
                            synchronized (anq.this.aDf) {
                                and.m10315a(anq.this.aDf, downloaderTaskInfo);
                            }
                        }
                    }
                });
            }
        };
        this.akB = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$10
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(final String str, final int i, String str2) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (anq.this.aDf) {
                            and.m10308b(anq.this.aDf, str, i);
                        }
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
        if (!C3942yy.m1351d(this.aDf)) {
            Iterator<ame> it = this.aDf.iterator();
            while (it.hasNext()) {
                arrayList.add(((AppBaseModel) it.next()).pkgName);
            }
        }
        anf.m10292a(list, arrayList, this.awu, this.akB);
        this.aDl.m9986ah(list);
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
        getActivity().overridePendingTransition(0, 0);
        String stringExtra = getActivity().getIntent().getStringExtra("app_search_hint_hot_word");
        View inflate = getLayoutInflater().inflate(R.layout.app_search_view, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.search_header);
        this.amm = (ProgressWhell) inflate.findViewById(R.id.loading_progress);
        this.amm.setVisibility(0);
        this.amm.setBarColor(C3953zi.m1311pr().getColor(R.color.blue_0));
        this.amm.setProgress(0.0f);
        this.amm.setBarWidth(abg.m12835r(2.0f));
        this.amm.setCircleRadius(abg.m12835r(20.0f));
        this.amm.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.anq.2
            @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
            /* renamed from: d */
            public void mo6827d(float f) {
                if (f == 0.0f) {
                    anq.this.amm.setProgress(1.0f);
                } else if (f == 1.0f) {
                    anq.this.amm.setProgress(0.0f);
                }
            }
        });
        this.aDh = new aoi(findViewById, stringExtra, this);
        this.aDi = new anz(inflate.findViewById(R.id.hot_word_layout), this, this.aDn);
        this.aDj = new C1305anr(inflate.findViewById(R.id.app_list_body), this.awu, this.akB, this);
        this.aDj.m10101i(findViewById);
        this.aDk = new aoc(inflate.findViewById(R.id.key_word_layout), this, this.aDo);
        this.aDl = new aof(inflate.findViewById(R.id.recommend_app), this);
        this.aDl.m10032cD(false);
        return inflate;
    }

    @Override // com.kingroot.kinguser.aoa
    /* renamed from: B */
    public void mo10009B(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            cgp.m4321h("commonappsearchpage", "mCurrentWord.equals(mPreviousWord), 不进行搜索");
            return;
        }
        if (!z) {
            this.aDc = 0;
            synchronized (this.aDf) {
                this.aDf.clear();
            }
            this.aDd = str;
            akl.m11257AS().m11187gK(str);
            m10118hD(str);
        }
        alq.m10547GY().mo10429a(5012001, str, 30, this.aDc, this.aDp);
    }

    @Override // com.kingroot.kinguser.aoa
    /* renamed from: cB */
    public void mo10005cB(final boolean z) {
        anh.m10274IW().m10273a(5012111, new anh.InterfaceC1263a() { // from class: com.kingroot.kinguser.anq.3
            @Override // com.kingroot.kinguser.anh.InterfaceC1263a
            public void onFinish(List<String> list) {
                if (z) {
                    anq.this.aDe = anq.this.m10128c(list, 12);
                }
                anq.this.m10139aJ(anq.this.aDe);
            }
        });
    }

    /* renamed from: cC */
    public void m10127cC(final boolean z) {
        alq.m10547GY().mo10433a(5012002, 30, this.mOffset, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppSearchPage$4
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                int i2;
                AppBaseModel appBaseModel;
                AppBaseModel m9345e;
                AppBaseModel appBaseModel2;
                AppBaseModel appBaseModel3;
                if (i == 0) {
                    anq anqVar = anq.this;
                    i2 = anq.this.mOffset;
                    anqVar.mOffset = i2 + 30;
                    List<AppBaseModel> m10291aA = anf.m10291aA(list);
                    appBaseModel = anq.this.aDm;
                    if (appBaseModel == null || z) {
                        m9345e = asw.m9345e(String.valueOf(5012002), m10291aA);
                    } else {
                        Iterator<AppBaseModel> it = m10291aA.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                m9345e = null;
                                break;
                            }
                            m9345e = it.next();
                            if (m9345e != null) {
                                appBaseModel3 = anq.this.aDm;
                                if (appBaseModel3.pkgName.equals(m9345e.pkgName)) {
                                    break;
                                }
                            }
                        }
                    }
                    if (m9345e != null) {
                        anq.this.aDm = m9345e;
                        appBaseModel2 = anq.this.aDm;
                        anq.this.m10119h(new AppDownLoadModel(appBaseModel2));
                    }
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.aoa
    /* renamed from: hC */
    public void mo10004hC(String str) {
        alq.m10547GY().mo10425a(str, this.aDq);
    }

    @Override // com.kingroot.kinguser.aoa
    /* renamed from: Jx */
    public void mo10008Jx() {
        getActivity().finish();
        getActivity().overridePendingTransition(0, 0);
    }

    @Override // com.kingroot.kinguser.aoa
    /* renamed from: Jy */
    public void mo10007Jy() {
        View currentFocus;
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) getActivity().getSystemService("input_method");
            if (inputMethodManager != null && (currentFocus = getActivity().getCurrentFocus()) != null) {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: s */
    public void m10108s(View view) {
        if (view != null) {
            try {
                view.requestFocus();
                ((InputMethodManager) getActivity().getSystemService("input_method")).showSoftInput(view, 2);
            } catch (Exception e) {
            }
        }
    }

    @Override // com.kingroot.kinguser.aoa
    /* renamed from: Jz */
    public void mo10006Jz() {
        List<String> m11255AU = akl.m11257AS().m11255AU();
        if (C3942yy.m1351d(m11255AU)) {
            mo10005cB(false);
            m10127cC(false);
            return;
        }
        m10138aK(m11255AU);
        ady.m12308tK().mo1746bi(100594);
    }

    @Override // com.kingroot.kinguser.aoa
    /* renamed from: AV */
    public void mo10010AV() {
        akl.m11257AS().m11254AV();
        mo10005cB(false);
        m10127cC(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public List<String> m10128c(List<String> list, int i) {
        int nextInt;
        ArrayList arrayList = new ArrayList(i);
        if (!C3942yy.m1351d(list)) {
            int size = list.size();
            boolean[] zArr = new boolean[size];
            int min = Math.min(size, i);
            Random random = new Random();
            for (int i2 = 0; i2 < min; i2++) {
                do {
                    nextInt = random.nextInt(size);
                } while (zArr[nextInt]);
                zArr[nextInt] = true;
                arrayList.add(list.get(nextInt));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m10125d(List<AppBaseModel> list, List<String> list2) {
        Iterator<AppBaseModel> it = list.iterator();
        while (it.hasNext()) {
            if (list2.contains(it.next().pkgName)) {
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public List<ame> m10123e(List<AvailUpdateInfo> list, List<AppBaseModel> list2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Iterator<AvailUpdateInfo> it = list.iterator();
        for (AppBaseModel appBaseModel : list2) {
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                AvailUpdateInfo next = it.next();
                if (TextUtils.equals(appBaseModel.pkgName, next.pkgName)) {
                    arrayList.add(AppUpdateModel.m4163b(next));
                    it.remove();
                    z2 = true;
                } else {
                    z2 = z;
                }
            }
            if (!z) {
                arrayList.add(new AppDownLoadModel(appBaseModel));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aJ */
    public void m10139aJ(List<String> list) {
        this.mHandler.removeMessages(1);
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = list;
        this.mHandler.sendMessage(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: JA */
    public void m10146JA() {
        this.mHandler.removeMessages(2);
        Message obtain = Message.obtain();
        obtain.what = 2;
        this.mHandler.sendMessage(obtain);
    }

    /* renamed from: aK */
    private void m10138aK(List<String> list) {
        this.mHandler.removeMessages(3);
        Message obtain = Message.obtain();
        obtain.what = 3;
        obtain.obj = list;
        this.mHandler.sendMessage(obtain);
    }

    /* renamed from: hD */
    private void m10118hD(String str) {
        this.mHandler.removeMessages(4);
        Message obtain = Message.obtain();
        obtain.what = 4;
        obtain.obj = str;
        this.mHandler.sendMessage(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aL */
    public void m10137aL(List<String> list) {
        this.mHandler.removeMessages(5);
        Message obtain = Message.obtain();
        obtain.what = 5;
        obtain.obj = list;
        this.mHandler.sendMessage(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m10119h(AppBaseModel appBaseModel) {
        this.mHandler.removeMessages(6);
        Message obtain = Message.obtain();
        obtain.what = 6;
        obtain.obj = appBaseModel;
        this.mHandler.sendMessage(obtain);
    }
}
