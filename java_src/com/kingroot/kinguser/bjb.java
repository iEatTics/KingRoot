package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.RunnableC3845wo;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class bjb {
    private static bjb bvu;
    private List<AutoStartAppItemInfo> bvw;
    private HashMap<String, Integer> bvx;
    private boolean bvz;
    private boolean mResumed;
    private final Object mLock = new Object();
    private Set<String> bvy = new HashSet();
    private C2370a bvv = new C2370a();
    private int bvA = 0;

    /* renamed from: com.kingroot.kinguser.bjb$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2371b {
        /* renamed from: a */
        void mo6777a(int i, Object obj, int i2, int i3);

        /* renamed from: b */
        void mo6764b(int i, Object obj, int i2, int i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bjb$a */
    /* loaded from: classes.dex */
    public final class C2370a extends RunnableC3845wo {
        C2370a() {
        }

        @Override // com.kingroot.kinguser.RunnableC3845wo
        /* renamed from: a */
        public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
            List<Object> mo1527nF = interfaceC3847a.mo1527nF();
            if (mo1527nF != null && mo1527nF.size() != 0) {
                int intValue = ((Integer) mo1527nF.get(0)).intValue();
                synchronized (bjb.this.mLock) {
                    while (bjb.this.bvA != 0) {
                        try {
                            bjb.this.mLock.wait();
                        } catch (InterruptedException e) {
                            return;
                        }
                    }
                    bjb.this.bvA = intValue;
                }
                switch (intValue) {
                    case 1:
                        bjb.this.m6785c(interfaceC3847a);
                        break;
                    case 2:
                        bjb.this.m6784d(interfaceC3847a);
                        break;
                    case 3:
                        bjb.this.m6783e(interfaceC3847a);
                        break;
                }
                synchronized (bjb.this.mLock) {
                    bjb.this.bvA = 0;
                    bjb.this.mLock.notifyAll();
                }
            }
        }
    }

    public static synchronized bjb adD() {
        bjb bjbVar;
        synchronized (bjb.class) {
            if (bvu == null) {
                bvu = new bjb();
            }
            bjbVar = bvu;
        }
        return bjbVar;
    }

    private bjb() {
    }

    /* renamed from: a */
    public void m6795a(InterfaceC2371b interfaceC2371b, boolean z) {
        if (this.bvv.isRunning()) {
            this.bvv.m1535nA();
        }
        onResume();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(1);
        arrayList.add(interfaceC2371b);
        arrayList.add(Boolean.valueOf(z));
        this.bvv.m1545I(arrayList);
    }

    /* renamed from: c */
    protected void m6785c(RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
        int i;
        int i2;
        bje bjeVar;
        bjg bjgVar;
        int i3;
        int i4;
        InterfaceC2371b interfaceC2371b = (InterfaceC2371b) interfaceC3847a.mo1527nF().get(1);
        int i5 = 0;
        int i6 = 0;
        try {
            aer.m12167uD();
            bjgVar = new bjg("autostart_enable_settings.conf");
            this.bvx = bjg.m6735u(bjgVar.adJ());
        } catch (Exception e) {
            i = 0;
            i2 = 0;
            bjeVar = null;
        }
        if (interfaceC3847a.isRunning()) {
            bje adI = bje.adI();
            try {
                int adt = adI.adt();
                int i7 = 1;
                while (adI.hasNext() && interfaceC3847a.isRunning()) {
                    AutoStartAppItemInfo ads = adI.ads();
                    try {
                        if (ads != null) {
                            String packageName = ads.getPackageName();
                            ads.adB();
                            Integer num = this.bvx != null ? this.bvx.get(packageName) : null;
                            if (num == null) {
                                num = 0;
                            }
                            ads.m1255jj((num.intValue() == 0 || num.intValue() == 3) ? 0 : 1);
                            if (ads.adB() == 0 || ads.adB() == 3) {
                                i6++;
                                if (!ads.m13025vk() && !ads.isSystem()) {
                                    i3 = i5 + 1;
                                    i4 = i6;
                                    int i8 = i7 + 1;
                                    m6797a(1, interfaceC2371b, ads, i7, adt);
                                    i7 = i8;
                                    i6 = i4;
                                    i5 = i3;
                                }
                            }
                        }
                        m6797a(1, interfaceC2371b, ads, i7, adt);
                        i7 = i8;
                        i6 = i4;
                        i5 = i3;
                    } catch (Exception e2) {
                        i = i4;
                        i2 = i3;
                        bjeVar = adI;
                    }
                    i3 = i5;
                    i4 = i6;
                    int i82 = i7 + 1;
                }
            } catch (Exception e3) {
                i = i6;
                i2 = i5;
                bjeVar = adI;
            }
            if (interfaceC3847a.isRunning()) {
                adI.adv();
                bjgVar.m6736t(this.bvx);
                this.bvz = false;
                i = i6;
                i2 = i5;
                bjeVar = adI;
                synchronized (this.mLock) {
                    if (bjeVar != null) {
                        this.bvw = bjeVar.adu();
                    }
                    m6790b(1, interfaceC2371b, this.bvw == null ? new ArrayList() : new ArrayList(this.bvw), i2, i);
                }
            }
        }
    }

    /* renamed from: d */
    protected void m6784d(RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
        int i;
        int i2;
        InterfaceC2371b interfaceC2371b = (InterfaceC2371b) interfaceC3847a.mo1527nF().get(1);
        List list = (List) interfaceC3847a.mo1527nF().get(2);
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= size) {
                i = i4;
                break;
            }
            try {
                AutoStartAppItemInfo autoStartAppItemInfo = (AutoStartAppItemInfo) list.get(i3);
                autoStartAppItemInfo.m1255jj(1);
                m6797a(2, interfaceC2371b, autoStartAppItemInfo, i3 + 1, size);
                i = autoStartAppItemInfo.adz() + i4;
                try {
                    ahe.m11803wL().m11802x(autoStartAppItemInfo.getPackageName(), false);
                    if (!interfaceC3847a.isRunning()) {
                        break;
                    }
                    try {
                        Thread.sleep(50L);
                        i3++;
                        i4 = i;
                    } catch (InterruptedException e) {
                    }
                } catch (Exception e2) {
                    i2 = i;
                    m6797a(2, interfaceC2371b, null, size + 1, size);
                    m6790b(2, interfaceC2371b, Integer.valueOf(i2), 0, size);
                }
            } catch (Exception e3) {
                i = i4;
                i2 = i;
                m6797a(2, interfaceC2371b, null, size + 1, size);
                m6790b(2, interfaceC2371b, Integer.valueOf(i2), 0, size);
            }
        }
        synchronized (this.mLock) {
            new bjg("autostart_snapshot.conf").m6736t(this.bvw);
            new bjg("autostart_enable_settings.conf").m6736t(this.bvx);
        }
        if (interfaceC3847a.isRunning()) {
            i2 = i;
            m6797a(2, interfaceC2371b, null, size + 1, size);
            m6790b(2, interfaceC2371b, Integer.valueOf(i2), 0, size);
        }
    }

    /* renamed from: a */
    public void m6796a(InterfaceC2371b interfaceC2371b) {
        if (this.bvv.isRunning()) {
            this.bvv.m1535nA();
        }
        synchronized (this.mLock) {
            if (!this.mResumed && this.bvz) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(3);
                arrayList.add(interfaceC2371b);
                this.bvv.m1536f(arrayList, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m6783e(RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
        InterfaceC2371b interfaceC2371b = (InterfaceC2371b) interfaceC3847a.mo1527nF().get(1);
        synchronized (this.mLock) {
            new bjg("autostart_enable_settings.conf").m6736t(this.bvx);
            new bjg("autostart_snapshot.conf").m6736t(this.bvw);
            m6790b(3, interfaceC2371b, null, 0, 0);
        }
    }

    /* renamed from: a */
    private void m6797a(int i, InterfaceC2371b interfaceC2371b, Object obj, int i2, int i3) {
        if (interfaceC2371b != null) {
            interfaceC2371b.mo6777a(i, obj, i2, i3);
        }
    }

    /* renamed from: b */
    private void m6790b(int i, InterfaceC2371b interfaceC2371b, Object obj, int i2, int i3) {
        if (interfaceC2371b != null) {
            interfaceC2371b.mo6764b(i, obj, i2, i3);
        }
    }

    /* renamed from: a */
    public void m6791a(AutoStartAppItemInfo autoStartAppItemInfo, boolean z) {
        this.bvx.put(autoStartAppItemInfo.getPackageName(), Integer.valueOf(z ? 3 : 2));
        this.bvz = true;
        m6787b(autoStartAppItemInfo, z);
        aeu.m12149w(autoStartAppItemInfo.getPackageName(), z);
    }

    /* renamed from: b */
    private void m6787b(AutoStartAppItemInfo autoStartAppItemInfo, boolean z) {
        String packageName = autoStartAppItemInfo.getPackageName();
        if (!z) {
            this.bvy.add(packageName);
        } else if (this.bvy.contains(packageName)) {
            this.bvy.remove(packageName);
        }
    }

    public void onResume() {
        synchronized (this.mLock) {
            this.mResumed = true;
        }
    }

    /* renamed from: b */
    public void m6789b(InterfaceC2371b interfaceC2371b) {
        synchronized (this.mLock) {
            this.mResumed = false;
            if (this.bvy.size() > 0 || aeu.m12151uI()) {
                beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.bjb.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        synchronized (bjb.this.mLock) {
                            new ArrayList(bjb.this.bvy);
                            bjb.this.bvy.clear();
                        }
                        if (aeu.isWodAvailible()) {
                            aeu.m12153uG();
                        } else {
                            aeu.m12152uH();
                        }
                    }
                });
            }
        }
        m6796a(interfaceC2371b);
    }

    public void onPause() {
        m6789b(new InterfaceC2371b() { // from class: com.kingroot.kinguser.bjb.2
            @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
            /* renamed from: a */
            public void mo6777a(int i, Object obj, int i2, int i3) {
            }

            @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
            /* renamed from: b */
            public void mo6764b(int i, Object obj, int i2, int i3) {
            }
        });
    }
}
