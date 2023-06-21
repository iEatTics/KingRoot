package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.p004v4.view.LayoutInflaterCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import cloudsdk.ext.p008kr.RootSdk;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import com.kingroot.kinguser.activitys.SplashActivity;
import com.kingroot.kinguser.afu;
import com.kingroot.kinguser.p013ad.SplashDisplayModel;
import com.kingroot.kinguses.R;
import com.tencent.qqpim.discovery.AdDisplayModel;
/* loaded from: classes.dex */
public class axf extends AbstractC3922ym implements InterfaceC3916yg {
    private static volatile boolean aYa = true;
    private boolean aXY;
    private int aXZ;
    private boolean aYb;
    private Runnable aYc;
    private C3905xx aYd;
    private bed aYe;
    private boolean aYf;
    private long mStartTime;

    public axf(Context context) {
        super(context);
        this.aXY = false;
        this.aXZ = 128;
        this.aYb = false;
        this.mStartTime = 0L;
        this.aYe = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.axf.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                RootProcessActivity.m12608h(axf.this.getContext(), 2);
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.axf.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        axf.this.getActivity().finish();
                    }
                }, 200L);
            }
        });
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new C3937yt(this.mContext, null);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mStartTime = System.currentTimeMillis();
        if (RootSdk.getInstance().hasUnFinishRootProcess()) {
            beg.m7461Zj().m7450c(this.aYe);
        } else if (aYa) {
            aYa = false;
            aiy.m11500yI().m11506a(getHandler());
            aiy.m11500yI().m11501ll();
            m8445TS();
        } else {
            this.aXZ = bbv.m7771WK().m7768WN();
            if (this.aXZ == 128) {
                this.aXZ = aix.m11519aP(false);
            }
            this.aXY = true;
            getHandler().obtainMessage(2, Integer.valueOf(this.aXZ)).sendToTarget();
        }
        this.aYd = new C3905xx();
        LayoutInflaterCompat.setFactory(getLayoutInflater(), this.aYd);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onRestart() {
        C3906xy.m1431ox().mo1424a(this);
        super.onRestart();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        super.onPause();
        if (this.aYf && getActivity().isFinishing()) {
            getActivity().overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        return getActivity().moveTaskToBack(true);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        return m8446TR();
    }

    /* renamed from: TR */
    private View m8446TR() {
        View inflate = getLayoutInflater().inflate(R.layout.page_splash, (ViewGroup) null);
        ((ImageView) inflate.findViewById(R.id.splash_iv_cover)).setVisibility(8);
        m8438i(5000L, 5000L);
        ady.m12308tK().mo1746bi(100425);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        if (!m8442TV()) {
            if (message.what == 10201) {
                this.aXY = true;
                this.aXZ = message.arg1;
                if (!this.aYf) {
                    m8444TT();
                    long currentTimeMillis = System.currentTimeMillis();
                    Handler handler = getHandler();
                    Message obtainMessage = handler.obtainMessage(2, message.arg1, message.arg2);
                    if (this.mStartTime != 0 && currentTimeMillis > this.mStartTime && currentTimeMillis - this.mStartTime < 1000) {
                        handler.sendMessageDelayed(obtainMessage, (this.mStartTime + 1000) - currentTimeMillis);
                    } else {
                        handler.sendMessage(obtainMessage);
                    }
                }
            } else if (message.what == 2) {
                m8440du(false);
            } else if (message.what == 1) {
                bbv.m7771WK().m7762dC(true);
                this.aXZ = bbv.m7771WK().m7768WN();
                if (this.aXZ == 128) {
                    this.aXZ = 2;
                }
                m8440du(false);
            }
        }
    }

    /* renamed from: TS */
    private void m8445TS() {
        if (aks.m11143BP().m11016EM()) {
            aea.m12294b(3, 0, 0, 2);
            if (acu.m12571g(aks.m11143BP().m10957FT(), aks.m11143BP().m10956FU())) {
                afu.m12017vB().m12024a(new afu.InterfaceC0829a() { // from class: com.kingroot.kinguser.axf.2
                    @Override // com.kingroot.kinguser.afu.InterfaceC0829a
                    /* renamed from: a */
                    public void mo8437a(AdDisplayModel adDisplayModel) {
                        axf.this.m8439e(adDisplayModel);
                    }

                    @Override // com.kingroot.kinguser.afu.InterfaceC0829a
                    /* renamed from: cT */
                    public void mo8436cT(int i) {
                        axf.this.m8439e(null);
                    }
                });
                return;
            }
            return;
        }
        aks.m11143BP().m10859bU(true);
        aea.m12294b(3, 0, 0, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m8439e(AdDisplayModel adDisplayModel) {
        SplashDisplayModel m7072f = bgz.aca().m7072f(adDisplayModel);
        if (m7072f != null) {
            this.aYf = true;
            m8444TT();
            getActivity().finish();
            SplashActivity.m12586a(getContext(), m7072f);
        }
    }

    /* renamed from: du */
    private void m8440du(boolean z) {
        m8444TT();
        if (m1404oP() && !z) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axf.3
                @Override // java.lang.Runnable
                public void run() {
                    axf.this.getActivity().finish();
                }
            });
        } else if (this.aXY || aks.m11143BP().m11009ET()) {
            aiy.m11507a(getActivity(), this.aXZ);
        } else {
            RootProcessActivity.m12608h(getContext(), 1);
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.axf.4
                @Override // java.lang.Runnable
                public void run() {
                    axf.this.getActivity().finish();
                }
            }, 200L);
        }
        m8443TU();
    }

    /* renamed from: i */
    private void m8438i(final long j, final long j2) {
        this.aYc = new Runnable() { // from class: com.kingroot.kinguser.axf.5
            long aYi;

            {
                this.aYi = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.aYi <= 0) {
                    axf.this.getHandler().obtainMessage(1).sendToTarget();
                    return;
                }
                this.aYi -= j2;
                axf.this.getHandler().postDelayed(this, j2);
            }
        };
        this.aYc.run();
    }

    /* renamed from: TT */
    protected void m8444TT() {
        if (this.aYc != null) {
            getHandler().removeCallbacks(this.aYc);
            this.aYc = null;
        }
    }

    /* renamed from: TU */
    private void m8443TU() {
        this.aYb = true;
        aiy.m11500yI().m11499yJ();
    }

    /* renamed from: TV */
    private boolean m8442TV() {
        return this.aYb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        C3906xy.m1431ox().mo1423b(this);
        this.aYd.clean();
        super.onDestroy();
    }
}
