package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.urlcheck.aidl.ICallback;
import com.kingroot.loader.common.KlConst;
import java.util.List;
/* loaded from: classes.dex */
public class avi extends avb {
    @Override // com.kingroot.kinguser.avb
    /* renamed from: j */
    public int mo8834j(abc abcVar) {
        final boolean z;
        int i = 1;
        if (TextUtils.isEmpty(this.aTk)) {
            return 3;
        }
        try {
            String[] split = this.aTk.split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            if (split.length == 2) {
                if ("s1".equalsIgnoreCase(split[0])) {
                    if (!aii.m11642xL().m11639xO()) {
                        return 3;
                    }
                    z = Integer.parseInt(split[1]) == 1;
                    akr.m11154BL().m11150aV(z);
                    if (ahl.m11725xm().m11723xo() && !z) {
                        adm.m12480st().m12494sB();
                        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.avi.1
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                super.run();
                                ahl.m11725xm().m11734a(false, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.net.clcmd.KuCloudSwitcher$1$1
                                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                                    public void onSwitcherOpen(int i2) {
                                    }

                                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                                    public void onSwitcherClosed() {
                                        aks.m11143BP().m10747et(0);
                                    }
                                });
                            }
                        }));
                    }
                } else if ("s2".equalsIgnoreCase(split[0])) {
                    boolean z2 = Integer.parseInt(split[1]) == 1;
                    aks.m11143BP().m10882bE(z2);
                    aks.m11143BP().m10796cg(z2 ? false : true);
                } else if ("s3".equalsIgnoreCase(split[0])) {
                    if (Integer.parseInt(split[1]) == 1) {
                        aks.m11143BP().m10779eB(1);
                    } else {
                        aks.m11143BP().m10779eB(0);
                    }
                } else if ("s6".equalsIgnoreCase(split[0])) {
                    aks.m11143BP().m10857bW(Integer.parseInt(split[1]) == 1);
                } else if ("s8".equalsIgnoreCase(split[0])) {
                    i = 3;
                } else if ("s9".equalsIgnoreCase(split[0])) {
                    aks.m11143BP().m10798ce(Integer.parseInt(split[1]) == 1);
                } else if ("s10".equalsIgnoreCase(split[0])) {
                    aks.m11143BP().m10799cd(Integer.parseInt(split[1]) == 1);
                } else if ("s11".equalsIgnoreCase(split[0])) {
                    if (Integer.parseInt(split[1]) != 1) {
                        i = 3;
                    } else if (akh.m11295Au()) {
                        akh.m11292aT(false);
                        ady.m12308tK().mo1748a(100530, 0, (List<Object>) null, true);
                    }
                } else if ("s12".equalsIgnoreCase(split[0])) {
                    aks.m11143BP().m10795ch(Integer.parseInt(split[1]) == 1);
                } else if ("s13".equalsIgnoreCase(split[0])) {
                    akr.m11154BL().m11144bb(Integer.parseInt(split[1]) == 1);
                } else if ("s14".equalsIgnoreCase(split[0])) {
                    z = Integer.parseInt(split[1]) == 1;
                    if (z && aks.m11143BP().m10962FO() != 0 && !aks.m11143BP().m10964FM()) {
                        return 3;
                    }
                    beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.avi.2
                        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                        public void run() {
                            super.run();
                            aks.m11143BP().m10786cq(z);
                            biq.ada().m6848eh(z);
                        }
                    }));
                } else if ("s15".equalsIgnoreCase(split[0])) {
                    z = Integer.parseInt(split[1]) == 1;
                    aks.m11143BP().m10784cs(z);
                    if (z) {
                        afz.m12007vG().clearAll();
                    }
                } else if ("s17".equalsIgnoreCase(split[0])) {
                    int parseInt = Integer.parseInt(split[1]);
                    bfi aah = bfm.aah();
                    if (parseInt == 0) {
                        aah.mo7269dN(false);
                    } else if (parseInt == 1) {
                        aah.mo7267iw(2);
                        aah.mo7269dN(true);
                    } else if (parseInt == 2) {
                        aah.mo7267iw(0);
                        aah.mo7269dN(true);
                    } else {
                        aah.mo7269dN(false);
                    }
                } else if ("s18".equalsIgnoreCase(split[0])) {
                    z = Integer.parseInt(split[1]) == 1;
                    bfw.aaS().m7206dS(z);
                    bfp.aay().m7252a(z, (ICallback) null);
                } else if ("s19".equalsIgnoreCase(split[0])) {
                    bfw.aaS().m7202dW(Integer.parseInt(split[1]) == 1);
                } else if ("s20".equalsIgnoreCase(split[0])) {
                    z = Integer.parseInt(split[1]) == 1;
                    aks.m11143BP().m10782cu(z);
                    ags.m11911aF(z);
                } else if ("s21".equalsIgnoreCase(split[0])) {
                    aks.m11143BP().m10878bG(Integer.parseInt(split[1]) == 1);
                } else {
                    i = 3;
                }
                return i;
            }
            return 3;
        } catch (Exception e) {
            return 3;
        }
    }
}
