package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.aav;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import com.kingroot.kinguser.auh;
import java.lang.ref.WeakReference;
import java.util.Random;
/* loaded from: classes.dex */
public class auq implements auh.InterfaceC1608a {
    private auh.InterfaceC1609b aRN;
    private boolean aRO = false;
    private boolean aRP = false;
    private int aRQ = 1;
    private bed aRR = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.auq.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            if (auq.this.aRO) {
                m9036QE();
                m9035QF();
                m9034QG();
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.auq.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        beg.m7461Zj().m7450c(auq.this.aRR);
                    }
                }, 5000L);
            }
        }

        /* renamed from: QE */
        private void m9036QE() {
            long m12902qo = aav.m12902qo();
            auq.this.aRN.mo8434Q(2, (int) ((1.0f - (((float) aav.m12901qp()) / ((float) m12902qo))) * 100.0f));
        }

        /* renamed from: QF */
        private void m9035QF() {
            aav.C0620a c0620a = new aav.C0620a();
            aav.m12923b(c0620a);
            auq.this.aRN.mo8434Q(1, (int) ((1.0f - (((float) c0620a.f1286Yv) / ((float) c0620a.f1287Yw))) * 100.0f));
        }

        /* renamed from: QG */
        private void m9034QG() {
            bgj abB = bgj.abB();
            auq.this.aRN.mo8434Q(3, m9032gT((int) ((abB.abD() / abB.abC()) * 100.0f)));
        }

        /* renamed from: gT */
        private int m9032gT(int i) {
            if (i >= 95 && auq.m9039d(auq.this) % 10 != 0) {
                return m9033S(60, 90);
            }
            return i;
        }

        /* renamed from: S */
        public int m9033S(int i, int i2) {
            return new Random().nextInt((Math.max(i, i2) - Math.min(i, i2)) + 1) + Math.min(i, i2);
        }
    });
    private bed aRS = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.auq.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            auq.this.aRN.mo8411k(bgl.m7106ea(true), auq.this.aRP);
            try {
                Thread.sleep(300L);
            } catch (InterruptedException e) {
            }
            beg.m7461Zj().m7450c(auq.this.aRR);
        }
    });
    private bed aRT = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.auq.3
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            Activity activity = (Activity) auq.this.aRz.get();
            if (activity != null) {
                try {
                    Intent intent = new Intent();
                    intent.setClass(activity, RootProcessActivity.class);
                    intent.putExtra("root_process_state", 3);
                    activity.startActivity(intent);
                    activity.finish();
                } catch (Exception e) {
                }
            }
        }
    });
    private bed aRU = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.auq.4
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            Activity activity = (Activity) auq.this.aRz.get();
            if (activity != null) {
                try {
                    Intent intent = new Intent();
                    intent.setClass(activity, RootProcessActivity.class);
                    intent.putExtra("root_process_state", 4);
                    activity.startActivity(intent);
                    auq.this.aRN.mo8422bY(1000L);
                } catch (Exception e) {
                }
            }
        }
    });
    private WeakReference<Activity> aRz;

    /* renamed from: d */
    static /* synthetic */ int m9039d(auq auqVar) {
        int i = auqVar.aRQ;
        auqVar.aRQ = i + 1;
        return i;
    }

    public auq(@NonNull auh.InterfaceC1609b interfaceC1609b, Activity activity) {
        this.aRN = (auh.InterfaceC1609b) C3948zd.m1327k(interfaceC1609b);
        this.aRz = new WeakReference<>(C3948zd.m1327k(activity));
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
        this.aRO = true;
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
        this.aRO = false;
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1608a
    /* renamed from: PV */
    public void mo9047PV() {
        ady.m12308tK().mo1746bi(100549);
        this.aRP = !this.aRP;
        this.aRN.mo8419cO(this.aRP);
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1608a
    /* renamed from: PX */
    public boolean mo9045PX() {
        if (this.aRT.isRunning()) {
            return false;
        }
        beg.m7461Zj().m7450c(this.aRT);
        return true;
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1608a
    /* renamed from: PY */
    public boolean mo9044PY() {
        if (this.aRU.isRunning()) {
            return false;
        }
        beg.m7461Zj().m7450c(this.aRU);
        return true;
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1608a
    /* renamed from: PZ */
    public void mo9043PZ() {
        beg.m7461Zj().m7450c(this.aRS);
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1608a
    /* renamed from: PW */
    public void mo9046PW() {
        ady.m12308tK().mo1746bi(100546);
        this.aRQ++;
        if (this.aRR.isRunning()) {
            beg.m7461Zj().m7449d(this.aRS);
            beg.m7461Zj().m7449d(this.aRR);
        }
    }
}
