package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.network.download.CommonFileDownloadTaskInfo;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskAdapter;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.activitys.ToolboxAppCardDistActivity;
import com.kingroot.kinguser.bci;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguses.R;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
/* loaded from: classes.dex */
public class bci extends AbstractC3446py {
    private static final String TAG = aiq.asd + "KMGuideBottom";
    INetworkLoadTaskCallback aSv;
    private long aZq;
    private bed aZx;
    private Button bgo;
    private TextRoundCornerProgressBar bgp;
    TextView bgq;
    private HandlerC2097a bgr;
    private Context mContext;
    private int mState;

    public bci(Context context) {
        super(context);
        this.mState = -1;
        this.aZq = 0L;
        this.aSv = new NetworkLoadTaskAdapter() { // from class: com.kingroot.kinguser.root.views.bottoms.KMGuideBottom$3
            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
                if (networkLoadTaskInfo != null) {
                    Message obtainMessage = bci.this.bgr.obtainMessage(6);
                    obtainMessage.obj = networkLoadTaskInfo;
                    bci.this.bgr.sendMessage(obtainMessage);
                }
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
                bci.this.m7676hx(2);
                bci.this.bgr.postDelayed(new Runnable() { // from class: com.kingroot.kinguser.root.views.bottoms.KMGuideBottom$3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        bci.this.m7676hx(999);
                    }
                }, BuglyBroadcastRecevier.UPLOADLIMITED);
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
                bci.this.m7676hx(3);
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onInstallFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
                bci.this.m7676hx(4);
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onInstallFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
                bci.this.m7676hx(5);
            }
        };
        this.aZx = new bed(bem.HIGH, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.bci.8
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                bci.this.m7695Uj();
            }
        });
        this.mContext = context;
        this.bgr = new HandlerC2097a();
    }

    @Override // com.kingroot.kinguser.AbstractC3449qa
    /* renamed from: gy */
    protected View mo2612gy() {
        View aA = m2613aA(R.layout.root_km_ad_bottom);
        this.bgo = (Button) aA.findViewById(R.id.adapt_retry_btn);
        this.bgp = (TextRoundCornerProgressBar) aA.findViewById(R.id.adapt_km_ad_btn);
        this.bgq = (TextView) aA.findViewById(R.id.adapt_km_description);
        this.bgp.setProgressColor(C3953zi.m1311pr().getColor(R.color.green_1));
        final AppBaseModel mo10418Hl = als.m10538Hi().mo10418Hl();
        if (mo10418Hl != null && !C3952zh.m1312pq().m1314du(mo10418Hl.pkgName)) {
            mo10418Hl.ifSelected = false;
            this.bgp.setProgressText(C3953zi.m1311pr().getString(R.string.root_failed_app_ad));
            this.bgq.setVisibility(8);
            this.bgp.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bci.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (mo10418Hl.jumptype == 1) {
                        AppDetailActivity.m12645a(bci.this.mContext, mo10418Hl, mo10418Hl.ifSelected, 2);
                    } else if (mo10418Hl.jumptype == 3) {
                        ToolboxAppCardDistActivity.m12576b(bci.this.mContext, mo10418Hl);
                    }
                }
            });
        } else {
            this.bgp.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bci.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100523);
                    if (!ais.m11585ye().m11584yf()) {
                        bci.this.m7692Xo();
                        adw.m12388tb().m12391cD(6);
                        adw.m12388tb().m12392cC(8);
                        adw.m12388tb().m12393b(bci.this.aSv);
                        beg.m7461Zj().m7450c(bci.this.aZx);
                        return;
                    }
                    ais.m11582yh();
                }
            });
        }
        return aA;
    }

    /* renamed from: Xn */
    public Button m7693Xn() {
        return this.bgo;
    }

    /* renamed from: com.kingroot.kinguser.bci$a */
    /* loaded from: classes.dex */
    public class HandlerC2097a extends Handler {
        public HandlerC2097a() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            bci.this.mState = message.what;
            switch (message.what) {
                case -1:
                    return;
                case 0:
                case 1:
                    bci.this.bgp.setBackgroundResource(R.drawable.grey_button_bg);
                    return;
                case 2:
                    bci.this.bgp.setClickable(false);
                    bci.this.bgp.setProgressText(bci.this.getString(R.string.root_km_guide_start));
                    return;
                case 3:
                    bci.this.m7694Ul();
                    Toast.makeText(bci.this.mContext, bci.this.getString(R.string.km_install_fail), 0).show();
                    return;
                case 4:
                    bci.this.m7694Ul();
                    try {
                        ais.m11582yh();
                        return;
                    } catch (Exception e) {
                        return;
                    }
                case 5:
                    bci.this.m7694Ul();
                    Toast.makeText(bci.this.mContext, bci.this.getString(R.string.km_install_fail), 0).show();
                    return;
                case 6:
                    if (message.obj instanceof CommonFileDownloadTaskInfo) {
                        int i = (int) (((CommonFileDownloadTaskInfo) message.obj).f820BH * 100.0f);
                        if (i == 100) {
                            i = 99;
                        }
                        bci.this.bgp.setProgress(i);
                        return;
                    }
                    return;
                case 7:
                    bci.this.m7697Ug();
                    return;
                case 8:
                    bci.this.m7698Ud();
                    return;
                default:
                    bci.this.m7694Ul();
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hx */
    public void m7676hx(int i) {
        this.bgr.sendEmptyMessage(i);
    }

    /* renamed from: Uc */
    private void m7699Uc() {
        if (this.mState == -1 || this.mState == 3 || this.mState == 5) {
            if (!C3748vb.m1917S(this.mContext)) {
                m7676hx(7);
            } else if (ais.m11585ye().m11586un() == 1) {
                if (!ais.m11585ye().m11587s(getContext(), ais.m11585ye().m11577ym())) {
                }
            } else if (!C3748vb.m1918R(this.mContext)) {
                m7676hx(8);
            } else {
                m7691a(getContext(), "kmPlugins.zip", ais.m11585ye().m11577ym(), false);
            }
        } else if (this.mState == 4) {
            ais.m11582yh();
        } else if (this.mState == 2) {
            m7696Ui();
        } else {
            this.mState = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m7691a(Context context, String str, String str2, boolean z) {
        int m12394a = adw.m12388tb().m12394a(adw.m12388tb().m12376tn(), str, str2, adw.m12388tb().m12385te());
        if (m12394a == 1 || m12394a == 0) {
            m7676hx(1);
        } else if (m12394a == 2) {
            m7696Ui();
        } else {
            m7676hx(3);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ug */
    public void m7697Ug() {
        final big bigVar = new big(this.mContext);
        bigVar.show();
        bigVar.setTitleText(C3953zi.m1311pr().getString(R.string.km_no_networks_tips));
        bigVar.mo6682lK(C3953zi.m1311pr().getString(R.string.km_no_networks_left_btn));
        bigVar.m6930lL(C3953zi.m1311pr().getString(R.string.km_no_networks_right_btn));
        bigVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bci.3
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bigVar.dismiss();
            }
        });
        bigVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bci.4
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                try {
                    bgd.m7122bt(bci.this.mContext);
                } catch (Exception e) {
                }
            }
        });
        ady.m12308tK().mo1746bi(100324);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ud */
    public void m7698Ud() {
        String str;
        double d;
        final bid bidVar = new bid(this.mContext);
        bidVar.show();
        try {
            if (this.aZq <= 0) {
                d = 3.5d;
            } else {
                d = this.aZq / 1048576;
            }
            str = String.format(C3953zi.m1311pr().getString(R.string.km_no_wifi_tips), Double.toString(d));
        } catch (Exception e) {
            str = null;
        }
        bidVar.setTitleText(C3953zi.m1311pr().getString(R.string.km_no_wifi_title));
        bidVar.m6933d(str);
        bidVar.mo6682lK(C3953zi.m1311pr().getString(R.string.km_no_wifi_left_btn));
        bidVar.m6930lL(C3953zi.m1311pr().getString(R.string.km_no_wifi_right_btn));
        bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bci.5
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bidVar.dismiss();
            }
        });
        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bci.6
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                bci.this.m7691a(bci.this.getContext(), "kmPlugins.zip", ais.m11585ye().m11577ym(), false);
            }
        });
    }

    /* renamed from: Ui */
    private void m7696Ui() {
        m7676hx(2);
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bci.7
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                bci.this.bgr.postDelayed(new Runnable() { // from class: com.kingroot.kinguser.bci.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        bci.this.m7676hx(999);
                    }
                }, BuglyBroadcastRecevier.UPLOADLIMITED);
                if (ais.m11585ye().m11591dB(adw.m12388tb().m12385te())) {
                    bci.this.m7676hx(4);
                } else {
                    bci.this.m7676hx(5);
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Xo */
    public void m7692Xo() {
        this.bgp.setProgressText(getString(R.string.root_km_guide_start));
        this.bgp.setClickable(false);
        this.bgo.setVisibility(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ul */
    public void m7694Ul() {
        this.bgp.setProgress(0.0f);
        this.bgp.setProgressText(getString(R.string.root_km_guide));
        this.bgp.setBackgroundResource(R.drawable.common_shadow_button_selector);
        this.bgp.setClickable(true);
        this.bgo.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uj */
    public void m7695Uj() {
        this.mState = adw.m12388tb().m12386td();
        if (!ais.m11585ye().m11584yf()) {
            String m11580yj = ais.m11585ye().m11580yj();
            this.mState = -1;
            if (!adw.m12388tb().m12387tc() && adw.m12388tb().m12389eF(m11580yj)) {
                this.mState = 2;
            }
        }
        m7676hx(this.mState);
        if (this.mState != 2 && this.aZq == 0) {
            this.aZq = ais.m11585ye().m11575yo();
        }
        m7699Uc();
    }
}
