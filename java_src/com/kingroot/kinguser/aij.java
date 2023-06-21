package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.C3956zk;
import java.util.List;
/* loaded from: classes.dex */
public class aij {
    private static volatile int arA = 0;

    /* renamed from: xP */
    public static void m11633xP() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.aij.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (aij.arA == 1) {
                    aij.m11632xQ();
                    return;
                }
                aij.m11636fX("com.sec.knox.app.container");
                aij.m11636fX("com.sec.knox.seandroid");
                aij.m11636fX("com.sec.knox.store");
                aij.m11636fX("com.sec.knox.containeragent");
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: xQ */
    public static void m11632xQ() {
        m11636fX("com.sec.knox.bridge");
        m11636fX("com.sec.knox.switchknoxI");
        m11636fX("com.sec.knox.switchknoxII");
        m11636fX("com.sec.knox.foldercontainer");
        m11636fX("com.sec.knox.knoxsetupwizardclient");
    }

    /* renamed from: fW */
    private static boolean m11637fW(String str) {
        try {
            return C3952zh.m1312pq().getApplicationEnabledSetting(str) == 2;
        } catch (Exception e) {
            return true;
        }
    }

    /* renamed from: eZ */
    private static int m11638eZ(String str) {
        return ((Integer) C3956zk.m1302a(new C3956zk.InterfaceC3957a<Integer>() { // from class: com.kingroot.kinguser.aij.2
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            /* renamed from: an */
            public Integer execute(List<Object> list) {
                String str2 = (String) list.get(0);
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(false)) {
                    return Integer.valueOf(m12845qK.m12846el(new StringBuilder().append("pm disable ").append(str2).toString()).success() ? 0 : -1);
                }
                return -2;
            }
        }, str)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fX */
    public static void m11636fX(String str) {
        if (!TextUtils.isEmpty(str) && C3952zh.m1312pq().m1314du(str) && !m11637fW(str)) {
            m11638eZ(str);
        }
    }

    /* renamed from: xR */
    public static boolean m11631xR() {
        C3952zh m1312pq = C3952zh.m1312pq();
        if ((m1312pq.m1314du("com.sec.knox.app.container") && !m11637fW("com.sec.knox.app.container")) || ((m1312pq.m1314du("com.sec.knox.seandroid") && !m11637fW("com.sec.knox.seandroid")) || ((m1312pq.m1314du("com.sec.knox.store") && !m11637fW("com.sec.knox.store")) || (m1312pq.m1314du("com.sec.knox.containeragent") && !m11637fW("com.sec.knox.containeragent"))))) {
            arA = 0;
            return true;
        }
        return m11630xS();
    }

    /* renamed from: xS */
    private static boolean m11630xS() {
        C3952zh m1312pq = C3952zh.m1312pq();
        if ((!m1312pq.m1314du("com.sec.knox.bridge") || m11637fW("com.sec.knox.bridge")) && ((!m1312pq.m1314du("com.sec.knox.switchknoxI") || m11637fW("com.sec.knox.switchknoxI")) && ((!m1312pq.m1314du("com.sec.knox.switchknoxII") || m11637fW("com.sec.knox.switchknoxII")) && ((!m1312pq.m1314du("com.sec.knox.foldercontainer") || m11637fW("com.sec.knox.foldercontainer")) && (!m1312pq.m1314du("com.sec.knox.knoxsetupwizardclient") || m11637fW("com.sec.knox.knoxsetupwizardclient")))))) {
            return false;
        }
        arA = 1;
        return true;
    }
}
