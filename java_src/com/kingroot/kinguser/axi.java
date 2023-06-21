package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.kingcore.uilib.TextProgressBar;
import com.kingroot.kinguser.aoq;
import com.kingroot.kinguser.apd;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.axi;
import com.kingroot.kinguser.baz;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguser.distribution.net.download.AppDownloadClient;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener;
import com.kingroot.kinguses.R;
import java.io.File;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class axi extends AbstractC3922ym {
    private Button aCO;
    private final ExamRecommendAppInfo aLl;
    private bid aYM;
    private bid aYN;
    private bid aYO;
    private TextProgressBar aYP;
    private ImageView aYQ;
    private Bitmap aYR;
    private Bitmap aYS;
    private String aYT;
    private int aYU;
    private AtomicBoolean aYV;
    private boolean aYW;
    private boolean aYX;
    private final Runnable aYY;
    private baz.InterfaceC2050a aYZ;
    private bed aZa;
    private NetworkChangedRemoteListener aZb;
    private ImageView ahP;
    private C3637tk asq;
    private AppDownloadClient.AppDownloadListenerAdapter awu;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.aYX) {
            m8376hx(11);
        }
    }

    public axi(@NonNull Context context, @NonNull ExamRecommendAppInfo examRecommendAppInfo, @NonNull String str) {
        super(context, "ku_pageExaminationRecommedAppPage");
        this.aYT = "Optimi";
        this.aYU = 1;
        this.aYV = new AtomicBoolean(false);
        this.aYW = false;
        this.aYX = false;
        this.aYY = new Runnable() { // from class: com.kingroot.kinguser.axi.1
            @Override // java.lang.Runnable
            public void run() {
                if (!C3952zh.m1312pq().m1314du(axi.this.aLl.pkgName)) {
                    apd.m9833ar(axi.this.aLl.pkgName, axi.this.aYT);
                }
                if (axi.this.asq != null) {
                    axi.this.asq.release();
                }
            }
        };
        this.aYZ = new baz.InterfaceC2050a() { // from class: com.kingroot.kinguser.axi.11
            @Override // com.kingroot.kinguser.baz.InterfaceC2050a
            /* renamed from: aE */
            public void mo7295aE(String str2, String str3) {
                if ("android.intent.action.PACKAGE_ADDED".equals(str2) && TextUtils.equals(str3, axi.this.aLl.pkgName)) {
                    C3840wl.m1550d(axi.this.aYY);
                    baz.m7867b(axi.this.aYZ);
                    apd.m9834aq(axi.this.aLl.pkgName, axi.this.aYT);
                    axi.this.m8376hx(6);
                    if (axi.this.asq != null) {
                        axi.this.asq.release();
                    }
                }
            }
        };
        this.aZa = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.axi.12
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (!apu.m9745b(axi.this.aLl)) {
                    axi.this.aYU = 1;
                    byte m1921O = C3748vb.m1921O(axi.this.getContext());
                    if (m1921O == 0) {
                        axi.this.m8392Uf();
                        return;
                    } else if (m1921O == -1) {
                        axi.this.m8376hx(0);
                        return;
                    } else if (!axi.this.aYW) {
                        axi.this.m8376hx(1);
                        return;
                    } else {
                        axi.this.m8392Uf();
                        return;
                    }
                }
                axi.this.aYU = 0;
                axi.this.m8376hx(8);
                apd.m9832c(axi.this.aLl.pkgName, axi.this.aYU, axi.this.aYT);
            }
        });
        this.aZb = new NetworkChangedRemoteListener.Stub() { // from class: com.kingroot.kinguser.page.ExaminationRecommendAppPage$12
            @Override // com.kingroot.kinguser.distribution.net.download.NetworkChangedRemoteListener
            public void onTurnIntoMobileNetwork() {
                aoq.m9902Ks().m9877hK(axi.this.aLl.pkgName);
                axi.this.m8376hx(9);
            }
        };
        this.awu = new AppDownloadClient.AppDownloadListenerAdapter() { // from class: com.kingroot.kinguser.page.ExaminationRecommendAppPage$15
            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onProgress(int i, DownloaderTaskInfo downloaderTaskInfo) {
                Message obtainMessage = axi.this.getHandler().obtainMessage();
                obtainMessage.what = 5;
                obtainMessage.obj = Integer.valueOf(i);
                obtainMessage.sendToTarget();
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onStartDownload(DownloaderTaskInfo downloaderTaskInfo) {
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onComplete(DownloaderTaskInfo downloaderTaskInfo) {
                axi.this.m8376hx(3);
                apd.m9832c(axi.this.aLl.pkgName, axi.this.aYU, axi.this.aYT);
            }

            @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadClient.AppDownloadListenerAdapter, com.kingroot.kinguser.distribution.net.download.IAppDownloadListener
            public void onFailed(DownloaderTaskInfo downloaderTaskInfo) {
                axi.this.m8376hx(4);
            }
        };
        this.aLl = examRecommendAppInfo;
        this.aYT = str;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getActivity(), this.aLl.name);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.examination_app_detail_layout, (ViewGroup) null);
        this.aYP = (TextProgressBar) inflate.findViewById(R.id.progressbar);
        this.aYQ = (ImageView) inflate.findViewById(R.id.top_bg);
        this.ahP = (ImageView) inflate.findViewById(R.id.icon);
        this.aCO = (Button) inflate.findViewById(R.id.button_update);
        this.aCO.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axi.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axi.this.m8395Uc();
            }
        });
        this.aCO.setText(m1417V(2131165437L));
        ((TextView) inflate.findViewById(R.id.title)).setText(this.aLl.name);
        ((TextView) inflate.findViewById(R.id.describe)).setText(this.aLl.functionDesc);
        ArrayList arrayList = new ArrayList(this.aLl.picUrls);
        arrayList.add(this.aLl.bigIconUrl);
        apv.m9735LO().m9727a(arrayList, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.axi.7
            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: a */
            public void mo4137a(final String str, final Bitmap bitmap) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axi.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!TextUtils.equals(str, axi.this.aLl.bigIconUrl)) {
                            if (!C3942yy.m1351d(axi.this.aLl.picUrls) && TextUtils.equals(str, axi.this.aLl.picUrls.get(0))) {
                                axi.this.aYR = bitmap;
                                if (axi.this.aYR != null && !axi.this.aYR.isRecycled()) {
                                    axi.this.aYQ.setImageBitmap(axi.this.aYR);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        axi.this.aYS = bitmap;
                        if (axi.this.aYS != null && !axi.this.aYS.isRecycled()) {
                            axi.this.ahP.setImageBitmap(axi.this.aYS);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: eE */
            public void mo4136eE(String str) {
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m8391Ug();
                return;
            case 1:
                m8394Ud();
                return;
            case 2:
                return;
            case 3:
                m8376hx(8);
                return;
            case 4:
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.axi.8
                    @Override // java.lang.Runnable
                    public void run() {
                        axi.this.m8376hx(11);
                    }
                }, 1000L);
                Toast.makeText(this.mContext, m1417V(2131165433L), 0).show();
                return;
            case 5:
                this.aCO.setVisibility(8);
                int intValue = ((Integer) message.obj).intValue();
                if (intValue == 100) {
                    intValue = 99;
                }
                m8398P(intValue, m1417V(2131165432L));
                return;
            case 6:
                m8397Ua();
                return;
            case 7:
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.axi.9
                    @Override // java.lang.Runnable
                    public void run() {
                        axi.this.m8376hx(11);
                    }
                }, 1000L);
                Toast.makeText(this.mContext, m1417V(2131165433L), 0).show();
                return;
            case 8:
                this.aCO.setVisibility(0);
                this.aCO.setClickable(false);
                this.aCO.setText(m1417V(2131165434L));
                m8396Ub();
                return;
            case 9:
                m8393Ue();
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
                m8398P(0, "");
                return;
        }
    }

    /* renamed from: Ua */
    private void m8397Ua() {
        try {
            Intent launchIntentForPackage = C3952zh.m1312pq().getLaunchIntentForPackage(this.aLl.pkgName);
            if (launchIntentForPackage != null) {
                getActivity().startActivity(launchIntentForPackage);
                if ("RootSafe".equals(this.aYT)) {
                    aks.m11143BP().m10889bB(System.currentTimeMillis());
                }
                apd.m9838a(this.aLl.pkgName, this.aYU, C3748vb.m1921O(getActivity()) == -1 ? 1 : 0, this.aYT);
                getActivity().finish();
                File m9741h = apu.m9741h(AppDownloadRequest.m4063a(this.aLl));
                if (m9741h.exists()) {
                    m9741h.delete();
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: Ub */
    private void m8396Ub() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axi.10
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (apu.m9745b(axi.this.aLl)) {
                    int i = aiv.m11525yw().m11547a(apu.m9741h(AppDownloadRequest.m4063a(axi.this.aLl)), true).retCode;
                    if (i == 0) {
                        axi.this.m8376hx(6);
                        apd.m9831d(axi.this.aLl.pkgName, axi.this.aYU, axi.this.aYT);
                    } else if (i == 1) {
                        axi.this.m8376hx(10);
                        apd.m9830e(axi.this.aLl.pkgName, axi.this.aYU, axi.this.aYT);
                        apd.m9835ap(axi.this.aLl.pkgName, axi.this.aYT);
                        axi.this.asq = C3637tk.m2167cS("ku_pageExaminationRecommedAppPage");
                        if (axi.this.asq != null) {
                            axi.this.asq.lock();
                        }
                        C3840wl.m1551c(axi.this.aYY, 600000L);
                        baz.m7868a(axi.this.aYZ);
                    } else {
                        axi.this.m8376hx(7);
                    }
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hx */
    public void m8376hx(int i) {
        getHandler().sendEmptyMessage(i);
    }

    /* renamed from: P */
    private void m8398P(int i, String str) {
        this.aYP.setProgress(i);
        this.aYP.setVisibility(0);
        if (!TextUtils.isEmpty(str)) {
            this.aYP.setTextProgress(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uc */
    public void m8395Uc() {
        beg.m7461Zj().m7450c(this.aZa);
    }

    /* renamed from: Ud */
    private void m8394Ud() {
        String str;
        double d;
        double doubleValue;
        this.aYM = new bid(this.mContext);
        this.aYM.show();
        try {
            if (this.aLl.fileSize <= 0) {
                d = 20.0d;
            } else {
                d = this.aLl.fileSize / 1024.0d;
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
        this.aYM.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axi.13
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axi.this.aCO.setText(axi.this.m1417V(2131165437L));
                axi.this.aYW = true;
            }
        });
        this.aYM.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axi.2
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axi.this.m8392Uf();
            }
        });
    }

    /* renamed from: Ue */
    private void m8393Ue() {
        if (this.aYN == null) {
            this.aYN = new bid(this.mContext);
        }
        if (!this.aYN.isShowing()) {
            this.aYN.show();
            String format = String.format(C3953zi.m1311pr().getString(R.string.examination_recommend_app_detail_network_change_tip), this.aLl.name);
            this.aYN.setTitleText(C3953zi.m1311pr().getString(R.string.examination_recommend_app_detail_network_change_title));
            this.aYN.m6933d(format);
            this.aYN.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
            this.aYN.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
            this.aYN.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axi.3
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    axi.this.m8392Uf();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        this.aYV.set(false);
        aoq.m9902Ks().m9878b(this.aZb);
        amz.m10365II().m9881a(this.awu);
        super.onStop();
    }

    /* renamed from: Uf */
    public void m8392Uf() {
        m8376hx(2);
        aoq.m9902Ks().m9884a(AppDownloadRequest.m4063a(this.aLl), this.aYU, this.awu);
        if (!this.aYV.getAndSet(true)) {
            aoq.m9902Ks().m9880a(this.aZb);
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
        if (!apv.m9735LO().m9714ig(this.aLl.bigIconUrl)) {
            acs.m12655c(this.aYS);
        }
        if (!C3942yy.m1352c(this.aLl.picUrls) && !apv.m9735LO().m9714ig(this.aLl.picUrls.get(0))) {
            acs.m12655c(this.aYR);
        }
        super.onDestroy();
    }

    /* renamed from: Ug */
    private void m8391Ug() {
        this.aYO = new bid(this.mContext);
        this.aYO.show();
        this.aYO.setTitleText(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_title));
        this.aYO.m6933d(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_tips));
        this.aYO.mo6682lK(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_left_btn));
        this.aYO.m6930lL(C3953zi.m1311pr().getString(R.string.app_dist_download_no_networks_right_btn));
        this.aYO.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axi.4
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
            }
        });
        this.aYO.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axi.5
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                try {
                    axi.this.aYO.dismiss();
                    bgd.m7122bt(axi.this.mContext);
                } catch (Exception e) {
                }
            }
        });
    }
}
