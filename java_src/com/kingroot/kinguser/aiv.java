package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.bed;
import com.kingroot.loader.common.KlConst;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class aiv {
    private static volatile aiv ass;
    private abm ast;
    private final Object asu = new Object();
    private bed asv = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aiv.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() >= 2) {
                int intValue = ((Integer) mo7445nF.get(1)).intValue();
                aeh.m12259b(aeg.m12265um().mo12201ue(), intValue);
                int m11539d = aiv.this.m11539d(new File((String) mo7445nF.get(0)), intValue);
                if (m11539d == 1) {
                    aks.m11143BP().m10806by(true);
                    aks.m11143BP().m10750eq(intValue);
                } else if (m11539d == -1) {
                    aeh.m12258c(aeg.m12265um().mo12201ue(), intValue);
                }
            }
        }
    });
    private bed asw = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aiv.4
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aiv.this.m11523yy();
        }
    });
    private bed asx = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aiv.5
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() > 0) {
                final int intValue = ((Integer) mo7445nF.get(0)).intValue();
                C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.aiv.5.1
                    @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
                    public Object execute(List<Object> list) {
                        try {
                            if (aiv.this.m11535dF(intValue)) {
                                aiv.this.m11536dE(intValue);
                                return null;
                            }
                            return null;
                        } catch (Exception e) {
                            return null;
                        }
                    }
                }, new Object[0]);
            }
        }
    });

    /* renamed from: com.kingroot.kinguser.aiv$a */
    /* loaded from: classes.dex */
    public static class C1001a {
        public String asC = "";
        public String asD = "";
        public int retCode;
    }

    private aiv() {
    }

    /* renamed from: yw */
    public static aiv m11525yw() {
        if (ass == null) {
            synchronized (aiv.class) {
                if (ass == null) {
                    ass = new aiv();
                }
            }
        }
        return ass;
    }

    @NonNull
    /* renamed from: a */
    public C1001a m11547a(File file, boolean z) {
        Context ge = KUApplication.m13453ge();
        C1001a c1001a = new C1001a();
        c1001a.retCode = -1;
        if (file != null && file.isFile()) {
            try {
                c1001a = m11544aa(file.getAbsolutePath(), file.getName());
                if (z && c1001a.retCode != 0) {
                    c1001a.retCode = m11540c(ge, file);
                }
            } catch (Exception e) {
            }
        }
        return c1001a;
    }

    /* renamed from: s */
    public void m11530s(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            arrayList.add(Integer.valueOf(i));
            beg.m7461Zj().m7456a(this.asv, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public int m11539d(File file, int i) {
        Context ge = KUApplication.m13453ge();
        if (m11553C(file)) {
            if (!abi.m12831em(aas.f1262XX + file.getAbsolutePath()).success()) {
                abc m12845qK = abc.m12845qK();
                if (abc.m12845qK().isRootPermition(true)) {
                    m12845qK.m12846el(aas.f1262XX + file.getAbsolutePath());
                }
            }
            ady.m12308tK().mo1746bi(100178);
            ady.m12308tK().m12327b(i, 2, 0, 0, 1);
            m11524yx();
            return m11542b(ge, file);
        }
        ady.m12308tK().mo1746bi(100180);
        ady.m12308tK().m12327b(i, 2, 0, 0, 2);
        return -1;
    }

    /* renamed from: yx */
    private void m11524yx() {
        aks m11143BP = aks.m11143BP();
        m11143BP.m10738gZ(KApplication.m13436ii() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + 640);
        m11143BP.m10749er(KApplication.m13444hZ());
        CheckResult mo12201ue = aeg.m12265um().mo12201ue();
        if (mo12201ue != null) {
            m11143BP.m10852bb(mo12201ue.mTaskId);
        }
    }

    /* renamed from: b */
    private int m11542b(Context context, File file) {
        try {
            return m11540c(context, file);
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: c */
    protected int m11540c(Context context, File file) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            context.startActivity(intent);
            return 1;
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: Z */
    protected int m11552Z(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(aas.f1256XR);
        boolean isFile = new File(str2).isFile();
        if (isFile) {
            if (abd.m12839qb() >= 8) {
                arrayList.add("service call activity 79 s16 " + KUApplication.m13453ge().getPackageName());
            } else {
                arrayList.add("kill -9 " + Process.myPid());
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            arrayList.add(aas.f1260XV + "-r /system/app" + File.separator + "Kinguser.apk");
            File file = new File("/system/app" + File.separator + "Kinguser");
            if (!file.exists()) {
                arrayList.add(aas.f1263XY + file.getAbsolutePath());
                arrayList.add(aas.f1261XW + file.getAbsolutePath());
                arrayList.add(aas.f1262XX + file.getAbsolutePath());
                arrayList.add(String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", file.getAbsolutePath()));
            }
        }
        arrayList.add(String.format("cat %s > %s", str, str2));
        arrayList.add("chmod 0644 " + str2);
        if (isFile) {
            arrayList.add("pm install -r " + str2);
        }
        String m11572ao = ait.m11572ao(arrayList);
        if (TextUtils.isEmpty(m11572ao)) {
            return -1;
        }
        if (!abc.m12845qK().m12846el(m11572ao).success()) {
        }
        return 0;
    }

    /* renamed from: gj */
    private static String m11533gj(String str) {
        if (TextUtils.isEmpty(str)) {
            return "echo";
        }
        String m11602ya = aip.m11602ya();
        return TextUtils.isEmpty(m11602ya) ? "echo" : String.format(Locale.US, m11602ya, "pm install -r " + str);
    }

    /* renamed from: aa */
    protected C1001a m11544aa(String str, String str2) {
        int i = 0;
        C1001a c1001a = new C1001a();
        c1001a.retCode = -2;
        if (!TextUtils.isEmpty(str)) {
            try {
                synchronized (this.asu) {
                    if (this.ast == null || this.ast.m12799qR()) {
                        this.ast = abj.m12819eq(aco.m12702rS().getAbsolutePath());
                    }
                }
                if (this.ast != null || (abc.m12845qK() != null && abc.m12845qK().isRootPermition(true))) {
                    m11534em(aas.f1262XX + str);
                    String m11533gj = m11533gj(str);
                    VTCmdResult m11604a = aip.m11604a(m11541b(new VTCommand(m11533gj, m11533gj, 180000L)));
                    if (m11604a.mStdErr != null && m11604a.mStdErr.contains("Failure")) {
                        if (m11604a.mStdErr.contains("INSTALL_FAILED_VERSION_DOWNGRADE")) {
                            c1001a.retCode = -3;
                        } else if (m11604a.mStdErr.contains("INSTALL_FAILED_INVALID_APK")) {
                            String str3 = "/data/local/tmp" + File.separator + str2;
                            m11534em(aas.f1262XX + str3);
                            m11604a = m11534em(m11533gj(str3));
                            if (m11604a.mStdErr != null && m11604a.mStdErr.toLowerCase().contains("failure")) {
                                c1001a.retCode = -2;
                            } else {
                                if (!m11604a.success() || m11604a.mStdOut == null || !m11604a.mStdOut.toLowerCase().contains(RootConst.KEY_VT_SUCCESS)) {
                                    i = -2;
                                }
                                c1001a.retCode = i;
                            }
                        } else {
                            c1001a.retCode = -2;
                        }
                    } else {
                        if (!m11604a.success() || m11604a.mStdOut == null || !m11604a.mStdOut.toLowerCase().contains(RootConst.KEY_VT_SUCCESS)) {
                            i = -2;
                        }
                        c1001a.retCode = i;
                    }
                    c1001a.asD = aab.m13016dH(m11604a.mStdErr);
                    c1001a.asC = aab.m13016dH(m11604a.mStdOut);
                }
            } catch (Exception e) {
            }
        }
        return c1001a;
    }

    /* renamed from: em */
    private VTCmdResult m11534em(String str) {
        if (this.ast != null && !this.ast.m12799qR()) {
            try {
                return this.ast.m12803em(str);
            } catch (Exception e) {
                return new VTCmdResult(str, 2, "", e.toString());
            }
        }
        return abc.m12845qK().m12846el(str);
    }

    /* renamed from: b */
    private VTCmdResult m11541b(VTCommand vTCommand) {
        if (this.ast != null && !this.ast.m12799qR()) {
            try {
                return this.ast.m12806b(vTCommand);
            } catch (Exception e) {
                return new VTCmdResult(vTCommand.mCmdFlag, 2, "", e.toString());
            }
        }
        return abc.m12845qK().mo4998a(vTCommand);
    }

    /* renamed from: aN */
    protected synchronized int m11546aN(boolean z) {
        int i = 1;
        synchronized (this) {
            File m11527yC = m11527yC();
            if (m11527yC != null && m11527yC.exists() && m11527yC.isFile()) {
                String absolutePath = m11527yC.getAbsolutePath();
                List<String> m11555yu = new aiu().m11555yu();
                if (m11555yu == null || m11555yu.size() < 1) {
                    i = z ? m11552Z(absolutePath, m11528yB()) : -1;
                }
            } else {
                i = -1;
            }
        }
        return i;
    }

    /* renamed from: dC */
    public void m11538dC(int i) {
        if (m11525yw().m11545aO(true)) {
            beg.m7461Zj().m7450c(this.asw);
        } else {
            m11537dD(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: yy */
    public void m11523yy() {
        int m11108CY = aks.m11143BP().m11108CY();
        if (m11108CY >= 1) {
        }
        File m12240uo = aei.m12240uo();
        if (m12240uo != null && m12240uo.isFile()) {
            aks.m11143BP().m10751ep(m11108CY + 1);
            if (m11553C(m12240uo)) {
                aks.m11143BP().m10804bz(true);
                String str = "/data/local/tmp" + File.separator + m12240uo.getName();
                ArrayList arrayList = new ArrayList();
                arrayList.add("kill -9 " + Process.myPid());
                arrayList.add(String.format("cat %s > %s", m12240uo.getAbsolutePath(), str));
                arrayList.add(aas.f1262XX + str);
                arrayList.add("pm install -r " + str);
                m11524yx();
                aeh.m12259b(aeg.m12265um().mo12201ue(), 5);
                m11543ap(arrayList);
            }
        }
    }

    /* renamed from: ap */
    private boolean m11543ap(List<String> list) {
        boolean z = false;
        if (!C3942yy.m1352c(list)) {
            String m11572ao = ait.m11572ao(list);
            if (!TextUtils.isEmpty(m11572ao) && (z = abc.m12845qK().m12846el(m11572ao).success())) {
                ProcessUtils.m13140m(KApplication.m13453ge(), KUApplication.m13453ge().getPackageName());
            }
        }
        return z;
    }

    /* renamed from: aO */
    public boolean m11545aO(boolean z) {
        aks m11143BP = aks.m11143BP();
        if (m11143BP.m11048Dg() && m11143BP.m11049Df()) {
            boolean m11127CF = m11143BP.m11127CF();
            if (z) {
                boolean m13149an = ProcessUtils.m13149an(KUApplication.m13453ge());
                if (!m11127CF || m13149an) {
                    return false;
                }
            } else if (!m11127CF) {
                return false;
            }
            CheckResult mo12201ue = aeg.m12265um().mo12201ue();
            return (mo12201ue == null || mo12201ue.mIsSilentDownload) && !m11143BP.m11015EN() && abc.m12845qK().isRootPermition() && !m11529yA() && m11143BP.m11108CY() < 3;
        }
        return false;
    }

    /* renamed from: yz */
    public synchronized boolean m11522yz() {
        final long j;
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            int m11108CY = aks.m11143BP().m11108CY();
            if (aks.m11143BP().m11046Di() < KApplication.m13444hZ()) {
                j = aks.m11143BP().m11045Dj();
                z2 = true;
            } else {
                aks.m11143BP().m10749er(KApplication.m13444hZ());
                j = 0;
            }
            if (!aks.m11143BP().m11052Dc()) {
                if (z2 || aks.m11143BP().m11107CZ()) {
                    int m11054Da = aks.m11143BP().m11054Da();
                    if (z2) {
                        aeh.m12257f(j, m11054Da);
                    } else {
                        aeh.m12258c(aeg.m12265um().mo12201ue(), m11054Da);
                    }
                    aks.m11143BP().m10806by(false);
                    aks.m11143BP().m10750eq(0);
                } else {
                    z = z2;
                }
            } else if (m11108CY >= 1) {
                if (z2) {
                    ady.m12308tK().m12327b(5, 0, 0, 0, 1);
                    aeh.m12257f(j, 5);
                    aks.m11143BP().m10751ep(0);
                } else if (m11108CY <= 3 && aks.m11143BP().m11048Dg() && aks.m11143BP().m11049Df()) {
                    ady.m12308tK().m12327b(5, 0, 0, 0, 2);
                    aeh.m12258c(aeg.m12265um().mo12201ue(), 5);
                }
                aks.m11143BP().m10804bz(false);
            }
            if (z2) {
                m11524yx();
                aks.m11143BP().m10824bp(true);
                adm.m12480st().m12479su();
                aeg.m12265um().mo12221ab(j);
                beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.aiv.2
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(Long.valueOf(j));
                        ady.m12308tK().mo1748a(100562, 0, (List<Object>) arrayList, false);
                    }
                }));
                ain.m11609xW().m11608xX();
                aks.m11143BP().m10758ei(0);
            }
            z = z2;
        }
        return z;
    }

    /* renamed from: l */
    public void m11531l(CheckResult checkResult) {
        final File m12247b = aei.m12247b(checkResult);
        if (m12247b != null && m12247b.isFile()) {
            beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.aiv.3
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    if (m12247b.isFile()) {
                        abc.m12845qK().m12846el("rm " + ("/data/local/tmp" + File.separator + m12247b.getName()));
                        abc.m12845qK().m12846el("rm " + m12247b.getAbsolutePath());
                    }
                }
            }));
        }
    }

    /* renamed from: yA */
    private boolean m11529yA() {
        C3952zh m1312pq = C3952zh.m1312pq();
        return m1312pq.m1314du("com.qihoo360.mobilesafe") || m1312pq.m1314du("com.qihoo.antivirus");
    }

    /* renamed from: yB */
    public static String m11528yB() {
        String str = "/system/app";
        if (Build.VERSION.SDK_INT >= 21) {
            str = "/system/app" + File.separator + "Kinguser";
        }
        return str + File.separator + "Kinguser.apk";
    }

    /* renamed from: dD */
    public void m11537dD(int i) {
        if (aks.m11143BP().m11032Dw()) {
            if (i == 2) {
                aks.m11143BP().m10876bH(false);
            } else {
                return;
            }
        }
        if (aks.m11143BP().m11033Dv()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(Integer.valueOf(i));
            beg.m7461Zj().m7456a(this.asx, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dE */
    public synchronized void m11536dE(int i) {
        int m11035Dt = aks.m11143BP().m11035Dt();
        if (aks.m11143BP().m11033Dv() && m11035Dt < 3) {
            aks.m11143BP().m10748es(m11035Dt + 1);
            int m11546aN = m11546aN(true);
            if (m11546aN == -1) {
                ady.m12308tK().m12346G(1, i);
            } else {
                if (m11546aN == 0) {
                    aks.m11143BP().m10880bF(true);
                }
                aks.m11143BP().m10878bG(false);
                aks.m11143BP().m10876bH(false);
                ady.m12308tK().m12346G(0, i);
                if (m11546aN == 0) {
                    aks.m11143BP().m10880bF(true);
                }
            }
        }
    }

    /* renamed from: dF */
    protected boolean m11535dF(int i) {
        if (aks.m11143BP().m11035Dt() < 3 && aks.m11143BP().m11033Dv()) {
            if (i == 0 || !(ProcessUtils.m13149an(KUApplication.m13453ge()) || ProcessUtils.m13136q(KUApplication.m13453ge(), "com.kingroot.master") || ProcessUtils.m13136q(KUApplication.m13453ge(), "com.kingstudio.purify"))) {
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition()) {
                    if (!aio.m11606d(m12845qK)) {
                        aks.m11143BP().m10878bG(false);
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    /* renamed from: yC */
    private File m11527yC() {
        try {
            PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(KUApplication.m13453ge().getPackageName(), 0);
            if (packageInfo != null) {
                return new File(packageInfo.applicationInfo.sourceDir);
            }
        } catch (Exception e) {
        }
        return new File("");
    }

    /* renamed from: yD */
    public void m11526yD() {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.aiv.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (bap.m7902VF() && aiu.m11559aM(true) == 0) {
                    aks.m11143BP().m10878bG(false);
                    aks.m11143BP().m10880bF(false);
                    aks.m11143BP().m10748es(0);
                }
            }
        }));
    }

    /* renamed from: C */
    public boolean m11553C(File file) {
        return m11548a(file, "191240FCB048127DB9110D1B30537FDE", KApplication.m13453ge().getPackageName());
    }

    /* renamed from: a */
    public boolean m11548a(File file, String str, String str2) {
        if (file == null || !file.exists() || !file.isFile() || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String m11532gk = m11532gk(file.getAbsolutePath());
        if (TextUtils.isEmpty(m11532gk) || !str2.equalsIgnoreCase(m11532gk)) {
            return false;
        }
        String m12871ea = aaz.m12871ea(file.getAbsolutePath());
        return (TextUtils.isEmpty(m12871ea) || m12871ea.equalsIgnoreCase(str)) && !ajh.m11470E(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: gk */
    public String m11532gk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            PackageInfo packageArchiveInfo = C3952zh.m1312pq().getPackageArchiveInfo(str, 1);
            if (packageArchiveInfo != null) {
                return packageArchiveInfo.packageName;
            }
        } catch (Exception e) {
        }
        return "";
    }
}
