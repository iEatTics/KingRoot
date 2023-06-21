package com.kingroot.kinguser;

import android.app.Activity;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.activitys.AppDownloadActivity;
import com.kingroot.kinguser.activitys.AppDownloadManagerActivity;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.alm;
import com.kingroot.kinguser.alv;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.apu;
import com.kingroot.kinguser.auf;
import com.kingroot.kinguser.auo;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IGetSplashResult;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class auo implements auf.InterfaceC1605a {
    private static final String TAG = aiq.arY + "_AppsMarketMaiPresenter";
    private auf.InterfaceC1606b aRD;
    private final ConcurrentLinkedQueue<CountDownLatch> aRE = new ConcurrentLinkedQueue<>();
    private AtomicInteger aRF = new AtomicInteger(0);

    public auo(auf.InterfaceC1606b interfaceC1606b) {
        this.aRD = interfaceC1606b;
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: h */
    public void mo9057h(Activity activity) {
        AppDownloadActivity.m12644c(activity, C3953zi.m1311pr().getString(R.string.apps_market_main_good_app_recommend_title), 5012404);
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: i */
    public void mo9056i(Activity activity) {
        AppDownloadActivity.m12644c(activity, C3953zi.m1311pr().getString(R.string.apps_market_main_hot_app_recommend_title), 5012403);
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PK */
    public void mo9075PK() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.aRE.add(countDownLatch);
        alq.m10547GY().mo10432a(5012402, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i, List<AppBaseModel> list) {
                if (i != 0 || C3942yy.m1351d(list)) {
                    auo.this.aRD.mo9104JF();
                } else {
                    auo.this.aRD.mo9100aM(list);
                }
                countDownLatch.countDown();
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: j */
    public void mo9055j(Activity activity) {
        AppDownloadManagerActivity.m12643aK(activity);
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PL */
    public void mo9074PL() {
        m9059a(this.aRF, false, false);
    }

    /* renamed from: a */
    private void m9059a(AtomicInteger atomicInteger, final boolean z, final boolean z2) {
        m9064a(1, 5012411, atomicInteger, new AbstractC1626a() { // from class: com.kingroot.kinguser.auo.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.kingroot.kinguser.auo.AbstractC1626a
            public void onFinish(List<AppBaseModel> list) {
                auo.this.aRD.mo9101a(list, z, z2);
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PM */
    public void mo9073PM() {
        m9064a(1, 5012403, new AtomicInteger(0), new AbstractC1626a() { // from class: com.kingroot.kinguser.auo.2
            @Override // com.kingroot.kinguser.auo.AbstractC1626a
            public void onFinish(List<AppBaseModel> list) {
                auo.this.aRD.mo9099aN(list);
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PN */
    public void mo9072PN() {
        m9064a(1, 5012404, new AtomicInteger(0), new AbstractC1626a() { // from class: com.kingroot.kinguser.auo.3
            @Override // com.kingroot.kinguser.auo.AbstractC1626a
            public void onFinish(List<AppBaseModel> list) {
                auo.this.aRD.mo9098aO(list);
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PO */
    public void mo9071PO() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.aRE.add(countDownLatch);
        m9065a(5012416, 20, new AtomicInteger(0), 1, new ArrayList(), new AbstractC1626a() { // from class: com.kingroot.kinguser.auo.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.kingroot.kinguser.auo.AbstractC1626a
            public void onFinish(List<AppBaseModel> list) {
                auo.this.aRD.mo9097aP(list);
                countDownLatch.countDown();
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PP */
    public void mo9070PP() {
        akl m11257AS = akl.m11257AS();
        long currentTimeMillis = System.currentTimeMillis();
        long m11219Bx = m11257AS.m11219Bx();
        int m11218By = m11257AS.m11218By();
        if (acu.m12573b(m11219Bx, currentTimeMillis, 432000000L) && m11218By < 4) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            this.aRE.add(countDownLatch);
            beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new C16235(countDownLatch, m11257AS, currentTimeMillis, m11218By)));
        }
    }

    /* renamed from: com.kingroot.kinguser.auo$5 */
    /* loaded from: classes.dex */
    public class C16235 extends bek {
        public final /* synthetic */ akl ade;
        public final /* synthetic */ long adf;
        public final /* synthetic */ int adg;
        public final /* synthetic */ CountDownLatch val$countDownLatch;

        C16235(CountDownLatch countDownLatch, akl aklVar, long j, int i) {
            this.val$countDownLatch = countDownLatch;
            this.ade = aklVar;
            this.adf = j;
            this.adg = i;
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            ArrayList<String> mo9333GT = alm.m10566GQ().mo9333GT();
            List<DownloaderTaskInfo> m10363IL = amz.m10365II().m10363IL();
            if (!C3942yy.m1351d(mo9333GT) || !C3942yy.m1351d(m10363IL)) {
                this.val$countDownLatch.countDown();
                return;
            }
            final ArrayList arrayList = new ArrayList();
            amz.m10365II().m10362a(new ILoadAppHistoryListener.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$6$1
                @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppHistoryListener
                public void onComplete(List<AppDownLoadModel> list) {
                    for (AppDownLoadModel appDownLoadModel : list) {
                        if (appDownLoadModel.m4186Ij() && apu.m9738k(appDownLoadModel)) {
                            arrayList.add(appDownLoadModel);
                        }
                    }
                    if (C3942yy.m1351d(arrayList)) {
                        auo.C16235.this.val$countDownLatch.countDown();
                        return;
                    }
                    ady.m12308tK().mo1746bi(100712);
                    auo.this.aRD.mo9096aQ(arrayList);
                    auo.C16235.this.ade.m11216aA(auo.C16235.this.adf);
                    auo.C16235.this.ade.m11188ed(auo.C16235.this.adg + 1);
                    auo.C16235.this.val$countDownLatch.countDown();
                }
            });
        }
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PQ */
    public void mo9069PQ() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.aRE.add(countDownLatch);
        alv.m10524Hq().mo10409a(new IRequestAvailUpdateListener.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$7
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchResult(List<AvailUpdateInfo> list, boolean z) {
                Iterator<AvailUpdateInfo> it = list.iterator();
                while (it.hasNext()) {
                    AvailUpdateInfo next = it.next();
                    if (apu.m9742d(next) || alv.m10524Hq().mo10411a(next)) {
                        it.remove();
                    }
                }
                if (alm.m10566GQ().mo9332GU() || anf.m10296IV()) {
                    auo.this.aRD.mo9095aR(new ArrayList());
                } else {
                    auo.this.aRD.mo9095aR(list);
                }
                countDownLatch.countDown();
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchDiffResult(List<AvailUpdateInfo> list, boolean z) {
                countDownLatch.countDown();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9065a(final int i, final int i2, final AtomicInteger atomicInteger, final int i3, final List<AppBaseModel> list, final AbstractC1626a abstractC1626a) {
        alq.m10547GY().mo10420b(i, i2, atomicInteger.get(), new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$8
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i4, final List<AppBaseModel> list2) {
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$8.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        list.addAll(anf.m10291aA(list2));
                        if (list.size() < 4 && i3 < 2) {
                            atomicInteger.getAndAdd(30);
                            auo.this.m9065a(i, i2, atomicInteger, i3 + 1, list, abstractC1626a);
                        } else if (abstractC1626a != null) {
                            abstractC1626a.onFinish(list);
                        }
                    }
                }));
            }
        });
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PR */
    public void mo9068PR() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.auo.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                long currentTimeMillis = System.currentTimeMillis();
                long j = 15000;
                final boolean z = false;
                CountDownLatch countDownLatch = (CountDownLatch) auo.this.aRE.peek();
                while (countDownLatch != null) {
                    try {
                        if (!countDownLatch.await(j, TimeUnit.MILLISECONDS)) {
                            z = true;
                        }
                    } catch (InterruptedException e) {
                    }
                    j = Math.max(15000 - (System.currentTimeMillis() - currentTimeMillis), 0L);
                    auo.this.aRE.poll();
                    z = z;
                    countDownLatch = (CountDownLatch) auo.this.aRE.peek();
                }
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.auo.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (z) {
                            auo.this.aRD.mo9103JG();
                        } else {
                            auo.this.aRD.mo9102JK();
                        }
                    }
                });
            }
        }));
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PS */
    public void mo9067PS() {
        this.aRF.addAndGet(30);
        m9059a(this.aRF, true, true);
    }

    @Override // com.kingroot.kinguser.auf.InterfaceC1605a
    /* renamed from: PT */
    public void mo9066PT() {
        amb.m10458Ib().mo10398a(1, new IGetSplashResult.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$10
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IGetSplashResult
            public void onResult(AppBaseModel appBaseModel) {
                if (appBaseModel != null) {
                    auo.this.aRD.mo9094i(appBaseModel);
                }
            }
        });
    }

    /* renamed from: a */
    private void m9064a(int i, int i2, AtomicInteger atomicInteger, AbstractC1626a abstractC1626a) {
        m9063a(i, i2, atomicInteger, abstractC1626a, new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9063a(final int i, final int i2, final AtomicInteger atomicInteger, final AbstractC1626a abstractC1626a, final List<AppBaseModel> list) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.aRE.add(countDownLatch);
        alq.m10547GY().mo10433a(i2, 30, atomicInteger.get(), new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$11
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i3, final List<AppBaseModel> list2) {
                beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.mvp.presenter.AppsMarketMaiPresenter$11.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        list.addAll(anf.m10291aA(list2));
                        if (list.size() < 5 && i < 2) {
                            atomicInteger.getAndAdd(30);
                            auo.this.m9063a(i + 1, i2, atomicInteger, abstractC1626a, list);
                        } else if (abstractC1626a != null) {
                            abstractC1626a.onFinish(list);
                        }
                        countDownLatch.countDown();
                    }
                }));
            }
        });
    }

    /* renamed from: com.kingroot.kinguser.auo$a */
    /* loaded from: classes.dex */
    public abstract class AbstractC1626a {
        public abstract void onFinish(List<AppBaseModel> list);

        private AbstractC1626a() {
        }
    }
}
