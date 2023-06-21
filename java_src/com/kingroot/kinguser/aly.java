package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.WellChosenOuterGuideView;
import com.kingroot.kinguser.activitys.AppsMarketWellChosenAppsActivity;
import com.kingroot.kinguser.activitys.WellChosenOuterNewPhoneGuideDialogActivity;
import com.kingroot.kinguser.aly;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestResultListener;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.p019qq.taf.jce.JceStruct;
import com.tencent.feedback.eup.CrashReport;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aly implements amv {
    private static final String TAG = aiq.arY + "_AppsMarketWellChosenMgrImp";
    private static final cce<aly> sInstance = new cce<aly>() { // from class: com.kingroot.kinguser.aly.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: HP */
        public aly create() {
            return new aly();
        }
    };
    private final AtomicBoolean azd;
    private final AtomicBoolean aze;
    private final AtomicBoolean azf;
    private LinearLayout azg;
    private final AtomicBoolean azh;
    private final AtomicBoolean azi;
    private WellChosenOuterGuideView azj;
    private final alz<ArrayList<AppBaseModel>> azk;
    private final alz<ArrayList<AppBaseModel>> azl;
    private bed azm;

    @InterfaceC3726ut
    /* renamed from: HG */
    public static aly m10506HG() {
        return sInstance.get();
    }

    private aly() {
        this.azd = new AtomicBoolean(false);
        this.aze = new AtomicBoolean(false);
        this.azf = new AtomicBoolean(false);
        this.azh = new AtomicBoolean(false);
        this.azi = new AtomicBoolean(false);
        this.azk = new alz<ArrayList<AppBaseModel>>() { // from class: com.kingroot.kinguser.aly.3
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "appsmarket_amwc.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hg */
            public ArrayList<AppBaseModel> mo7423Hc() {
                return new ArrayList<>();
            }
        };
        this.azl = new alz<ArrayList<AppBaseModel>>() { // from class: com.kingroot.kinguser.aly.4
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return new File(KApplication.m13453ge().getFilesDir(), "appsmarket_nfnp.dat");
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Hg */
            public ArrayList<AppBaseModel> mo7423Hc() {
                return new ArrayList<>();
            }
        };
        this.azm = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aly.7
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                final int intValue = ((Integer) interfaceC2117a.mo7445nF().get(0)).intValue();
                if (intValue != 0 && !aly.this.azf.get() && !aly.this.aze.get()) {
                    if (!akl.m11257AS().m11235Bh()) {
                        boolean z = akl.m11257AS().m11232Bk() ? akl.m11257AS().m11237Bf() < 2 : false;
                        if (aly.this.azd.get() && z) {
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aly.7.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    aly.this.m10480s(intValue, false);
                                }
                            });
                            akl.m11257AS().m11238Be();
                            akl.m11257AS().m11205as(System.currentTimeMillis());
                            ady.m12308tK().mo1746bi(100646);
                        }
                    }
                }
            }
        });
        this.azk.m10476HQ();
        this.azl.m10476HQ();
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.aly.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                aly.this.m10498HO();
            }
        }));
    }

    @NonNull
    /* renamed from: HH */
    private List<AppBaseModel> m10505HH() {
        return m10493a(this.azk);
    }

    @NonNull
    /* renamed from: a */
    private List<AppBaseModel> m10493a(alz<ArrayList<AppBaseModel>> alzVar) {
        List<AppBaseModel> m10291aA = anf.m10291aA(alzVar.m10475HR());
        return m10291aA.subList(0, Math.min(27, m10291aA.size()));
    }

    @NonNull
    /* renamed from: HI */
    private List<AppBaseModel> m10504HI() {
        return m10493a(this.azl);
    }

    @Override // com.kingroot.kinguser.amv
    @NonNull
    /* renamed from: fj */
    public List<AppBaseModel> mo10403fj(int i) {
        switch (i) {
            case 0:
                return Collections.emptyList();
            case 1:
                return m10505HH();
            case 2:
                return m10504HI();
            default:
                return Collections.emptyList();
        }
    }

    /* renamed from: HJ */
    private Boolean m10503HJ() {
        return m10490b(this.azk);
    }

    @NonNull
    /* renamed from: b */
    private Boolean m10490b(alz<ArrayList<AppBaseModel>> alzVar) {
        try {
            List<AppBaseModel> m10493a = m10493a(alzVar);
            if (!C3942yy.m1351d(m10493a) && m10493a.size() >= 6) {
                boolean z = true;
                for (AppBaseModel appBaseModel : m10493a) {
                    z = !apv.m9735LO().m9720ia(appBaseModel.iconUrl) ? false : z;
                }
                return Boolean.valueOf(z);
            }
            return false;
        } catch (Throwable th) {
            CrashReport.handleCatchException(new Thread(), th, th.getMessage(), "isAppsReady2Show crash".getBytes());
            return false;
        }
    }

    /* renamed from: HK */
    private Boolean m10502HK() {
        return m10490b(this.azl);
    }

    /* renamed from: a */
    private void m10492a(IRequestResultListener iRequestResultListener) {
        m10497a(1, iRequestResultListener, 0, new ArrayList(), 5012401, this.azk);
    }

    /* renamed from: b */
    private void m10489b(IRequestResultListener iRequestResultListener) {
        m10497a(1, iRequestResultListener, 0, new ArrayList(), 5010017, this.azl);
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: HC */
    public void mo10408HC() {
        m10489b((IRequestResultListener) null);
        m10492a((IRequestResultListener) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m10497a(final int i, final IRequestResultListener iRequestResultListener, final int i2, @NonNull final List<AppBaseModel> list, final int i3, final alz<ArrayList<AppBaseModel>> alzVar) {
        alq.m10547GY().mo10433a(i3, 81, i2, new ILoadAppsListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.AppsMarketWellChosenMgrImp$5
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppsListener
            public void onReceive(int i4, final List<AppBaseModel> list2) {
                beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.distribution.appsmarket.core.AppsMarketWellChosenMgrImp$5.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        list.addAll(anf.m10291aA(list2));
                        for (AppBaseModel appBaseModel : list2) {
                            apv.m9735LO().m9717id(appBaseModel.iconUrl);
                        }
                        if (list.size() < 81 && i < 3) {
                            aly.this.m10497a(i + 1, iRequestResultListener, i2 + 81, list, i3, alzVar);
                            return;
                        }
                        synchronized (alzVar) {
                            ((ArrayList) alzVar.m10475HR()).clear();
                            ((ArrayList) alzVar.m10475HR()).addAll(list);
                            alzVar.m10473HT();
                        }
                        if (iRequestResultListener != null) {
                            try {
                                iRequestResultListener.onFinish((List) alzVar.m10475HR());
                            } catch (RemoteException e) {
                            }
                        }
                    }
                });
            }
        });
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: fk */
    public int mo10402fk(int i) {
        return mo10403fj(i).size();
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: ax */
    public void mo10405ax(List<AppDownLoadModel> list) {
        for (AppDownLoadModel appDownLoadModel : list) {
            amz.m10365II().m10356c(AppDownloadRequest.m4059j(appDownLoadModel));
        }
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: fl */
    public void mo10401fl(final int i) {
        if (this.azd.get()) {
            beg.m7461Zj().m7454a(this.azm, Integer.valueOf(i));
        } else {
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.aly.6
                @Override // java.lang.Runnable
                public void run() {
                    beg.m7461Zj().m7454a(aly.this.azm, Integer.valueOf(i));
                }
            }, 1500L);
        }
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: cy */
    public void mo10404cy(boolean z) {
        this.azd.set(z);
        if (!this.azd.get() && this.aze.get()) {
            m10501HL();
            this.azf.set(true);
        }
        if (this.azf.get() && this.azd.get()) {
            m10480s(mo10407HD().intValue(), true);
        }
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: fm */
    public void mo10400fm(int i) {
        if (i != 1) {
            if ((this.azf.get() || this.aze.get()) && !akl.m11257AS().m11235Bh()) {
                long m11233Bj = akl.m11257AS().m11233Bj();
                long m11234Bi = akl.m11257AS().m11234Bi();
                if (adk.m12538g(m11233Bj, 43200000L) && m11234Bi < m11233Bj) {
                    m10501HL();
                    this.azf.set(false);
                    WellChosenOuterNewPhoneGuideDialogActivity.m12575a(KApplication.m13453ge(), mo10402fk(i), i);
                    akl.m11257AS().m11236Bg();
                    ady.m12308tK().mo1746bi(100648);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: HE */
    public void mo10406HE() {
        m10501HL();
        this.azf.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public void m10480s(final int i, boolean z) {
        if (i != 0) {
            WindowManager windowManager = (WindowManager) KApplication.m13453ge().getSystemService("window");
            if (this.azg != null) {
                try {
                    windowManager.removeView(this.azg);
                    this.azj.recycle();
                } catch (Exception e) {
                }
            }
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.format = 1;
            layoutParams.flags |= 264;
            layoutParams.type = 2003;
            layoutParams.gravity = 51;
            layoutParams.y = 0;
            layoutParams.x = (int) (abg.m12836qc() * 0.75f);
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.alpha = 1.0f;
            this.azg = new LinearLayout(KApplication.m13453ge());
            this.azj = new WellChosenOuterGuideView(KApplication.m13453ge());
            this.azj.m13197aa(z ? false : true);
            this.azj.setCloseEnable(false);
            this.azj.setWidth((int) (abg.m12836qc() * 0.25f));
            this.azj.setOnCloseListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aly.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    aly.this.mo10406HE();
                }
            });
            this.azj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aly.9
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    aly.this.azj.m13194c(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.aly.9.1
                        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            AppsMarketWellChosenAppsActivity.m12635f(KApplication.m13453ge(), i);
                            aly.this.m10501HL();
                            aly.this.azf.set(false);
                            akl.m11257AS().m11206ar(System.currentTimeMillis());
                            ady.m12308tK().mo1746bi(100647);
                        }
                    });
                }
            });
            this.azj.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            this.azg.addView(this.azj);
            try {
                windowManager.addView(this.azg, layoutParams);
                this.aze.set(true);
                this.azf.set(false);
            } catch (Exception e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: HL */
    public void m10501HL() {
        if (this.azg != null) {
            try {
                ((WindowManager) KApplication.m13453ge().getSystemService("window")).removeView(this.azg);
                this.azj.recycle();
            } catch (Exception e) {
            }
            this.aze.set(false);
        }
    }

    /* renamed from: HM */
    private boolean m10500HM() {
        if (C3952zh.m1312pq().m1314du("com.tencent.mobileqq") || C3952zh.m1312pq().m1314du("com.tencent.mm")) {
            int i = 0;
            for (PackageInfo packageInfo : C3952zh.m1312pq().getInstalledPackages(64)) {
                i = !C3938yu.m1365a(packageInfo) ? i + 1 : i;
            }
            return i <= 5 || m10498HO();
        }
        return true;
    }

    @Override // com.kingroot.kinguser.amv
    /* renamed from: HD */
    public Integer mo10407HD() {
        if (!this.azi.get()) {
            return 0;
        }
        if (m10500HM() && m10502HK().booleanValue() && !akl.m11257AS().m11191ea(2)) {
            return 2;
        }
        if (m10503HJ().booleanValue() && !akl.m11257AS().m11191ea(1)) {
            return 1;
        }
        return 0;
    }

    /* renamed from: q */
    private void m10481q(ArrayList<C3002dq> arrayList) {
        for (Map.Entry<String, Integer> entry : m10499HN().entrySet()) {
            if (entry != null) {
                C3002dq c3002dq = new C3002dq();
                c3002dq.name = entry.getKey();
                c3002dq.f2497nC = entry.getValue().intValue();
                arrayList.add(c3002dq);
            }
        }
    }

    /* renamed from: HN */
    private Map<String, Integer> m10499HN() {
        int i = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        HashMap hashMap = new HashMap();
        try {
            String m2320iY = C3565ru.m2320iY();
            if (TextUtils.isEmpty(m2320iY)) {
                return hashMap;
            }
            String str = m2320iY + File.separator;
            String[] list = new File(str).list();
            if (list == null || list.length <= 0) {
                return hashMap;
            }
            if (list.length <= 200) {
                i = list.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                String str2 = list[i2];
                if (!TextUtils.isEmpty(str2)) {
                    File file = new File(str + str2);
                    if (file.isDirectory()) {
                        hashMap.put(str2, Integer.valueOf((int) (file.lastModified() / 1000)));
                    }
                }
            }
            return hashMap;
        } catch (Exception e) {
            e.printStackTrace();
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: HO */
    public boolean m10498HO() {
        if (C3748vb.m1917S(KApplication.m13453ge())) {
            if (this.azi.get()) {
                return this.azh.get();
            }
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            C3000do c3000do = new C3000do();
            try {
                c3000do.f2492it = C3736ux.m1945kT().getSharkGuid();
            } catch (abn e) {
            }
            c3000do.f2491iE = aay.m12881al(KApplication.m13453ge());
            c3000do.versionCode = 0;
            c3000do.versionName = "";
            c3000do.f2494ny = new ArrayList<>();
            c3000do.f2495nz = new ArrayList<>();
            m10481q(c3000do.f2495nz);
            c3000do.productId = KApplication.m13445hY();
            c3000do.f2493lc = KApplication.m13443ia();
            awn.m8629Ta().m8628a(7047, c3000do, new C3001dp(), new cat() { // from class: com.kingroot.kinguser.aly.2
                @Override // com.kingroot.kinguser.cat
                /* renamed from: a */
                public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
                    if (!(jceStruct instanceof C3001dp) || ((C3001dp) jceStruct).f2496gv != 1) {
                        aly.this.azh.set(false);
                    } else {
                        aly.this.azh.set(true);
                    }
                    if (i3 == 0) {
                        aly.this.azi.set(true);
                    }
                    countDownLatch.countDown();
                }
            });
            try {
                countDownLatch.await(15L, TimeUnit.SECONDS);
            } catch (InterruptedException e2) {
            }
            return this.azh.get();
        }
        return false;
    }
}
