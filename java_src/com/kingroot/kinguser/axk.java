package com.kingroot.kinguser;

import android.content.Context;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.Toast;
import com.kingcore.uilib.RotateCircle;
import com.kingcore.uilib.TextRoundCornerProgressBar;
import com.kingroot.common.network.download.CommonFileDownloadTaskInfo;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskAdapter;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.kinguser.axk;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class axk extends AbstractC3922ym {
    INetworkLoadTaskCallback aSv;
    private bid aYM;
    private bid aYO;
    private TextRoundCornerProgressBar aZo;
    private boolean aZp;
    private long aZq;
    private boolean aZr;
    private ImageView aZs;
    private ImageView aZt;
    private RotateCircle aZu;
    private RotateCircle aZv;
    private AtomicBoolean aZw;
    private bed aZx;
    private int mState;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        adw.m12388tb().m12393b(this.aSv);
        beg.m7461Zj().m7450c(this.aZx);
    }

    public axk(Context context) {
        super(context, "ku_pageKmUpdatePage");
        this.aZp = false;
        this.aZq = 0L;
        this.aZr = false;
        this.aZw = new AtomicBoolean(false);
        this.mState = -1;
        this.aSv = new NetworkLoadTaskAdapter() { // from class: com.kingroot.kinguser.page.KmUpdatePage$3
            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
                if (networkLoadTaskInfo != null) {
                    axk.this.aZp = true;
                    Message obtainMessage = axk.this.getHandler().obtainMessage(6);
                    obtainMessage.obj = networkLoadTaskInfo;
                    axk.this.getHandler().sendMessage(obtainMessage);
                }
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
                axk.this.aZp = true;
                axk.this.m8339hx(2);
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
                axk.this.aZp = true;
                axk.this.m8339hx(3);
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onInstallFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
                axk.this.aZp = true;
                axk.this.m8339hx(4);
            }

            @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
            public void onInstallFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
                axk.this.aZp = true;
                axk.this.m8339hx(5);
            }
        };
        this.aZx = new bed(bem.HIGH, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.axk.7
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                axk.this.m8351Uj();
            }
        });
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getActivity(), m1417V(2131165559L));
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.view_update_km, (ViewGroup) null);
        this.aZs = (ImageView) inflate.findViewById(R.id.wheel_big);
        this.aZt = (ImageView) inflate.findViewById(R.id.wheel_small);
        this.aZu = (RotateCircle) inflate.findViewById(R.id.km_outer_circle_out);
        this.aZv = (RotateCircle) inflate.findViewById(R.id.km_inner_circle_out);
        this.aZo = (TextRoundCornerProgressBar) inflate.findViewById(R.id.progressbar);
        this.aZo.setProgressColor(C3953zi.m1311pr().getColor(R.color.green_1));
        this.aZo.setBackgroundResource(R.drawable.grey_button_bg);
        this.aZo.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axk.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axk.this.m8355Uc();
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        this.mState = message.what;
        switch (message.what) {
            case 0:
            case 1:
                this.aZo.setBackgroundResource(R.drawable.grey_button_bg);
                if (this.aZw.compareAndSet(false, true)) {
                    m8350Uk();
                    return;
                }
                return;
            case 2:
                if (this.aZw.compareAndSet(false, true)) {
                    m8350Uk();
                }
                this.aZo.setClickable(false);
                this.aZo.setProgressText(m1417V(2131165571L));
                if (this.aZp) {
                    this.aZo.setProgress(96.0f);
                    m8356P(96, m1417V(2131165571L));
                    return;
                }
                this.aZo.setBackgroundResource(R.drawable.grey_button_bg);
                this.aZo.setProgress(0.0f);
                return;
            case 3:
                m8349Ul();
                Toast.makeText(this.mContext, m1417V(2131165570L), 0).show();
                return;
            case 4:
                try {
                    ais.m11582yh();
                    getActivity().finish();
                    return;
                } catch (Exception e) {
                    return;
                }
            case 5:
                m8349Ul();
                Toast.makeText(this.mContext, m1417V(2131165570L), 0).show();
                return;
            case 6:
                if (message.obj instanceof CommonFileDownloadTaskInfo) {
                    int i = (int) (((CommonFileDownloadTaskInfo) message.obj).f820BH * 100.0f);
                    if (i > 96) {
                        i = 96;
                    }
                    m8356P(i, m1417V(2131165571L));
                    return;
                }
                return;
            case 7:
                m8353Ug();
                return;
            case 8:
                m8354Ud();
                return;
            default:
                m8349Ul();
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m8348a(Context context, String str, String str2, boolean z) {
        int m12394a = adw.m12388tb().m12394a(adw.m12388tb().m12376tn(), str, str2, adw.m12388tb().m12385te());
        if (m12394a == 1 || m12394a == 0) {
            m8339hx(1);
        } else if (m12394a == 2) {
            m8352Ui();
        } else {
            m8339hx(3);
        }
        return true;
    }

    /* renamed from: Ui */
    private void m8352Ui() {
        m8339hx(2);
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axk.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (ais.m11585ye().m11591dB(adw.m12388tb().m12385te())) {
                    axk.this.m8339hx(4);
                } else {
                    axk.this.m8339hx(5);
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hx */
    public void m8339hx(int i) {
        getHandler().sendEmptyMessage(i);
    }

    /* renamed from: P */
    private void m8356P(int i, String str) {
        this.aZo.setProgress(i);
        this.aZo.setVisibility(0);
        this.aZo.setProgressText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uc */
    public void m8355Uc() {
        ady.m12308tK().mo1746bi(100157);
        if (this.mState == -1 || this.mState == 3 || this.mState == 5) {
            aks.m11143BP().m10754em(0);
            if (!C3748vb.m1917S(this.mContext)) {
                m8339hx(7);
            } else if (ais.m11585ye().m11586un() == 1) {
                ady.m12308tK().mo1746bi(100265);
                if (!ais.m11585ye().m11587s(getContext(), ais.m11585ye().m11577ym())) {
                }
                getActivity().finish();
            } else if (!C3748vb.m1918R(this.mContext)) {
                m8339hx(8);
            } else {
                m8348a(getContext(), "kmPlugins.zip", ais.m11585ye().m11577ym(), false);
            }
        } else if (this.mState == 4) {
            try {
                ais.m11582yh();
                getActivity().finish();
            } catch (Exception e) {
            }
        } else if (this.mState == 2) {
            m8352Ui();
        } else {
            this.mState = -1;
        }
    }

    /* renamed from: Ud */
    private void m8354Ud() {
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
        this.aYM.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axk.3
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axk.this.m8349Ul();
                axk.this.mState = -1;
            }
        });
        this.aYM.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axk.4
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axk.this.m8348a(axk.this.getContext(), "kmPlugins.zip", ais.m11585ye().m11577ym(), false);
            }
        });
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        if (this.aYM != null && this.aYM.isShowing()) {
            this.aYM.dismiss();
        }
        if (this.aYO != null && this.aYO.isShowing()) {
            this.aYO.dismiss();
        }
        super.onDestroy();
    }

    /* renamed from: Ug */
    private void m8353Ug() {
        this.aYO = new big(this.mContext);
        this.aYO.show();
        this.aYO.setTitleText(C3953zi.m1311pr().getString(R.string.km_no_networks_tips));
        this.aYO.mo6682lK(C3953zi.m1311pr().getString(R.string.km_no_networks_left_btn));
        this.aYO.m6930lL(C3953zi.m1311pr().getString(R.string.km_no_networks_right_btn));
        this.aYO.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axk.5
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axk.this.m8349Ul();
                axk.this.mState = -1;
            }
        });
        this.aYO.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axk.6
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                try {
                    bgd.m7122bt(axk.this.mContext);
                    ady.m12308tK().mo1746bi(100325);
                } catch (Exception e) {
                }
            }
        });
        ady.m12308tK().mo1746bi(100324);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uj */
    public void m8351Uj() {
        String m11580yj = ais.m11585ye().m11580yj();
        this.mState = adw.m12388tb().m12386td();
        if (!ais.m11585ye().m11584yf()) {
            this.mState = -1;
            if (!adw.m12388tb().m12387tc() && adw.m12388tb().m12389eF(m11580yj)) {
                this.mState = 2;
            }
        }
        if (this.mState != -1) {
            m8339hx(this.mState);
        }
        if (this.mState != 2 && this.aZq == 0) {
            this.aZq = ais.m11585ye().m11575yo();
        }
        if (!this.aZr) {
            this.aZr = true;
            m8355Uc();
        }
    }

    /* renamed from: Uk */
    private void m8350Uk() {
        this.aZs.clearAnimation();
        this.aZt.clearAnimation();
        this.aZu.m13522gX();
        this.aZv.m13522gX();
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -359.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setDuration(1500L);
        rotateAnimation.setInterpolator(linearInterpolator);
        this.aZs.startAnimation(rotateAnimation);
        RotateAnimation rotateAnimation2 = new RotateAnimation(0.0f, 359.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation2.setRepeatCount(-1);
        rotateAnimation2.setDuration(1500L);
        rotateAnimation2.setInterpolator(linearInterpolator);
        this.aZt.startAnimation(rotateAnimation2);
        this.aZv.m13524gD();
        this.aZu.m13524gD();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ul */
    public void m8349Ul() {
        this.aZo.setProgress(0.0f);
        this.aZo.setProgressText(m1417V(2131165582L));
        this.aZo.setBackgroundResource(R.drawable.common_shadow_button_selector);
        this.aZo.setClickable(true);
    }
}
