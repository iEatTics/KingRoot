package com.kingroot.kinguser;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.ProgressBar;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.SlidingUpPanelLayout;
import com.kingroot.kinguser.aoq;
import com.kingroot.kinguser.apd;
import com.kingroot.kinguser.baz;
import com.kingroot.kinguser.bfd;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.boq;
import com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener;
import com.kingroot.kinguser.toolbox.view.ToolBoxView;
import com.kingroot.kinguses.R;
import java.io.File;
import java.math.BigDecimal;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bfd extends bfa implements SlidingUpPanelLayout.InterfaceC0559b {
    private bid aYM;
    private bid aYN;
    private C3637tk asq;
    protected ProgressBar bmd;
    private big bme;
    private bid bmf;
    private bid bmg;
    private RecommendAppSimpleInfo bmk;
    private AtomicBoolean bmh = new AtomicBoolean(false);
    private int aYU = 1;
    private AtomicBoolean aYV = new AtomicBoolean(false);
    private AtomicBoolean bmi = new AtomicBoolean(false);
    private SlidingUpPanelLayout.EnumC0560c bmj = SlidingUpPanelLayout.EnumC0560c.COLLAPSED;
    private final Runnable aYY = new Runnable() { // from class: com.kingroot.kinguser.bfd.1
        @Override // java.lang.Runnable
        public void run() {
            if (!C3952zh.m1312pq().m1314du(bfd.this.bmk.pkgName)) {
                apd.m9833ar(bfd.this.bmk.pkgName, "Roottool");
            }
            bfd.this.bmi.set(false);
            if (bfd.this.asq != null) {
                bfd.this.asq.release();
            }
        }
    };
    private Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.bfd.10
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 0:
                    bfd.this.m7334Ug();
                    return;
                case 1:
                    bfd.this.m7337Ud();
                    return;
                case 2:
                    bfd.this.m7310iu(0);
                    bfd.this.m7317dM(true);
                    return;
                case 3:
                    bfd.this.m7312hx(10);
                    return;
                case 4:
                    bfd.this.m7333ZG();
                    if (!C3748vb.m1917S(KApplication.m13453ge())) {
                        bfd.this.m7334Ug();
                        return;
                    } else {
                        C3954zj.m1310b(String.format(bfd.this.mContext.getString(R.string.tool_box_item_open_failed), bfd.this.blN.mainTitle));
                        return;
                    }
                case 5:
                default:
                    return;
                case 6:
                    bfd.this.m7333ZG();
                    C3954zj.m1310b(bfd.this.mContext.getString(R.string.tool_box_item_download_time_out));
                    return;
                case 7:
                    bfd.this.m7333ZG();
                    return;
                case 8:
                    bfd.this.m7340Ua();
                    return;
                case 9:
                    bfd.this.m7333ZG();
                    C3954zj.m1310b(String.format(bfd.this.mContext.getString(R.string.tool_box_item_open_failed), bfd.this.blN.mainTitle));
                    return;
                case 10:
                    bfd.this.m7317dM(false);
                    bfd.this.m7339Ub();
                    return;
                case 11:
                    bfd.this.m7336Ue();
                    return;
            }
        }
    };
    private Runnable bml = new Runnable() { // from class: com.kingroot.kinguser.bfd.16
        @Override // java.lang.Runnable
        public void run() {
            if (!bfd.this.bmh.get()) {
                bfd.this.m7312hx(6);
                DownloaderTaskInfo hM = aoq.m9902Ks().mo4079hM(bfd.this.bmk.pkgName);
                if (hM != null) {
                    aoq.m9902Ks().m9883a(hM);
                }
            }
        }
    };
    private bed aZa = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.bfd.18
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (atu.m9136v(bfd.this.mContext, bfd.this.bmk.pkgName)) {
                atu.m9137t(bfd.this.mContext, bfd.this.bmk.pkgName);
            } else if (!apu.m9745b(bfd.this.bmk)) {
                bfd.this.aYU = 1;
                byte m1921O = C3748vb.m1921O(bfd.this.mContext);
                if (m1921O == 0) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bfd.18.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bfd.this.m7331ZI();
                        }
                    });
                } else if (m1921O == -1) {
                    bfd.this.m7312hx(0);
                } else {
                    bfd.this.m7312hx(1);
                }
            } else {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bfd.18.2
                    @Override // java.lang.Runnable
                    public void run() {
                        bfd.this.m7330ZJ();
                    }
                });
            }
        }
    });
    private AppDownloadClient.AppDownloadListenerAdapter awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxAppViewHolder$10
        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
            Handler handler;
            Runnable runnable;
            if (downloaderTaskInfo != null && !TextUtils.isEmpty(bfd.this.bmk.apkUrl) && TextUtils.equals(downloaderTaskInfo.getOriginalUrl(), bfd.this.bmk.apkUrl)) {
                bfd.this.m7310iu(i);
                handler = bfd.this.mHandler;
                runnable = bfd.this.bml;
                handler.removeCallbacks(runnable);
            }
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
            bfd.this.m7312hx(3);
            apd.m9832c(bfd.this.bmk.pkgName, bfd.this.aYU, "Roottool");
        }

        @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
        public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
            bfd.this.m7312hx(4);
        }
    };
    private NetworkChangedRemoteListener aZb = new NetworkChangedRemoteListener.Stub() { // from class: com.kingroot.kinguser.toolbox.adapter.ToolBoxAppViewHolder$11
        @Override // com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener
        public void onTurnIntoMobileNetwork() {
            if (aoq.m9902Ks().mo4079hM(bfd.this.bmk.pkgName).m4052KJ() == boq.DOWNLOADING) {
                aoq.m9902Ks().m9877hK(bfd.this.bmk.pkgName);
                bfd.this.m7312hx(11);
            }
        }
    };
    private baz.InterfaceC2050a aYZ = new baz.InterfaceC2050a() { // from class: com.kingroot.kinguser.bfd.4
        @Override // com.kingroot.kinguser.baz.InterfaceC2050a
        /* renamed from: aE */
        public void mo7295aE(String str, String str2) {
            if ("android.intent.action.PACKAGE_ADDED".equals(str) && TextUtils.equals(str2, bfd.this.bmk.pkgName)) {
                baz.m7867b(bfd.this.aYZ);
                apd.m9834aq(bfd.this.bmk.pkgName, "Roottool");
                bfd.this.m7312hx(8);
                bfd.this.bmi.set(false);
                if (bfd.this.asq != null) {
                    bfd.this.asq.release();
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    /* renamed from: a */
    public void mo7293a(ToolBoxView.C3655a c3655a) {
        super.mo7293a(c3655a);
        if (this.blN.bmL instanceof RecommendAppSimpleInfo) {
            this.bmk = (RecommendAppSimpleInfo) this.blN.bmL;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ue */
    public void m7336Ue() {
        if (this.aYN == null) {
            this.aYN = new bid(this.mContext);
        }
        if (!this.aYN.isShowing()) {
            this.aYN.show();
            String format = String.format(C3953zi.m1311pr().getString(R.string.examination_recommend_app_detail_network_change_tip), this.bmk.name);
            this.aYN.setTitleText(C3953zi.m1311pr().getString(R.string.examination_recommend_app_detail_network_change_title));
            this.aYN.m6933d(format);
            this.aYN.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
            this.aYN.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
            this.aYN.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.14
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    bfd.this.m7312hx(7);
                }
            });
            this.aYN.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.15
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    bfd.this.m7335Uf();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dM */
    public void m7317dM(boolean z) {
        this.mView.setClickable(z);
        if (!this.bmd.isShown()) {
            this.bmd.setVisibility(0);
        }
        this.blR.setText(C3953zi.m1311pr().getString(R.string.tool_box_item_opening));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ZG */
    public void m7333ZG() {
        this.bmd.setVisibility(8);
        this.blR.setText(C3953zi.m1311pr().getString(R.string.tool_box_item_open_now));
        this.mView.setClickable(true);
    }

    @Override // com.kingroot.kinguser.bez
    /* renamed from: ZD */
    protected int mo7287ZD() {
        return R.layout.tool_box_list_item_subordinate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: ZE */
    public void mo7286ZE() {
        super.mo7286ZE();
        this.bmd = (ProgressBar) this.mView.findViewById(R.id.rectangle_progress_bar);
        this.bmd.setVisibility(8);
        this.blQ.setVisibility(8);
        this.mView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bfd.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bfd.this.m7338Uc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: s */
    public void mo7284s(Object obj) {
        super.mo7284s(obj);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onResume() {
        if (this.bmi.get()) {
            m7333ZG();
        }
        if (this.asq != null) {
            this.asq.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uc */
    public void m7338Uc() {
        if (this.blN != null && !TextUtils.isEmpty(this.bmk.apkUrl)) {
            DownloaderTaskInfo hM = aoq.m9902Ks().mo4079hM(this.bmk.pkgName);
            if (hM != null && hM.m4052KJ() == boq.DOWNLOADING) {
                aoq.m9902Ks().m9877hK(this.bmk.pkgName);
                m7312hx(7);
                return;
            }
            if (hM == null) {
                beg.m7461Zj().m7450c(this.aZa);
            } else if (hM.m4052KJ() == boq.PAUSED) {
                beg.m7461Zj().m7450c(this.aZa);
            } else {
                aoq.m9902Ks().m9883a(hM);
                beg.m7461Zj().m7450c(this.aZa);
            }
            ady.m12308tK().mo1746bi(100513);
            apd.m9836ao(this.bmk.pkgName, "Roottool");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: iu */
    public void m7310iu(final int i) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bfd.19
            @Override // java.lang.Runnable
            public void run() {
                bfd.this.bmd.setProgress((int) ((i / 100.0f) * 80.0f));
                if (i > 0) {
                    bfd.this.bmh.set(true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: iv */
    public void m7309iv(final int i) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bfd.20
            @Override // java.lang.Runnable
            public void run() {
                if (!bfd.this.bmd.isShown()) {
                    bfd.this.bmd.setVisibility(0);
                }
                bfd.this.bmd.setProgress((int) (80.0f + ((i / 100.0f) * 20.0f)));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hx */
    public void m7312hx(int i) {
        this.mHandler.sendEmptyMessage(i);
    }

    /* renamed from: Uf */
    public void m7335Uf() {
        this.mHandler.postDelayed(this.bml, 30000L);
        aoq.m9902Ks().m9884a(AppDownloadRequest.m4063a(this.bmk), this.aYU, this.awu);
        if (!this.aYV.getAndSet(true)) {
            aoq.m9902Ks().m9880a(this.aZb);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ua */
    public void m7340Ua() {
        m7332ZH();
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bfd.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    Intent launchIntentForPackage = C3952zh.m1312pq().getLaunchIntentForPackage(bfd.this.bmk.pkgName);
                    if (launchIntentForPackage != null) {
                        bfd.this.mContext.startActivity(launchIntentForPackage);
                        apd.m9838a(bfd.this.bmk.pkgName, bfd.this.aYU, C3748vb.m1921O(bfd.this.mContext) == -1 ? 1 : 0, "Roottool");
                        File m9741h = apu.m9741h(AppDownloadRequest.m4063a(bfd.this.bmk));
                        if (m9741h.exists()) {
                            m9741h.delete();
                        }
                    }
                } catch (Throwable th) {
                }
            }
        }));
    }

    /* renamed from: ZH */
    private void m7332ZH() {
        bfc ZC = m7352ZC();
        if (ZC != null) {
            ZC.m7343ZF();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ub */
    public void m7339Ub() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bfd.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (apu.m9745b(bfd.this.bmk)) {
                    bfd.this.m7309iv(0);
                    int i = aiv.m11525yw().m11547a(apu.m9741h(AppDownloadRequest.m4063a(bfd.this.bmk)), true).retCode;
                    if (i == 0) {
                        bfd.this.m7309iv(100);
                        bfd.this.m7312hx(8);
                        apd.m9831d(bfd.this.bmk.pkgName, bfd.this.aYU, "Roottool");
                    } else if (i == 1) {
                        apd.m9830e(bfd.this.bmk.pkgName, bfd.this.aYU, "Roottool");
                        apd.m9835ap(bfd.this.bmk.pkgName, "Roottool");
                        bfd.this.asq = C3637tk.m2167cS("ku_page_ToolBoxAppViewHolder");
                        if (bfd.this.asq != null) {
                            bfd.this.asq.lock();
                        }
                        C3840wl.m1551c(bfd.this.aYY, 600000L);
                        bfd.this.bmi.set(true);
                        baz.m7868a(bfd.this.aYZ);
                    } else {
                        bfd.this.m7312hx(9);
                    }
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ud */
    public void m7337Ud() {
        String str;
        double d;
        double doubleValue;
        ady.m12308tK().mo1746bi(100514);
        this.aYM = new bid(this.mContext);
        this.aYM.show();
        try {
            if (this.bmk.fileSize <= 0) {
                d = 20.0d;
            } else {
                d = this.bmk.fileSize / 1024.0d;
            }
            BigDecimal bigDecimal = new BigDecimal(d);
            if (d < 1.0d) {
                doubleValue = bigDecimal.setScale(1, 4).doubleValue();
            } else {
                doubleValue = bigDecimal.setScale(0, 4).doubleValue();
            }
            str = String.format(C3953zi.m1311pr().getString(R.string.app_dist_download_no_wifi_tip), Double.toString(doubleValue));
        } catch (Exception e) {
            str = "";
        }
        this.aYM.setTitleText(C3953zi.m1311pr().getString(R.string.app_dist_download_no_wifi_tip_title));
        this.aYM.m6933d(str);
        this.aYM.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
        this.aYM.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
        this.aYM.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.5
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bfd.this.aYM.dismiss();
                ady.m12308tK().mo1746bi(100516);
            }
        });
        this.aYM.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.6
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bfd.this.m7312hx(2);
                bfd.this.m7335Uf();
                ady.m12308tK().mo1746bi(100515);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ug */
    public void m7334Ug() {
        this.bme = new big(this.mContext);
        this.bme.show();
        this.bme.setTitleText(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_tips));
        this.bme.mo6682lK(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_left_btn));
        this.bme.m6930lL(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_right_btn));
        this.bme.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.7
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
            }
        });
        this.bme.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.8
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                try {
                    bfd.this.bme.dismiss();
                    bgd.m7122bt(bfd.this.mContext);
                } catch (Exception e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ZI */
    public void m7331ZI() {
        this.bmf = new bid(this.mContext);
        this.bmf.show();
        this.bmf.setTitleText(C3953zi.m1311pr().getString(R.string.app_dist_download_no_wifi_tip_title));
        this.bmf.m6933d(C3953zi.m1311pr().getString(R.string.app_dist_download_confirm_tip_title, this.bmk.mainTitle));
        this.bmf.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
        this.bmf.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
        this.bmf.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.9
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bfd.this.bmf.dismiss();
            }
        });
        this.bmf.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.11
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bfd.this.m7312hx(2);
                bfd.this.m7335Uf();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ZJ */
    public void m7330ZJ() {
        this.bmg = new bid(this.mContext);
        this.bmg.show();
        this.bmg.setTitleText(C3953zi.m1311pr().getString(R.string.app_dist_download_install_tip_title));
        this.bmg.m6933d(C3953zi.m1311pr().getString(R.string.app_dist_download_install_confirm_tip_title, this.bmk.mainTitle));
        this.bmg.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
        this.bmg.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
        this.bmg.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.12
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bfd.this.bmg.dismiss();
            }
        });
        this.bmg.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bfd.13
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bfd.this.aYU = 0;
                bfd.this.m7312hx(10);
                apd.m9832c(bfd.this.bmk.pkgName, bfd.this.aYU, "Roottool");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onDestroy() {
        if (this.aYM != null && this.aYM.isShowing()) {
            this.aYM.dismiss();
        }
        if (this.aYN != null && this.aYN.isShowing()) {
            this.aYN.dismiss();
        }
        if (this.bme != null && this.bme.isShowing()) {
            this.bme.dismiss();
        }
        if (this.bmf != null && this.bmf.isShowing()) {
            this.bmf.dismiss();
        }
        if (this.bmg != null && this.bmg.isShowing()) {
            this.bmg.dismiss();
        }
        amz.m10365II().m9881a(this.awu);
        aoq.m9902Ks().m9880a(this.aZb);
        super.onDestroy();
    }

    /* renamed from: ZK */
    public void m7329ZK() {
        if (this.bmj == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
            apd.m9837an(this.bmk.pkgName, "Roottool");
        }
    }

    @Override // com.kingroot.common.uilib.SlidingUpPanelLayout.InterfaceC0559b
    public void onPanelSlide(View view, float f) {
    }

    @Override // com.kingroot.common.uilib.SlidingUpPanelLayout.InterfaceC0559b
    /* renamed from: b */
    public void mo7324b(View view, SlidingUpPanelLayout.EnumC0560c enumC0560c, SlidingUpPanelLayout.EnumC0560c enumC0560c2) {
        if (this.bmj == SlidingUpPanelLayout.EnumC0560c.COLLAPSED && enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
            apd.m9837an(this.bmk.pkgName, "Roottool");
        }
        if (enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.COLLAPSED || enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
            this.bmj = enumC0560c2;
        }
    }
}
