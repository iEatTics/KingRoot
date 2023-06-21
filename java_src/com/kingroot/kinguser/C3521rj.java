package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.RunnableC3845wo;
import java.util.List;
/* renamed from: com.kingroot.kinguser.rj */
/* loaded from: classes.dex */
public class C3521rj {

    /* renamed from: FT */
    private static String f3471FT;

    /* renamed from: FU */
    private static String f3472FU;

    /* renamed from: FV */
    private static String f3473FV;

    /* renamed from: FW */
    private static final RunnableC3845wo f3474FW;

    /* renamed from: lo */
    static final /* synthetic */ boolean f3475lo;

    /* renamed from: com.kingroot.kinguser.rj$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3523a {
        /* renamed from: K */
        void mo2460K(boolean z);

        /* renamed from: cm */
        void mo2459cm(String str);
    }

    static {
        f3475lo = !C3521rj.class.desiredAssertionStatus();
        f3471FT = null;
        f3472FU = null;
        f3473FV = null;
        f3474FW = new RunnableC3845wo() { // from class: com.kingroot.kinguser.rj.1
            /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
            /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
            @Override // com.kingroot.kinguser.RunnableC3845wo
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void mo1543a(@NonNull RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
                InterfaceC3523a interfaceC3523a;
                super.mo1543a(interfaceC3847a);
                List<Object> mo1527nF = interfaceC3847a.mo1527nF();
                if (mo1527nF != null && mo1527nF.size() > 0) {
                    Object obj = mo1527nF.get(0);
                    if (obj instanceof InterfaceC3523a) {
                        interfaceC3523a = (InterfaceC3523a) obj;
                        if (interfaceC3523a == null) {
                            interfaceC3523a.mo2460K(C3521rj.m2464b(interfaceC3523a));
                            return;
                        }
                        return;
                    }
                }
                interfaceC3523a = null;
                if (interfaceC3523a == null) {
                }
            }
        };
    }

    /* renamed from: u */
    public static void m2461u(String str, String str2) {
        if (!f3475lo && str == null) {
            throw new AssertionError();
        }
        if (!f3475lo && str2 == null) {
            throw new AssertionError();
        }
        f3472FU = str;
        f3473FV = str2;
    }

    /* renamed from: a */
    public static void m2465a(InterfaceC3523a interfaceC3523a) {
        f3474FW.m1537c(interfaceC3523a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m2464b(InterfaceC3523a interfaceC3523a) {
        String m2462iz = m2462iz();
        if (TextUtils.isEmpty(m2462iz)) {
            return false;
        }
        if (interfaceC3523a != null) {
            interfaceC3523a.mo2459cm(m2462iz);
        }
        return (m2462iz.equals(f3472FU == null ? "191240FCB048127DB9110D1B30537FDE" : f3472FU) || m2462iz.equals(f3473FV == null ? "7CC749CFC0FB5677E6ABA342EDBDBA5A" : f3473FV)) ? false : true;
    }

    /* renamed from: iz */
    private static String m2462iz() {
        if (!TextUtils.isEmpty(f3471FT)) {
            return f3471FT;
        }
        ApplicationInfo applicationInfo = bzt.m5101ge().getApplicationInfo();
        String m12873ca = aaz.m12873ca(applicationInfo.uid);
        if (TextUtils.isEmpty(m12873ca)) {
            m12873ca = aaz.m12871ea(applicationInfo.sourceDir);
            if (TextUtils.isEmpty(m12873ca)) {
                m12873ca = aaz.m12867qy();
            }
        }
        if (!TextUtils.isEmpty(m12873ca) && m12873ca.length() == 32) {
            f3471FT = m12873ca;
        }
        return f3471FT;
    }
}
