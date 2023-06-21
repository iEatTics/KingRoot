package com.kingroot.kinguser;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Message;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.framework.broadcast.KSysBroadcastReceiver;
import com.kingroot.common.report.performance.mgr.AlarmBroadcast;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.advance.install.IInjectCallback;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.urlcheck.aidl.ICallback;
import com.kingroot.kinguser.util.protect.RebootStat;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class bld extends bkw {
    private static long mStartTime;
    private bed bzE = new bed(bem.MEDIUM, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.bld.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aeg.m12265um().mo12201ue();
        }
    });
    private bed bzF = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bld.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            int i;
            int i2 = 0;
            super.run();
            int m11076DE = aks.m11143BP().m11076DE();
            RebootStat rebootStat = ahl.m11725xm().getRebootStat();
            if (rebootStat != null) {
                i = rebootStat.failPeekCount;
                i2 = rebootStat.androidRebootPeekCount;
            } else {
                i = 0;
            }
            if (m11076DE != 0 && i2 < 2 && i < 3) {
                if (m11076DE == 2 || m11076DE == 3) {
                    bfn.aap();
                }
                ahl.m11725xm().m11734a(true, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.master.app.ServiceApplication$3$1
                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherOpen(int i3) {
                        int m11076DE2 = aks.m11143BP().m11076DE();
                        if (i3 == 0) {
                            aks.m11143BP().m10746eu(0);
                            if (m11076DE2 == 2 || m11076DE2 == 3) {
                                C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.anti_inject_open_success_toast));
                            }
                            aks.m11143BP().m10747et(1);
                            return;
                        }
                        if (m11076DE2 == 2 || m11076DE2 == 3) {
                            C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.anti_inject_open_fail_toast));
                        }
                        if (m11076DE2 == 3) {
                            aks.m11143BP().m10747et(0);
                        }
                    }

                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherClosed() {
                    }
                });
            }
        }
    });
    private bed aiY = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bld.4
        private void afg() {
            HandlerC3841wm.m1549nu().post(new Runnable() { // from class: com.kingroot.kinguser.bld.4.1
                @Override // java.lang.Runnable
                public void run() {
                    int m6984lH = bhm.m6984lH("grc");
                    if (m6984lH == 2 || m6984lH == 3) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(Integer.valueOf(m6984lH == 2 ? 1 : 2));
                        ady.m12308tK().mo1748a(100635, 0, (List<Object>) arrayList, false);
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            afg();
            if (!baq.m7900VH()) {
                bhg.init(KApplication.m13453ge());
            }
            ahl.m11725xm().registerClient();
            arv.m9501NB();
            abc m12845qK = abc.m12845qK();
            m12845qK.isRootPermition(true);
            if (abd.m12839qb() >= 19 && aav.m12908qi()) {
                String parent = KApplication.m13453ge().getFilesDir().getParent();
                if (!TextUtils.isEmpty(parent)) {
                    C3966zn.C3968a c3968a = new C3966zn.C3968a();
                    c3968a.f4099WP = "u:object_r:app_data_file:s0";
                    if (C3966zn.m1277a(parent, c3968a) != 0) {
                        abc.m12845qK().m12846el(String.format(Locale.US, "restorecon -r %s", parent));
                    }
                }
            }
            ajb.m11487yT().checkAsync(false, true, null);
            baw.m7873VY();
            if (m12845qK.isRootPermition()) {
                m12845qK.m12846el(bha.bpw + " " + AbstractC3976zt.get("cdpm5"));
                String m11567ys = ait.m11567ys();
                if (!TextUtils.isEmpty(m11567ys)) {
                    m12845qK.m12846el(m11567ys);
                }
                agt.m11907wb().m11908a((IInjectCallback) new IInjectCallback.Stub() { // from class: com.kingroot.master.app.ServiceApplication$4$2
                    @Override // com.kingroot.kinguser.advance.install.IInjectCallback
                    public void onFinish(int i) {
                    }
                }, false);
                biq.ada().start();
                if (bfw.aaS().aaU()) {
                    bfp.aay().m7252a(true, (ICallback) null);
                }
                if (aks.m11143BP().m10921Gd()) {
                    ags.m11911aF(true);
                }
            }
            bld.this.aff();
            if (C3748vb.m1921O(bld.this.getContext()) == 0) {
                amz.m10365II().m10366IG();
            }
            ahg.m11770wT().refresh();
        }
    });

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iy */
    public void mo2466iy() {
        super.mo2466iy();
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    public void onCreate() {
        mStartTime = System.currentTimeMillis();
        try {
            C3821wa.initCrashReport(getContext(), true);
            C3821wa.m1597W(getContext());
            C3821wa.startANRMonitor(getContext());
        } catch (Throwable th) {
        }
        afe();
        awn.m8629Ta().init();
        bli.init();
        ahn.m11712xu();
        abr.m12763rk().m12762rl();
        auy.m8883Ra().m8882bb(getContext());
        getHandler().sendEmptyMessage(0);
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bld.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                ahl.m11730o(0, true);
            }
        }));
        awc.m8697SB();
        ayg.m8011h(KUApplication.m13453ge(), true);
        ayg.m8022UW();
        getHandler().sendEmptyMessageDelayed(100, 6000L);
        alo.m10553GW().init();
        bgg.abA();
        bbj.m7818kp(new File(getContext().getFilesDir(), "rd").getAbsolutePath());
        bfm.aah().mo7274ZW();
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    public void onTerminate() {
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iv */
    public InterfaceC3519rh mo2468iv() {
        return new ble();
    }

    @Override // com.kingroot.kinguser.bkw
    /* renamed from: a */
    protected void mo6514a(Message message) {
        if (message.what == 0) {
            try {
                afb();
            } catch (Throwable th) {
            }
        } else if (message.what == 100) {
            KUApplication.aeT();
        }
    }

    private void afb() {
        C3958zl.m1297pu();
        m6512rn();
        adl.init();
        afd();
        bav.m7888VO();
        beg.m7461Zj().m7450c(this.bzE);
        ajg.m11473zh();
        afc();
        m6511vy();
    }

    private void afc() {
        if (aii.m11642xL().m11639xO()) {
            beg.m7461Zj().m7450c(this.bzF);
        }
    }

    /* renamed from: vy */
    private void m6511vy() {
        beg.m7461Zj().m7450c(this.aiY);
    }

    /* renamed from: rn */
    private void m6512rn() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        KApplication.m13453ge().registerReceiver(new KSysBroadcastReceiver(), intentFilter);
    }

    private void afd() {
        bja.adw();
        afg.m12081vc();
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iw */
    public int mo2467iw() {
        return 2;
    }

    private void afe() {
        ((AlarmManager) C3636tj.m2169ge().getSystemService("alarm")).setRepeating(0, mStartTime + AlarmBroadcast.f826Mo, AlarmBroadcast.f826Mo, PendingIntent.getBroadcast(C3636tj.m2169ge(), 0, new Intent(C3636tj.m2169ge(), AlarmBroadcast.class), 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aff() {
        if (aim.m11614xV() && aks.m11143BP().m11032Dw() && aio.m11606d(abc.m12845qK())) {
            aiv.m11525yw().m11537dD(2);
        }
    }
}
