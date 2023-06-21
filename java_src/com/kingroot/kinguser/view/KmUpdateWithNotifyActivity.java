package com.kingroot.kinguser.view;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.TextView;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.common.network.download.CommonFileDownloadTaskInfo;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskAdapter;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.kinguser.C3748vb;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.adm;
import com.kingroot.kinguser.adw;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ais;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.aty;
import com.kingroot.kinguser.bar;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bgd;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.big;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class KmUpdateWithNotifyActivity extends Activity {
    private bid aYM;
    private bid aYO;
    private TextRoundCornerProgressBar aZo;
    private Context mContext;
    private TextView mTextView;
    private int mState = -1;
    private boolean aZp = false;
    private long aZq = 0;
    private boolean aZr = false;
    private int aie = 0;
    private bed adL = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.view.KmUpdateWithNotifyActivity.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            for (int i = 0; i < 3 && adw.m12388tb().m12377tm() != 1; i++) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                }
            }
            KmUpdateWithNotifyActivity.this.init();
        }
    });
    Handler mHandler = new Handler() { // from class: com.kingroot.kinguser.view.KmUpdateWithNotifyActivity.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            KmUpdateWithNotifyActivity.this.mState = message.what;
            switch (message.what) {
                case 0:
                case 1:
                    KmUpdateWithNotifyActivity.this.aZo.setBackgroundResource(R.drawable.grey_button_bg);
                    break;
                case 2:
                    KmUpdateWithNotifyActivity.this.aZo.setClickable(false);
                    KmUpdateWithNotifyActivity.this.aZo.setProgressText(KmUpdateWithNotifyActivity.this.getString(R.string.km_installing));
                    if (KmUpdateWithNotifyActivity.this.aZp) {
                        KmUpdateWithNotifyActivity.this.aZo.setProgress(96.0f);
                        KmUpdateWithNotifyActivity.this.m1864P(96, KmUpdateWithNotifyActivity.this.getString(R.string.km_installing));
                        break;
                    } else {
                        KmUpdateWithNotifyActivity.this.aZo.setBackgroundResource(R.drawable.grey_button_bg);
                        KmUpdateWithNotifyActivity.this.aZo.setProgress(0.0f);
                        break;
                    }
                case 3:
                    KmUpdateWithNotifyActivity.this.m1859Ul();
                    break;
                case 4:
                    try {
                        ais.m11582yh();
                        KmUpdateWithNotifyActivity.this.finish();
                        break;
                    } catch (Exception e) {
                        break;
                    }
                case 5:
                    KmUpdateWithNotifyActivity.this.m1859Ul();
                    break;
                case 6:
                    if (message.obj instanceof CommonFileDownloadTaskInfo) {
                        int i = (int) (((CommonFileDownloadTaskInfo) message.obj).f820BH * 100.0f);
                        if (i > 96) {
                            i = 96;
                        }
                        KmUpdateWithNotifyActivity.this.m1864P(i, KmUpdateWithNotifyActivity.this.getString(R.string.km_installing));
                        break;
                    } else {
                        return;
                    }
                case 7:
                    KmUpdateWithNotifyActivity.this.m1861Ug();
                    break;
                case 8:
                    KmUpdateWithNotifyActivity.this.m1862Ud();
                    break;
                default:
                    KmUpdateWithNotifyActivity.this.m1859Ul();
                    break;
            }
            super.handleMessage(message);
        }
    };
    INetworkLoadTaskCallback aSv = new NetworkLoadTaskAdapter() { // from class: com.kingroot.kinguser.view.KmUpdateWithNotifyActivity.4
        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
            KmUpdateWithNotifyActivity.this.aZp = true;
            Message obtainMessage = KmUpdateWithNotifyActivity.this.mHandler.obtainMessage(6);
            obtainMessage.obj = networkLoadTaskInfo;
            KmUpdateWithNotifyActivity.this.mHandler.sendMessage(obtainMessage);
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
            KmUpdateWithNotifyActivity.this.aZp = true;
            KmUpdateWithNotifyActivity.this.m1844hx(2);
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
            KmUpdateWithNotifyActivity.this.aZp = true;
            KmUpdateWithNotifyActivity.this.m1844hx(3);
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onInstallFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
            KmUpdateWithNotifyActivity.this.aZp = true;
            KmUpdateWithNotifyActivity.this.m1844hx(4);
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onInstallFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
            KmUpdateWithNotifyActivity.this.aZp = true;
            KmUpdateWithNotifyActivity.this.m1844hx(5);
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null) {
            this.aie = getIntent().getIntExtra("key_notify_type", 0);
        }
        setContentView(R.layout.dialog_update_km);
        this.mContext = this;
        this.mTextView = (TextView) findViewById(R.id.km_dialog_content);
        if (this.aie != 3) {
            this.mTextView.setText(C3953zi.m1311pr().getString(R.string.km_dialog_content_tips2));
        }
        this.aZo = (TextRoundCornerProgressBar) findViewById(R.id.progressbar);
        this.aZo.setProgressColor(C3953zi.m1311pr().getColor(R.color.green_1));
        this.aZo.setBackgroundResource(R.drawable.grey_button_bg);
        this.aZo.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.view.KmUpdateWithNotifyActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                KmUpdateWithNotifyActivity.this.m1863Uc();
            }
        });
        adm.m12480st().m12495sA();
        ady.m12308tK().mo1746bi(100432);
        if (bar.m7899VI()) {
            aty.m9109f(null, "com.kingstudio.purify", "&referrer=utm_source%3Dkrtopu");
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        adw.m12388tb().m12393b(this.aSv);
        beg.m7461Zj().m7450c(this.adL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init() {
        adw.m12388tb().m12390cE(this.aie);
        adw.m12388tb().m12391cD(5);
        adw.m12388tb().m12392cC(1);
        String m11580yj = ais.m11585ye().m11580yj();
        this.mState = adw.m12388tb().m12386td();
        if (!ais.m11585ye().m11584yf()) {
            this.mState = -1;
            if (!adw.m12388tb().m12387tc() && adw.m12388tb().m12389eF(m11580yj)) {
                this.mState = 2;
            }
        } else {
            this.mState = 4;
        }
        if (this.mState != -1) {
            m1844hx(this.mState);
        }
        if (this.mState != 2 && this.aZq == 0) {
            this.aZq = ais.m11585ye().m11575yo();
        }
        if (!this.aZr) {
            this.aZr = true;
            m1863Uc();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m1858a(Context context, String str, String str2, boolean z) {
        int m12394a = adw.m12388tb().m12394a(adw.m12388tb().m12376tn(), str, str2, 1);
        if (m12394a == 1 || m12394a == 0) {
            m1844hx(1);
        } else if (m12394a == 2) {
            m1860Ui();
        } else {
            m1844hx(3);
        }
        return true;
    }

    /* renamed from: Ui */
    private void m1860Ui() {
        m1844hx(2);
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.view.KmUpdateWithNotifyActivity.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (ais.m11585ye().m11591dB(1)) {
                    KmUpdateWithNotifyActivity.this.m1844hx(4);
                } else {
                    KmUpdateWithNotifyActivity.this.m1844hx(5);
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hx */
    public void m1844hx(int i) {
        this.mHandler.sendEmptyMessage(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P */
    public void m1864P(int i, String str) {
        this.aZo.setProgress(i);
        this.aZo.setVisibility(0);
        this.aZo.setProgressText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uc */
    public void m1863Uc() {
        aks.m11143BP().m11036Ds();
        ady.m12308tK().mo1746bi(100163);
        if (this.mState == -1 || this.mState == 3 || this.mState == 5) {
            aks.m11143BP().m10754em(0);
            if (!C3748vb.m1917S(this.mContext)) {
                m1844hx(7);
            } else if (ais.m11585ye().m11586un() == 1) {
                ady.m12308tK().mo1746bi(100265);
                if (!ais.m11585ye().m11587s(this.mContext, ais.m11585ye().m11577ym())) {
                }
                finish();
            } else if (!C3748vb.m1918R(this.mContext)) {
                m1844hx(8);
            } else {
                m1858a(this.mContext, "kmPlugins.zip", ais.m11585ye().m11577ym(), false);
            }
        } else if (this.mState == 4) {
            try {
                ais.m11582yh();
                finish();
            } catch (Exception e) {
            }
        } else if (this.mState == 2) {
            m1860Ui();
        } else {
            this.mState = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ud */
    public void m1862Ud() {
        String str;
        double d;
        this.aYM = new bid(this.mContext);
        this.aYM.show();
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
        this.aYM.setTitleText(C3953zi.m1311pr().getString(R.string.km_no_wifi_title));
        this.aYM.m6933d(str);
        this.aYM.mo6682lK(C3953zi.m1311pr().getString(R.string.km_no_wifi_left_btn));
        this.aYM.m6930lL(C3953zi.m1311pr().getString(R.string.km_no_wifi_right_btn));
        this.aYM.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.view.KmUpdateWithNotifyActivity.6
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                KmUpdateWithNotifyActivity.this.m1858a(KmUpdateWithNotifyActivity.this.mContext, "kmPlugins.zip", ais.m11585ye().m11577ym(), false);
            }
        });
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        if (this.aYM != null && this.aYM.isShowing()) {
            this.aYM.dismiss();
        }
        if (this.aYO != null && this.aYO.isShowing()) {
            this.aYO.dismiss();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onStop() {
        finish();
        super.onStop();
        MainExitReceiver.m13404jF();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ug */
    public void m1861Ug() {
        this.aYO = new big(this.mContext);
        this.aYO.show();
        this.aYO.setTitleText(C3953zi.m1311pr().getString(R.string.km_no_networks_tips));
        this.aYO.mo6682lK(C3953zi.m1311pr().getString(R.string.km_no_networks_left_btn));
        this.aYO.m6930lL(C3953zi.m1311pr().getString(R.string.km_no_networks_right_btn));
        this.aYO.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.view.KmUpdateWithNotifyActivity.7
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                try {
                    bgd.m7122bt(KmUpdateWithNotifyActivity.this.mContext);
                    ady.m12308tK().mo1746bi(100325);
                } catch (Exception e) {
                }
            }
        });
        ady.m12308tK().mo1746bi(100324);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ul */
    public void m1859Ul() {
        this.aZo.setProgress(0.0f);
        this.aZo.setProgressText(getString(R.string.km_try_it));
        this.aZo.setBackgroundResource(R.drawable.common_shadow_button_selector);
        this.aZo.setClickable(true);
    }
}
