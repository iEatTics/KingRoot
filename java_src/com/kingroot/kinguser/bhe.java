package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.ipc.IIpcCallback;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.ain;
import com.kingroot.kinguser.aiu;
import com.kingroot.kinguser.ajb;
import com.kingroot.kinguser.ajk;
import com.kingroot.kinguser.ajs;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.bas;
import com.kingroot.kinguser.bhe;
import com.kingroot.loader.common.KlConst;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bhe {

    /* renamed from: com.kingroot.kinguser.bhe$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2277a {
        /* renamed from: dt */
        void mo7047dt(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static void m7052h(List<String> list, List<String> list2) {
        String m11573a = ait.m11573a(list, list2, 1);
        if (!TextUtils.isEmpty(m11573a)) {
            abc.m12845qK().m12846el(m11573a);
        }
    }

    /* renamed from: eb */
    public static List<String> m7055eb(boolean z) {
        ArrayList arrayList = new ArrayList();
        avs m8774RY = avs.m8774RY();
        HashSet hashSet = new HashSet();
        if (aks.m11143BP().m11099Ch()) {
            hashSet.add(abu.f1378ZV);
            hashSet.add(abu.f1379ZW);
            hashSet.add(bha.bpw);
        }
        if (abd.m12839qb() >= 21) {
            hashSet.add("/system/xbin/daemonsu");
        }
        if (abf.m12838qP()) {
            hashSet.add(abu.f1378ZV);
        }
        List<String> m8771ha = m8774RY.m8771ha(1);
        for (String str : m8774RY.m8768hd(1)) {
            if (!hashSet.contains(str) && (z || !m7053g(m8771ha, str))) {
                if (str.contains("*") || bha.m7064lt(str)) {
                    arrayList.addAll(aar.m12944r(str, false));
                    try {
                        arrayList.add(aas.f1260XV + str);
                    } catch (Throwable th) {
                    }
                }
            }
        }
        for (String str2 : m8774RY.m8767he(1)) {
            if (z || !m7053g(m8771ha, str2)) {
                if (str2.contains("*") || bha.m7064lt(str2)) {
                    arrayList.add("rm -r " + str2);
                    arrayList.add(String.format("rmdir %s", str2));
                }
            }
        }
        if (z && m8771ha != null && m8771ha.size() > 0) {
            Iterator<String> it = m8774RY.m8771ha(1).iterator();
            while (it.hasNext()) {
                arrayList.add(String.format("pm uninstall %s", it.next()));
            }
        }
        return arrayList;
    }

    public static boolean acj() {
        List<String> m8771ha = avs.m8774RY().m8771ha(1);
        if (m8771ha == null || m8771ha.size() <= 0) {
            return false;
        }
        for (String str : m8771ha) {
            if (C3952zh.m1312pq().m1314du(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    private static boolean m7053g(List<String> list, String str) {
        if (list == null || list.size() <= 0 || TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : list) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: l */
    public static List<String> m7049l(List<String> list, boolean z) {
        String str;
        String str2;
        String str3;
        File parentFile;
        ArrayList arrayList = new ArrayList();
        avs m8774RY = avs.m8774RY();
        HashSet hashSet = new HashSet();
        if (aks.m11143BP().m11099Ch()) {
            hashSet.add(abu.f1378ZV);
            hashSet.add(abu.f1379ZW);
            hashSet.add(bha.bpw);
            hashSet.add(abe.f1320YV);
            hashSet.add("/system/xbin/krdem");
        }
        try {
            if (new File("/system/bin/app_process").getCanonicalPath().equalsIgnoreCase("/system/xbin/daemonsu")) {
                hashSet.add(abe.f1320YV);
                hashSet.add(bha.bpw);
            }
        } catch (Throwable th) {
        }
        if (abf.m12838qP()) {
            hashSet.add(abu.f1378ZV);
        }
        List<String> m8768hd = m8774RY.m8768hd(8);
        m8768hd.add(abe.f1320YV);
        m8768hd.add("/system/xbin/krdem");
        boolean z2 = false;
        for (String str4 : m8768hd) {
            if (!hashSet.contains(str4)) {
                if (str4.contains("*") || bha.m7064lt(str4)) {
                    arrayList.addAll(aar.m12944r(str4, false));
                    arrayList.add(aas.f1260XV + str4);
                }
                z2 = (str4.equals(bha.bpu) || str4.equals(bha.bpv)) ? true : z2;
            }
        }
        if (!z2) {
            arrayList.addAll(aar.m12944r(bha.bpu, false));
            arrayList.add(aas.f1260XV + bha.bpu);
            arrayList.addAll(aar.m12944r(bha.bpv, false));
            arrayList.add(aas.f1260XV + bha.bpv);
        }
        if (list != null && list.size() > 0) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(aas.f1260XV + it.next());
            }
        }
        for (String str5 : m8774RY.m8767he(8)) {
            if (str5.contains("*") || bha.m7064lt(str5)) {
                arrayList.add("rm -r " + str5);
            }
        }
        File filesDir = KUApplication.m13453ge().getFilesDir();
        if (filesDir == null || (parentFile = filesDir.getParentFile()) == null) {
            str = "";
            str2 = "";
            str3 = "";
        } else {
            String absolutePath = filesDir.getParentFile().getAbsolutePath();
            String absolutePath2 = new File(parentFile, KlConst.PLUGIN_CACHE_DIR_NAME).getAbsolutePath();
            str = absolutePath;
            str2 = absolutePath2;
            str3 = new File(parentFile, "applib").getAbsolutePath();
        }
        String packageName = KUApplication.m13453ge().getPackageName();
        String str6 = "/data/app-lib/" + packageName + "-*";
        List<String> m8771ha = m8774RY.m8771ha(8);
        if (!C3942yy.m1352c(m8771ha)) {
            Iterator<String> it2 = m8771ha.iterator();
            while (it2.hasNext()) {
                arrayList.add(String.format("pm uninstall %s", it2.next()));
            }
        }
        arrayList.add(String.format("pm uninstall %s", packageName));
        if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str2)) {
            arrayList.addAll(aar.m12944r(str, false));
            arrayList.addAll(aar.m12944r(str3 + File.separator + "*", false));
            arrayList.addAll(aar.m12944r(str2 + File.separator + "*", false));
            arrayList.add("rm -r " + filesDir.getAbsolutePath());
            arrayList.add("rm -r " + str2);
            arrayList.add("rm -r " + str3);
            arrayList.add("rm -r " + str6);
            arrayList.add("rm -r " + str);
        }
        if (z && Build.VERSION.SDK_INT >= 21) {
            arrayList.add("sleep 5");
            arrayList.add("reboot");
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ack() {
        avs m8774RY = avs.m8774RY();
        new ajp().m11439b(m8774RY.m8770hb(1), m8774RY.m8769hc(1), new ArrayList());
    }

    /* renamed from: ec */
    public static synchronized void m7054ec(boolean z) {
        synchronized (bhe.class) {
            m7058a(z, true, null);
        }
    }

    /* renamed from: a */
    public static synchronized void m7058a(final boolean z, final boolean z2, final InterfaceC2277a interfaceC2277a) {
        synchronized (bhe.class) {
            try {
                alb m10654GK = alb.m10654GK();
                m10654GK.removeProtectedPackage(KUApplication.m13453ge().getPackageName());
                m10654GK.syncMonitorPackages(new ArrayList());
                m10654GK.syncProtectPackages(new ArrayList());
                m10654GK.m10650af(new ArrayList());
                abc m12845qK = abc.m12845qK();
                if (!m12845qK.isRootPermition(true) || !aio.m11606d(m12845qK)) {
                }
                final Object obj = new Object();
                aeb.m12285tV().m12287a(40000, new IIpcCallback.Stub() { // from class: com.kingroot.kinguser.util.UnRoot$1
                    /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
                    /* JADX WARN: Removed duplicated region for block: B:52:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    @Override // com.kingroot.common.ipc.IIpcCallback
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public void onFinish(IpcResult ipcResult) {
                        int m7057bS;
                        boolean acl;
                        ajs.m11423zx().m11426aS(true);
                        aks m11143BP = aks.m11143BP();
                        if (z) {
                            m11143BP.m10838bi(true);
                        }
                        if (!m11143BP.m11099Ch() && m11143BP.m10925Fz()) {
                            ajb.m11487yT().checkSync(true, false, null, ajk.m11466zo());
                        }
                        m11143BP.m10874bI(false);
                        aiu aiuVar = new aiu();
                        List<String> m11555yu = aiuVar.m11555yu();
                        List<String> m7055eb = bhe.m7055eb(z2);
                        List<String> m7049l = bhe.m7049l(m11555yu, aiuVar.m11560aL(true));
                        bhe.ack();
                        ain.m11609xW().m11611gb(KUApplication.m13453ge().getPackageName());
                        if (m11555yu != null && !m11555yu.isEmpty()) {
                            acl = bhe.acl();
                            if (!acl) {
                                if (!bas.isAvailable() || !bas.m7894g(m7055eb, m7049l)) {
                                    if (interfaceC2277a != null) {
                                        interfaceC2277a.mo7047dt(false);
                                    }
                                    bhe.acn();
                                    synchronized (obj) {
                                        obj.notifyAll();
                                    }
                                    return;
                                }
                                m7057bS = bhe.m7057bS(m11555yu);
                                if (interfaceC2277a != null) {
                                    interfaceC2277a.mo7047dt(m7057bS != -1);
                                }
                                synchronized (obj) {
                                    obj.notifyAll();
                                }
                                if (m7057bS == 0) {
                                    ProcessUtils.m13140m(KApplication.m13453ge(), KUApplication.m13453ge().getPackageName());
                                    return;
                                } else if (m7057bS == -1) {
                                    bhe.acn();
                                    return;
                                } else {
                                    return;
                                }
                            }
                        }
                        bhe.m7052h(m7055eb, m7049l);
                        m7057bS = bhe.m7057bS(m11555yu);
                        if (interfaceC2277a != null) {
                        }
                        synchronized (obj) {
                        }
                    }
                });
                synchronized (obj) {
                    obj.wait(90000L);
                }
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bS */
    public static int m7057bS(List<String> list) {
        boolean z;
        if (list != null) {
            try {
                if (list.size() != 0) {
                    int i = 0;
                    while (true) {
                        Thread.sleep(5000L);
                        z = true;
                        for (String str : list) {
                            if (new File(str).exists()) {
                                z = false;
                            }
                        }
                        int i2 = i + 1;
                        if (i2 >= 5 || z) {
                            break;
                        }
                        i = i2;
                    }
                    return z ? 0 : -1;
                }
            } catch (Exception e) {
                return -1;
            }
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean acl() {
        abc m12845qK = abc.m12845qK();
        return m12845qK.isRootPermition(true) && aio.m11606d(m12845qK);
    }

    public static void acm() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bhe.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (bas.isAvailable()) {
                    aiu aiuVar = new aiu();
                    if (!bas.m7894g(bhe.m7055eb(true), bhe.m7049l(aiuVar.m11555yu(), aiuVar.m11560aL(true)))) {
                    }
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void acn() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bhe.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                ArrayList arrayList = new ArrayList();
                arrayList.add(Integer.valueOf((C3823wb.m1584ne() ? 8 : 0) + 0 + (C3823wb.m1585nd() ? 4 : 0)));
                arrayList.add(Integer.valueOf(aio.m11606d(abc.m12845qK()) ? 1 : 0));
                ady.m12308tK().m12342X(arrayList);
            }
        }));
    }
}
