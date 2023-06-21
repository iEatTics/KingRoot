package com.kingroot.kinguser;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.C3959zm;
import com.kingroot.kinguser.afu;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class blb extends bkw {
    private bed bzB = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.blb.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aks.m11143BP().m10832bl(bgu.abY());
            bbo.m7795Wv().getTodayRequestAppCount();
            bbt.m7780WG().startPrepareRootMgrList();
            bkz.aeY();
        }
    });
    blc bzA = new blc(this);

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iy */
    public void mo2466iy() {
        super.mo2466iy();
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    @TargetApi(11)
    public void onCreate() {
        try {
            C3821wa.initCrashReport(getContext(), false);
            C3821wa.m1597W(getContext());
            C3821wa.startANRMonitor(getContext());
        } catch (Throwable th) {
        }
        if (abd.m12839qb() >= 11) {
            ObjectAnimator.setFrameDelay(16L);
        }
        com.android.animation.ObjectAnimator.setFrameDelay(16L);
        getHandler().sendEmptyMessage(0);
        aer.m12169d(getContext(), 1);
        auy.m8883Ra().m8882bb(getContext());
        try {
            C3958zl.m1297pu();
            aiw.m11521yE();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        aig.m11655xA();
        ais.m11585ye().init();
        getHandler().sendEmptyMessage(1);
        KApplication.m13453ge().sendBroadcast(new Intent("com.kingroot.common.ACTION_NOTIFY_IN_SELF_APP_MAIN"));
        getHandler().sendEmptyMessageDelayed(100, 3000L);
        aon.m9911Kg().m9910Kh();
        if (air.m11600yc()) {
            bjn.aeb().aed();
        }
        if (akf.m11306An().equals(ProcessUtils.m13147cd(Process.myPid()))) {
            bas.m7895bg(getContext());
        }
        C3906xy.m1431ox().m1432a(new C3917yh());
        if (TextUtils.equals(KUApplication.m13453ge().getPackageName(), KUApplication.m13455aY())) {
            ayg.m8011h(KUApplication.m13453ge(), false);
        }
        afu.m12017vB().m12021a(false, (afu.InterfaceC0829a) null);
        aea.m12289e(0L, 0);
        if (anf.m10297IU()) {
            if (aks.m11143BP().m10959FR() < 3) {
                alx.m10508HB().mo10408HC();
            }
            alu.m10529Ho().m10530Hm();
            alr.m10545Hd().m10543Hf();
            als.m10538Hi().mo10417Hm();
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    public void onTerminate() {
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iv */
    public InterfaceC3519rh mo2468iv() {
        return this.bzA;
    }

    @Override // com.kingroot.kinguser.bkw
    /* renamed from: a */
    protected void mo6514a(Message message) {
        if (message.what == 0) {
            afa();
        } else if (message.what == 1) {
            aeZ();
        } else if (message.what == 100) {
            KUApplication.aeT();
        }
    }

    private void aeZ() {
        bdx.m7488jS();
        beg.m7461Zj().m7450c(this.bzB);
    }

    void afa() {
        blh.afk();
        C3632tg.m2177jC();
        String absolutePath = C3958zl.m1295pw().getAbsolutePath();
        C3959zm.m1292a(new C3959zm.C3962a(absolutePath + "/busybox", (int) R.raw.device_admin, 1), new C3959zm.C3962a(absolutePath + "/tools", (int) R.raw.tools, 1));
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iw */
    public int mo2467iw() {
        return 1;
    }
}
