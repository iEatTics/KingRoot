package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.activitys.AdDownloadActivity;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.loader.common.KlConst;
/* loaded from: classes.dex */
public class avg extends avb {
    @Override // com.kingroot.kinguser.avb
    /* renamed from: j */
    public int mo8834j(abc abcVar) {
        String str;
        int i = 1;
        if (TextUtils.isEmpty(this.aTk)) {
            return 3;
        }
        try {
            String[] split = this.aTk.split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            if (split == null || split.length < 2) {
                i = 2;
            } else {
                if (split.length <= 2) {
                    str = "";
                } else {
                    str = split[2];
                    int i2 = 3;
                    while (i2 < split.length) {
                        String str2 = str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + split[i2];
                        i2++;
                        str = str2;
                    }
                }
                if ("r1".equalsIgnoreCase(split[0])) {
                    if (!aii.m11642xL().m11639xO()) {
                        return 3;
                    }
                    if (!TextUtils.isEmpty(split[1]) && split[1].equalsIgnoreCase("open")) {
                        if (akr.m11154BL().m11153BM()) {
                            m8846Rs();
                        }
                    } else if (!TextUtils.isEmpty(split[1]) && split[1].equalsIgnoreCase("close")) {
                        m8845Rt();
                    }
                } else {
                    if ("r2".equalsIgnoreCase(split[0])) {
                        if (!TextUtils.isEmpty(split[1]) && split[1].equalsIgnoreCase("run")) {
                            alb.m10646fb(2);
                        }
                    } else if ("r3".equalsIgnoreCase(split[0])) {
                        if (!TextUtils.isEmpty(split[1]) && split[1].equalsIgnoreCase("run")) {
                            avv.m8742Sj().m8736di(true);
                        }
                    } else if ("r4".equalsIgnoreCase(split[0])) {
                        if (!TextUtils.isEmpty(split[1]) && split[1].equalsIgnoreCase("run")) {
                            i = m8844js(str);
                        }
                    } else if (!"r5".equalsIgnoreCase(split[0])) {
                        i = 3;
                    } else if (!TextUtils.isEmpty(split[1]) && split[1].equalsIgnoreCase("run")) {
                        AdDownloadActivity.m12652aL(KApplication.m13453ge());
                    }
                    i = 3;
                }
            }
        } catch (Exception e) {
            i = 3;
        }
        return i;
    }

    /* renamed from: Rs */
    private void m8846Rs() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.avg.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                ahl.m11725xm().m11734a(true, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.net.clcmd.KuCloudCmdExecter$1$1
                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherOpen(int i) {
                        if (i == 0) {
                            aks.m11143BP().m10746eu(0);
                            aks.m11143BP().m10747et(1);
                            return;
                        }
                        aks.m11143BP().m10747et(0);
                    }

                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherClosed() {
                    }
                });
            }
        }));
    }

    /* renamed from: Rt */
    private void m8845Rt() {
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.avg.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                ahl.m11725xm().m11734a(false, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.net.clcmd.KuCloudCmdExecter$2$1
                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherOpen(int i) {
                    }

                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                    public void onSwitcherClosed() {
                        aks.m11143BP().m10747et(0);
                    }
                });
            }
        }));
    }

    /* renamed from: js */
    private int m8844js(final String str) {
        if (TextUtils.isEmpty(str)) {
            return 3;
        }
        if (beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.avg.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (!ajl.m11463gt(str)) {
                }
            }
        }))) {
            return 1;
        }
        return 2;
    }
}
