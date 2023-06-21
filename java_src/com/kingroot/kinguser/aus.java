package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import cloudsdk.ext.p008kr.KrRootCallback;
import cloudsdk.ext.p008kr.OnRootListener;
import cloudsdk.ext.p008kr.RootExtInfo;
import cloudsdk.ext.p008kr.RootInfo;
import cloudsdk.ext.p008kr.RootSdk;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskAdapter;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.kinguser.activitys.DeviceActivity;
import com.kingroot.kinguser.activitys.MainActivity;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import com.kingroot.kinguser.aji;
import com.kingroot.kinguser.auj;
import com.kingroot.kinguser.aus;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.lang.ref.WeakReference;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aus implements KrRootCallback, OnRootListener, auj.InterfaceC1612a {
    private static final String TAG = aiq.asd + "RootProcessPagePresenter";
    private WeakReference<Activity> aRz;
    private auj.InterfaceC1613b aSk;
    private int aSl;
    private int aSm;
    private int mProgress;
    private C3637tk anQ = null;
    private final Object aSn = new Object();
    private final Object aSo = new Object();
    private final Object aSp = new Object();
    private volatile boolean aRh = false;
    private volatile long aSq = 0;
    private boolean aSr = false;
    private AtomicBoolean aSs = new AtomicBoolean(false);
    private bed aSt = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aus.9
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aiv.m11525yw().m11526yD();
            ain.m11609xW().m11608xX();
            aus.this.m8990QL();
        }
    });
    private bed aSu = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aus.10
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ady.m12308tK().mo1746bi(100451);
            int m11519aP = aix.m11519aP(true);
            aus.this.aSl = aix.m11516dG(m11519aP);
            bbv.m7771WK().m7761hT(aus.this.aSl);
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aus.10.1
                @Override // java.lang.Runnable
                public void run() {
                    int i;
                    if (aus.this.aSm != 4) {
                        aus.this.aSk.mo8201cR(false);
                        if (aus.this.aSl == 3) {
                            aus.this.aSl = 4;
                        }
                        bbv.m7771WK().m7761hT(aus.this.aSl);
                        bbv.m7771WK().m7760hU(13);
                        i = 1;
                    } else {
                        i = 2;
                        if (aus.this.aSl == 1) {
                            bbv.m7771WK().m7760hU(14);
                            aus.this.aSk.mo8201cR(true);
                        } else {
                            aus.this.m8991QK();
                        }
                    }
                    ady.m12308tK().m12324c(0, 0, i, 1, 0);
                }
            });
        }
    });
    INetworkLoadTaskCallback aSv = new NetworkLoadTaskAdapter() { // from class: com.kingroot.kinguser.mvp.presenter.RootProcessPagePresenter$7
        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
            synchronized (aus.this.aSo) {
                aus.this.aSo.notifyAll();
            }
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onInstallFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
            synchronized (aus.this.aSo) {
                aus.this.aSo.notifyAll();
            }
        }

        @Override // com.kingroot.common.network.download.NetworkLoadTaskAdapter, com.kingroot.common.network.download.INetworkLoadTaskCallback
        public void onInstallFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
            synchronized (aus.this.aSo) {
                aus.this.aSo.notifyAll();
            }
        }
    };
    private bed aSw = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aus.11
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            boolean z;
            super.run();
            if (adw.m12388tb().m12389eF(ais.m11585ye().m11580yj())) {
                if (!ais.m11585ye().m11591dB(6)) {
                    z = true;
                }
                z = true;
            } else if (ais.m11585ye().m11586un() == 1) {
                z = true;
            } else {
                Context ge = KUApplication.m13453ge();
                boolean m11128CE = aks.m11143BP().m11128CE();
                boolean m1918R = C3748vb.m1918R(ge);
                if (m11128CE && m1918R) {
                    adw.m12388tb().m12393b(aus.this.aSv);
                    adw.m12388tb().m12392cC(7);
                    String m11577ym = ais.m11585ye().m11577ym();
                    if (TextUtils.isEmpty(m11577ym)) {
                        m11577ym = adw.m12388tb().m12378tl();
                    }
                    int m12394a = adw.m12388tb().m12394a(adw.m12388tb().m12376tn(), "kmPlugins.zip", m11577ym, 7);
                    if (m12394a != -1) {
                        if (m12394a == -2) {
                            z = true;
                        } else if (m12394a == 2) {
                            if (!ais.m11585ye().m11591dB(6)) {
                                z = true;
                            }
                        } else {
                            z = false;
                        }
                    }
                }
                z = true;
            }
            if (z) {
                synchronized (aus.this.aSo) {
                    aus.this.aSo.notifyAll();
                }
            }
        }
    });
    private bed aSx = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aus.12
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            new aji().m11469a(new aji.InterfaceC1017a() { // from class: com.kingroot.kinguser.aus.12.1
                @Override // com.kingroot.kinguser.aji.InterfaceC1017a
                /* renamed from: dR */
                public void mo8969dR(int i) {
                    aus.this.aRh = true;
                    switch (i) {
                        case 0:
                            aks.m11143BP().m10878bG(false);
                            aks.m11143BP().m10748es(0);
                            break;
                        case 1:
                            aks.m11143BP().m10876bH(true);
                        default:
                            if (bap.m7902VF()) {
                                aks.m11143BP().m10878bG(true);
                                aks.m11143BP().m10748es(0);
                                break;
                            }
                            break;
                    }
                    synchronized (aus.this.aSp) {
                        aus.this.aSp.notifyAll();
                    }
                }
            });
        }
    });
    private bed aSy = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aus.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aks.m11143BP().m10874bI(true);
            aiv.m11525yw().m11526yD();
            ain.m11609xW().m11608xX();
            RootProcessActivity rootProcessActivity = (RootProcessActivity) aus.this.aRz.get();
            if (rootProcessActivity != null) {
                if (RootSdk.getInstance().loadRootEngine()) {
                    ady.m12308tK().mo1746bi(100197);
                    rootProcessActivity.m12610cW(1);
                    return;
                }
                ady.m12308tK().mo1746bi(100198);
                final RootInfo checkCanRoot = RootSdk.getInstance().checkCanRoot();
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aus.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aus.this.onRootFail(checkCanRoot.getMobileRootInfo(), checkCanRoot.getPcRootInfo());
                    }
                });
            }
        }
    });
    private bed aRU = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aus.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aks.m11143BP().m10874bI(true);
            aiv.m11525yw().m11526yD();
            ain.m11609xW().m11608xX();
            RootProcessActivity rootProcessActivity = (RootProcessActivity) aus.this.aRz.get();
            if (rootProcessActivity != null) {
                if (RootSdk.getInstance().loadRootEngine()) {
                    rootProcessActivity.m12610cW(2);
                } else {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aus.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aus.this.onRootFail(null, null);
                        }
                    });
                }
            }
        }
    });
    private bed aSz = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aus.5
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            try {
                aix.m11509yH();
            } catch (InterruptedException e) {
                aus.this.mo8970gQ(0);
            }
            if (aix.asI) {
                RootProcessActivity rootProcessActivity = (RootProcessActivity) aus.this.aRz.get();
                if (rootProcessActivity != null) {
                    rootProcessActivity.m12610cW(0);
                    return;
                }
                return;
            }
            aus.this.mo8970gQ(0);
        }
    });

    public aus(auj.InterfaceC1613b interfaceC1613b, Activity activity) {
        this.aSk = (auj.InterfaceC1613b) C3948zd.m1327k(interfaceC1613b);
        this.aRz = new WeakReference<>(C3948zd.m1327k(activity));
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1612a
    /* renamed from: Qj */
    public void mo8986Qj() {
        this.aSs.set(false);
        mo8976cX(3);
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1612a
    /* renamed from: Qk */
    public void mo8985Qk() {
        this.aSs.set(false);
        mo8976cX(5);
    }

    @Override // cloudsdk.ext.p008kr.OnRootListener
    public void onCheckRoot() {
        this.aSk.mo8217Ql();
    }

    @Override // cloudsdk.ext.p008kr.OnRootListener
    public void onCheckRootFinish(RootExtInfo rootExtInfo, RootExtInfo rootExtInfo2) {
        boolean z;
        akj.m11270aT(KApplication.m13453ge()).m11272AN();
        if (rootExtInfo == null) {
            z = true;
        } else if (rootExtInfo.canRoot != 1) {
            z = true;
        } else if (bbs.m7783b(rootExtInfo)) {
            this.aSk.mo8210a(rootExtInfo);
            z = false;
        } else {
            this.aSk.mo8216Qm();
            z = false;
        }
        if (z) {
            if (bbs.m7783b(rootExtInfo2) && rootExtInfo2.canRoot == 1) {
                this.aSk.mo8209a(rootExtInfo2, false);
            } else {
                mo8970gQ(0);
            }
        }
    }

    @Override // cloudsdk.ext.p008kr.OnRootListener
    public void onRootFail(final RootExtInfo rootExtInfo, final RootExtInfo rootExtInfo2) {
        boolean z;
        int i = 1;
        long currentTimeMillis = System.currentTimeMillis();
        akj.m11270aT(KApplication.m13453ge()).m11272AN();
        if (currentTimeMillis - this.aSq < 6000) {
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.aus.1
                @Override // java.lang.Runnable
                public void run() {
                    aus.this.onRootFail(rootExtInfo, rootExtInfo2);
                }
            }, (this.aSq - currentTimeMillis) + 6000);
            return;
        }
        this.aSq = 0L;
        aks.m11143BP().m10862bR(true);
        ady.m12308tK().mo1746bi(100533);
        if (this.aSm == 4) {
            if (this.aSr) {
                m8974da(false);
                i = 2;
            } else {
                m8991QK();
                i = 2;
            }
        } else {
            if (bbs.m7783b(rootExtInfo) && rootExtInfo.canRoot == 1) {
                this.aSk.mo8215Qn();
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                if (bbs.m7783b(rootExtInfo2) && rootExtInfo2.canRoot == 1) {
                    this.aSk.mo8209a(rootExtInfo2, true);
                } else if (akj.m11270aT(KApplication.m13453ge()).m11277AI()) {
                    bbk.m7817Wo().m7812bk(KApplication.m13453ge());
                    this.aSk.mo8200cS(false);
                } else {
                    this.aSk.mo8199cT(true);
                }
            }
        }
        m8987QO();
        ady.m12308tK().m12324c(0, 0, i, 2, 0);
    }

    @Override // cloudsdk.ext.p008kr.OnRootListener
    public void onRootSuc(final int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.aSq < 6000) {
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.aus.6
                @Override // java.lang.Runnable
                public void run() {
                    aus.this.onRootSuc(i);
                }
            }, (this.aSq - currentTimeMillis) + 6000);
            return;
        }
        this.aSq = 0L;
        beg.m7461Zj().m7450c(this.aSu);
    }

    @Override // cloudsdk.ext.p008kr.OnRootListener
    public void onSettingNetwork() {
        this.aSk.mo8214Qo();
    }

    @Override // cloudsdk.ext.p008kr.OnRootListener
    public void onRooting(int i, int i2, int i3, int i4) {
        if (i4 <= this.mProgress) {
            i4 = this.mProgress;
        }
        this.mProgress = i4;
        if (this.aSq == 0) {
            this.aSq = System.currentTimeMillis();
        }
        if (this.aSs.get()) {
            this.aSk.mo8196e(this.aSm, i, i2, i3, this.mProgress);
        } else {
            this.aSk.mo8198d(this.aSm, i, i2, i3, this.mProgress);
        }
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1612a
    /* renamed from: cX */
    public void mo8976cX(int i) {
        switch (i) {
            case 0:
                this.aSk.mo8217Ql();
                beg.m7461Zj().m7450c(this.aSz);
                return;
            case 1:
                this.aSk.mo8217Ql();
                return;
            case 2:
                this.aSk.mo8217Ql();
                this.aSs.set(true);
                this.aSm = aks.m11143BP().m11011ER();
                RootSdk.getInstance().dispatchRoot(0, this, this);
                return;
            case 3:
                this.aSm = 3;
                onRooting(-1, 0, 0, 1);
                aks.m11143BP().m10773eH(this.aSm);
                beg.m7461Zj().m7450c(this.aSy);
                return;
            case 4:
                this.aSm = 4;
                onRooting(-1, 0, 0, 1);
                aks.m11143BP().m10773eH(this.aSm);
                beg.m7461Zj().m7450c(this.aRU);
                return;
            case 5:
                if (RootSdk.getInstance().getCurrStatus() == 2) {
                    this.aSm = 4;
                } else {
                    this.aSm = 3;
                }
                aks.m11143BP().m10874bI(true);
                RootSdk.getInstance().dispatchRoot(3, this, this);
                return;
            case 6:
                RootSdk.getInstance().dispatchRoot(0, this, this);
                return;
            default:
                this.aSk.mo8217Ql();
                RootSdk.getInstance().dispatchRoot(0, this, this);
                return;
        }
    }

    /* renamed from: T */
    public static int m8984T(int i, int i2) {
        return i > i2 ? i : i + (new Random().nextInt(i2) % ((i2 - i) + 1));
    }

    /* renamed from: EQ */
    public static int m8992EQ() {
        int m11012EQ = aks.m11143BP().m11012EQ();
        if (m11012EQ == 0) {
            int m8984T = m8984T(11, 50);
            aks.m11143BP().m10774eG(m8984T);
            return m8984T;
        }
        return m11012EQ;
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1612a
    /* renamed from: gQ */
    public void mo8970gQ(int i) {
        final Activity activity = this.aRz.get();
        if (activity != null) {
            final Intent intent = new Intent();
            intent.setClass(activity, MainActivity.class);
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.aus.7
                @Override // java.lang.Runnable
                public void run() {
                    activity.startActivity(intent);
                    activity.finish();
                }
            }, i);
        }
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1612a
    /* renamed from: cQ */
    public void mo8977cQ(boolean z) {
        this.aSr = z;
    }

    /* renamed from: QK */
    public void m8991QK() {
        final Activity activity = this.aRz.get();
        if (activity != null) {
            final Intent intent = new Intent();
            intent.setClass(activity, DeviceActivity.class);
            intent.putExtra("root_process_state", 4);
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.aus.8
                @Override // java.lang.Runnable
                public void run() {
                    activity.startActivity(intent);
                    activity.finish();
                }
            }, 2000L);
        }
    }

    /* renamed from: da */
    private void m8974da(boolean z) {
        Activity activity = this.aRz.get();
        if (activity != null) {
            Intent intent = new Intent();
            intent.putExtra("root_result", z);
            activity.setResult(1001, intent);
            activity.finish();
        }
    }

    @Override // cloudsdk.ext.p008kr.KrRootCallback
    public boolean verifyClientRootSuc(int i) {
        beg.m7461Zj().m7450c(this.aSt);
        return abj.m12822en("su") && abj.m12820ep("su") != null;
    }

    @Override // cloudsdk.ext.p008kr.KrRootCallback
    public void lockMainLifeLock(boolean z, long j) {
        if (z) {
            m8979bZ(j);
        } else {
            m8988QN();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: QL */
    public void m8990QL() {
        try {
            if (aks.m11143BP().m10921Gd()) {
                ags.m11911aF(true);
            }
            m8989QM();
            synchronized (this.aSo) {
                this.aSo.wait(BuglyBroadcastRecevier.UPLOADLIMITED);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: QM */
    private void m8989QM() {
        try {
            this.aRh = false;
            beg.m7461Zj().m7450c(this.aSx);
            synchronized (this.aSp) {
                this.aSp.wait(10000L);
            }
        } catch (Exception e) {
        }
        if (bap.m7902VF() && !this.aRh) {
            aks.m11143BP().m10878bG(true);
            aks.m11143BP().m10748es(0);
        }
    }

    /* renamed from: bZ */
    public void m8979bZ(long j) {
        synchronized (this.aSn) {
            if (this.anQ == null) {
                this.anQ = C3637tk.m2165jM();
            }
            if (this.anQ != null) {
                this.anQ.m2161s(j);
            }
        }
    }

    /* renamed from: QN */
    public void m8988QN() {
        synchronized (this.aSn) {
            if (this.anQ != null) {
                this.anQ.release();
                this.anQ = null;
            }
        }
    }

    /* renamed from: QO */
    private void m8987QO() {
        Activity activity = this.aRz.get();
        aks m11143BP = aks.m11143BP();
        if (activity != null && !m11143BP.m10967FJ()) {
            ady.m12308tK().mo1746bi(100638);
            C3953zi m1311pr = C3953zi.m1311pr();
            final bid bidVar = new bid(activity);
            bidVar.show();
            bidVar.setCanceledOnTouchOutside(false);
            bidVar.setTitleText(m1311pr.getString(R.string.root_failed_dialog_title));
            bidVar.m6933d(Html.fromHtml(m1311pr.getString(R.string.root_failed_dialog_content_text)));
            bidVar.m6931iX(8);
            bidVar.m6930lL(m1311pr.getString(R.string.root_failed_dialog_button_text));
            bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.aus.4
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ady.m12308tK().mo1746bi(100639);
                    bidVar.dismiss();
                }
            });
            m11143BP.m10789cn(true);
        }
    }
}
