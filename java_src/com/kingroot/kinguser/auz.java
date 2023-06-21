package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class auz {
    private static final cce<auz> sInstance = new cce<auz>() { // from class: com.kingroot.kinguser.auz.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Rf */
        public auz create() {
            return new auz();
        }
    };
    private bed aTi;

    /* renamed from: Rc */
    public static auz m8880Rc() {
        return sInstance.get();
    }

    private auz() {
        this.aTi = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.auz.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                Context ge = KUApplication.m13453ge();
                boolean m11128CE = aks.m11143BP().m11128CE();
                boolean m1918R = C3748vb.m1918R(ge);
                auz.this.m8875h(m11128CE, m1918R);
                if (!ais.m11585ye().m11584yf() && m11128CE && m1918R) {
                    auz.this.m8878Re();
                }
            }
        });
    }

    /* renamed from: Rd */
    public void m8879Rd() {
        beg.m7461Zj().m7450c(this.aTi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m8875h(boolean z, boolean z2) {
        final CheckResult mo12201ue;
        if (aks.m11143BP().m11127CF() && (mo12201ue = aeg.m12265um().mo12201ue()) != null) {
            if (z && aks.m11143BP().m11125CH() < 3) {
                if (z2) {
                    if (mo12201ue.err == 0 && !C3942yy.m1352c(mo12201ue.mUpdateInfoList) && !TextUtils.isEmpty(mo12201ue.mUpdateInfoList.get(0).url)) {
                        new Thread(new Runnable() { // from class: com.kingroot.kinguser.auz.3
                            @Override // java.lang.Runnable
                            public void run() {
                                aeg.m12265um().mo12235a(mo12201ue, 3);
                            }
                        }).start();
                        return;
                    }
                    return;
                }
                aei.m12242f(mo12201ue);
                return;
            }
            aei.m12244d(mo12201ue);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Re */
    public void m8878Re() {
        if (!adw.m12388tb().m12389eF(ais.m11585ye().m11580yj()) && !ais.m11585ye().m11584yf() && ais.m11585ye().m11586un() == 0 && aks.m11143BP().m11120CM() < 3 && aks.m11143BP().m11119CN() < 1) {
            long currentTimeMillis = System.currentTimeMillis();
            if (adk.m12539b(aks.m11143BP().m11112CU(), currentTimeMillis, 259200000L)) {
                aks.m11143BP().m10897aY(currentTimeMillis);
                String m11577ym = ais.m11585ye().m11577ym();
                if (TextUtils.isEmpty(m11577ym)) {
                    m11577ym = adw.m12388tb().m12378tl();
                }
                String m12376tn = adw.m12388tb().m12376tn();
                adw.m12388tb().m12391cD(2);
                adw.m12388tb().m12392cC(4);
                adw.m12388tb().m12394a(m12376tn, "kmPlugins.zip", m11577ym, 4);
            }
        }
    }
}
