package com.kingroot.kinguser;

import android.content.Intent;
import com.kingroot.common.utils.system.ProcessUtils;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ble extends AbstractC3518rg {
    private InterfaceC3670tv bzH = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jF */
    public void m6505jF(final int i) {
        new Thread(new Runnable() { // from class: com.kingroot.kinguser.ble.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(5000L);
                } catch (InterruptedException e) {
                }
                if (i == ble.this.afh()) {
                    C3819vz.m1607mQ().m1603mU();
                } else {
                    C3819vz.m1607mQ().m1604mT();
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jG */
    public void m6504jG(final int i) {
        new Thread(new Runnable() { // from class: com.kingroot.kinguser.ble.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(5000L);
                } catch (InterruptedException e) {
                }
                if (i == ble.this.afi()) {
                    C3819vz.m1607mQ().m1602mV();
                } else {
                    C3819vz.m1607mQ().m1600mX();
                }
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int afh() {
        int i = -1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C3636tj.getPackageName());
        for (ProcessUtils.ProcessInfo processInfo : ProcessUtils.m13152P(arrayList)) {
            i = processInfo.pid;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int afi() {
        int i = -1;
        ArrayList arrayList = new ArrayList();
        arrayList.add(C3636tj.getPackageName() + ":task");
        for (ProcessUtils.ProcessInfo processInfo : ProcessUtils.m13152P(arrayList)) {
            i = processInfo.pid;
        }
        return i;
    }

    @Override // com.kingroot.kinguser.AbstractC3518rg
    /* renamed from: hO */
    public InterfaceC3670tv mo2478hO() {
        if (this.bzH == null) {
            this.bzH = new C2500a();
        }
        return this.bzH;
    }

    /* renamed from: com.kingroot.kinguser.ble$a */
    /* loaded from: classes.dex */
    class C2500a implements InterfaceC3670tv {
        private C2500a() {
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: u */
        public void mo2110u(int i, int i2) {
            if (i == 1) {
                C3819vz.m1607mQ().m1605mS();
                C3671tw.m2094kd();
            }
            if (i == 3) {
                C3819vz.m1607mQ().m1601mW();
                C3671tw.m2094kd();
            }
            if (i == 2) {
                C3819vz.m1607mQ().m1599mY();
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: v */
        public void mo2109v(int i, int i2) {
            if (i == 1) {
                ble.this.m6505jF(i2);
            }
            if (i == 3) {
                ble.this.m6504jG(i2);
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: a */
        public void mo2119a(int i, int i2, long j, boolean z) {
            if (i == 3 && z) {
                C3819vz.m1607mQ().m1617L(j);
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: a */
        public void mo2118a(int i, int i2, String str, long j) {
            C3819vz.m1607mQ().m1608e(str, j);
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: b */
        public void mo2117b(int i, int i2, long j) {
            C3819vz.m1607mQ().m1619J(j);
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: c */
        public void mo2115c(int i, int i2, long j) {
            C3819vz.m1607mQ().m1618K(j);
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: d */
        public void mo2113d(int i, int i2, int i3) {
            if (i == 2) {
                C3819vz.m1607mQ().m1609bD(i3);
            }
            if (i == 1) {
                C3819vz.m1607mQ().m1610bC(i3);
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: d */
        public void mo2112d(int i, int i2, long j) {
            C3819vz.m1607mQ().m1615N(j);
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: e */
        public void mo2111e(int i, int i2, long j) {
            C3819vz.m1607mQ().m1616M(j);
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: a */
        public void mo2120a(int i, int i2, double d) {
            C3819vz.m1607mQ().m1611b(d);
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: b */
        public void mo2116b(String str, int i, long j) {
            C3819vz.m1607mQ().m1612a(str, i, j, 1);
        }

        @Override // com.kingroot.kinguser.InterfaceC3670tv
        /* renamed from: c */
        public void mo2114c(String str, int i, long j) {
            C3819vz.m1607mQ().m1612a(str, i, j, 2);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3518rg
    /* renamed from: a */
    public void mo2480a(Intent intent, int i) {
        m6506c(intent, i);
    }

    @Override // com.kingroot.kinguser.AbstractC3518rg
    /* renamed from: hP */
    public InterfaceC3666tt mo2477hP() {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3518rg
    /* renamed from: hQ */
    public boolean mo2476hQ() {
        return aks.m11143BP().m11013EP();
    }

    @Override // com.kingroot.kinguser.AbstractC3518rg
    /* renamed from: a */
    public void mo2481a(long j, boolean z, int i, int i2) {
    }

    @Override // com.kingroot.kinguser.AbstractC3518rg
    /* renamed from: J */
    public void mo2482J(boolean z) {
    }

    @Override // com.kingroot.kinguser.AbstractC3518rg
    /* renamed from: b */
    public void mo2479b(boolean z, int i) {
    }

    /* renamed from: c */
    private void m6506c(Intent intent, int i) {
        if (intent != null && "com.kingroot.master.ACTION.BOOT.AUTO.START".equals(intent.getAction())) {
            C3803vu.m1680md().m1688k(intent.getIntExtra("extra_start_type", 0), true);
            C3803vu.m1680md().m1716R(false);
        }
    }
}
