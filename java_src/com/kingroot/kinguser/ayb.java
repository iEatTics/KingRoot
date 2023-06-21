package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.Toast;
import com.kingcore.uilib.TextProgressBar;
import com.kingroot.kinguser.amz;
import com.kingroot.kinguser.ayb;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.io.File;
import java.math.BigDecimal;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ayb extends AbstractC3922ym {

    /* renamed from: JF */
    private WebView f1635JF;
    private Button aCO;
    private IAppInstallListener aNQ;
    private bid aYM;
    private bid aYN;
    private bid aYO;
    private TextProgressBar aYP;
    private AtomicBoolean aYV;
    private boolean aYX;
    private bed aZa;
    private NetworkChangedRemoteListener aZb;
    private C3637tk asq;
    private AppDownloadClient.AppDownloadListenerAdapter awu;
    private final AppBaseModel bcB;
    private View bcC;

    /* renamed from: com.kingroot.kinguser.ayb$a */
    /* loaded from: classes.dex */
    public class C2011a extends WebViewClient {
        public C2011a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            ayb.this.f1635JF.loadUrl("about:blank");
            ayb.this.f1635JF.setVisibility(4);
            ayb.this.bcC.setVisibility(0);
            ayb.this.bcC.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ayb.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ayb.this.m8064UJ();
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            try {
                super.onPageFinished(webView, str);
            } catch (Exception e) {
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return !URLUtil.isNetworkUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UJ */
    public void m8064UJ() {
        this.f1635JF.loadUrl("about:blank");
        this.f1635JF.setVisibility(0);
        this.bcC.setVisibility(8);
        this.f1635JF.loadUrl(this.bcB.jumpUrl4App);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    @SuppressLint({"NewApi"})
    public void onResume() {
        super.onResume();
        if (this.aYX) {
            m8044hx(11);
        }
        if (this.f1635JF != null && abd.m12839qb() >= 11) {
            this.f1635JF.onResume();
        }
        amz.m10365II().m9879a(this.bcB.pkgName, this.awu);
        alm.m10566GQ().mo9329a(this.bcB.pkgName, this.aNQ);
    }

    public ayb(@NonNull Context context, @NonNull AppBaseModel appBaseModel) {
        super(context, "ku_pageToolboxAppCardDistPage");
        this.asq = C3637tk.m2167cS("ToolboxAppCardDistPage");
        this.aYV = new AtomicBoolean(false);
        this.aYX = false;
        this.aZa = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.ayb.7
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                super.mo1208a(interfaceC2117a);
                ana.m10352IO().mo10337H(ayb.this.bcB.categoryId, ayb.this.bcB.pkgName);
                if (!apu.m9738k(ayb.this.bcB)) {
                    byte m1921O = C3748vb.m1921O(ayb.this.getContext());
                    if (m1921O == 0) {
                        ayb.this.m8057Uf();
                    } else if (m1921O == -1) {
                        ayb.this.m8044hx(0);
                    } else {
                        ayb.this.m8044hx(1);
                    }
                } else if (interfaceC2117a.mo7445nF().size() <= 0 || !(interfaceC2117a.mo7445nF().get(0) instanceof Boolean) || !((Boolean) interfaceC2117a.mo7445nF().get(0)).booleanValue()) {
                    ayb.this.m8044hx(8);
                }
            }
        });
        this.aZb = new NetworkChangedRemoteListener.Stub() { // from class: com.kingroot.kinguser.page.ToolboxAppCardDistPage$9
            @Override // com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener
            public void onTurnIntoMobileNetwork() {
                amz.m10365II().m9877hK(ayb.this.bcB.pkgName);
                ayb.this.m8044hx(9);
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.page.ToolboxAppCardDistPage$12
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
                Message obtainMessage = ayb.this.getHandler().obtainMessage();
                obtainMessage.what = 5;
                obtainMessage.obj = Integer.valueOf(i);
                obtainMessage.sendToTarget();
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
                ayb.this.m8044hx(3);
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
                ayb.this.m8044hx(4);
                ayb.this.m8062UL();
            }
        };
        this.aNQ = new IAppInstallListener.Stub() { // from class: com.kingroot.kinguser.page.ToolboxAppCardDistPage$13
            @Override // com.kingroot.kinguser.gamebox.common.IAppInstallListener
            public void onState(String str, int i, String str2) {
                switch (i) {
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 13:
                    default:
                        return;
                    case 10:
                    case 11:
                        ayb.this.m8061Ua();
                        ayb.this.m8044hx(6);
                        return;
                    case 12:
                    case 14:
                    case 15:
                    case 16:
                        ayb.this.m8044hx(7);
                        ayb.this.m8062UL();
                        return;
                }
            }
        };
        this.bcB = appBaseModel;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getActivity(), this.bcB.appName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.bcB.ifSelected) {
            m8049dy(true);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.tool_box_app_card_dist_layout, (ViewGroup) null);
        this.aYP = (TextProgressBar) inflate.findViewById(R.id.progressbar);
        this.f1635JF = (WebView) inflate.findViewById(R.id.webView);
        try {
            if (11 <= abd.m12839qb()) {
                this.f1635JF.getClass().getDeclaredMethod("removeJavascriptInterface", String.class).invoke(this.f1635JF, "searchBoxJavaBridge_");
            }
        } catch (Throwable th) {
        }
        this.bcC = inflate.findViewById(R.id.data_exception);
        this.f1635JF.setWebViewClient(new C2011a());
        this.aCO = (Button) inflate.findViewById(R.id.button_update);
        this.aCO.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ayb.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ayb.this.m8049dy(false);
                als.m10538Hi().mo10419C(ayb.this.bcB.pkgName, 3);
            }
        });
        this.aCO.setText(m1417V(2131165437L));
        m8064UJ();
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m8056Ug();
                return;
            case 1:
                m8059Ud();
                return;
            case 2:
                m8063UK();
                return;
            case 3:
                m8044hx(8);
                return;
            case 4:
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.ayb.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ayb.this.m8044hx(11);
                    }
                }, 1000L);
                Toast.makeText(this.mContext, m1417V(2131165433L), 0).show();
                m8062UL();
                return;
            case 5:
                this.aCO.setVisibility(8);
                int intValue = ((Integer) message.obj).intValue();
                if (intValue == 100) {
                    intValue = 99;
                }
                m8065P(intValue, m1417V(2131165432L));
                return;
            case 6:
                return;
            case 7:
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.ayb.5
                    @Override // java.lang.Runnable
                    public void run() {
                        ayb.this.m8044hx(11);
                    }
                }, 1000L);
                Toast.makeText(this.mContext, m1417V(2131165433L), 0).show();
                return;
            case 8:
                this.aCO.setVisibility(0);
                this.aCO.setClickable(false);
                this.aCO.setText(m1417V(2131165434L));
                m8063UK();
                m8060Ub();
                return;
            case 9:
                m8058Ue();
                return;
            case 10:
                this.aYX = true;
                return;
            case 11:
                this.aCO.setClickable(true);
                this.aCO.setText(m1417V(2131165437L));
                this.aCO.setVisibility(0);
                return;
            default:
                this.aCO.setClickable(true);
                this.aCO.setText(m1417V(2131165437L));
                this.aCO.setVisibility(0);
                m8065P(0, "");
                return;
        }
    }

    /* renamed from: UK */
    private void m8063UK() {
        if (!this.asq.m2164jN()) {
            this.asq.m2161s(300000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ua */
    public void m8061Ua() {
        try {
            akl.m11257AS().m11178gT(this.bcB.pkgName);
            Intent launchIntentForPackage = C3952zh.m1312pq().getLaunchIntentForPackage(this.bcB.pkgName);
            if (launchIntentForPackage != null) {
                getActivity().startActivity(launchIntentForPackage);
                ana.m10352IO().mo10334K(this.bcB.categoryId, this.bcB.pkgName);
                getActivity().finish();
                File m9741h = apu.m9741h(AppDownloadRequest.m4059j(this.bcB));
                if (m9741h.exists()) {
                    m9741h.delete();
                }
            }
            m8062UL();
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UL */
    public void m8062UL() {
        if (this.asq.m2164jN()) {
            this.asq.release();
        }
        if (m1404oP()) {
            alm.m10566GQ().mo9330a(this.aNQ);
        }
    }

    /* renamed from: Ub */
    private void m8060Ub() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.ayb.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (apu.m9738k(ayb.this.bcB)) {
                    alm.m10566GQ().mo9331a(ApkInstallRequest.m3784l(ayb.this.bcB), ayb.this.aNQ);
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hx */
    public void m8044hx(int i) {
        getHandler().sendEmptyMessage(i);
    }

    /* renamed from: P */
    private void m8065P(int i, String str) {
        this.aYP.setProgress(i);
        this.aYP.setVisibility(0);
        if (!TextUtils.isEmpty(str)) {
            this.aYP.setTextProgress(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dy */
    public void m8049dy(boolean z) {
        beg.m7461Zj().m7454a(this.aZa, Boolean.valueOf(z));
    }

    /* renamed from: Ud */
    private void m8059Ud() {
        String str;
        double d;
        double doubleValue;
        this.aYM = new bid(this.mContext);
        this.aYM.show();
        try {
            if (this.bcB.fileSize <= 0) {
                d = 20.0d;
            } else {
                d = this.bcB.fileSize / 1048576.0d;
            }
            BigDecimal bigDecimal = new BigDecimal(d);
            if (d < 1.0d) {
                doubleValue = bigDecimal.setScale(1, 4).doubleValue();
            } else {
                doubleValue = bigDecimal.setScale(0, 4).doubleValue();
            }
            str = String.format(C3953zi.m1311pr().getString(R.string.app_dist_download_no_wifi_tip), Double.toString(doubleValue));
        } catch (Exception e) {
            str = null;
        }
        this.aYM.setTitleText(C3953zi.m1311pr().getString(R.string.app_dist_download_no_wifi_tip_title));
        this.aYM.m6933d(str);
        this.aYM.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
        this.aYM.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
        this.aYM.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ayb.8
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ayb.this.aCO.setText(ayb.this.m1417V(2131165437L));
            }
        });
        this.aYM.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ayb.9
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ayb.this.m8057Uf();
            }
        });
    }

    /* renamed from: Ue */
    private void m8058Ue() {
        if (this.aYN == null) {
            this.aYN = new bid(this.mContext);
        }
        if (!this.aYN.isShowing()) {
            this.aYN.show();
            String format = String.format(C3953zi.m1311pr().getString(R.string.examination_recommend_app_detail_network_change_tip), this.bcB.appName);
            this.aYN.setTitleText(C3953zi.m1311pr().getString(R.string.examination_recommend_app_detail_network_change_title));
            this.aYN.m6933d(format);
            this.aYN.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
            this.aYN.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
            this.aYN.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ayb.10
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ayb.this.m8057Uf();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        this.aYV.set(false);
        amz.m10365II().m9878b(this.aZb);
        amz.m10365II().m9881a(this.awu);
        super.onStop();
    }

    /* renamed from: Uf */
    public void m8057Uf() {
        m8044hx(2);
        amz.m10365II().m9884a(AppDownloadRequest.m4059j(this.bcB), 1, this.awu);
        if (!this.aYV.getAndSet(true)) {
            amz.m10365II().m9880a(this.aZb);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        if (this.aYM != null && this.aYM.isShowing()) {
            this.aYM.dismiss();
        }
        if (this.aYO != null && this.aYO.isShowing()) {
            this.aYO.dismiss();
        }
        if (this.aYN != null && this.aYN.isShowing()) {
            this.aYN.dismiss();
        }
        super.onDestroy();
    }

    /* renamed from: Ug */
    private void m8056Ug() {
        this.aYO = new bid(this.mContext);
        this.aYO.show();
        this.aYO.setTitleText(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_title));
        this.aYO.m6933d(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_tips));
        this.aYO.mo6682lK(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_left_btn));
        this.aYO.m6930lL(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_right_btn));
        this.aYO.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ayb.2
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
            }
        });
        this.aYO.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ayb.3
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                try {
                    ayb.this.aYO.dismiss();
                    bgd.m7122bt(ayb.this.mContext);
                } catch (Exception e) {
                }
            }
        });
    }
}
