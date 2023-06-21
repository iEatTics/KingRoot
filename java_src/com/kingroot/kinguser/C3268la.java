package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Process;
import android.text.TextUtils;
import com.king.uranus.EnumC0405cg;
import com.king.uranus.UranusException;
import com.king.uranus.daemon.IDaemonService;
import com.king.uranus.daemon.RunningAppProcessInfoLite;
import com.kingroot.kinguser.C3264ky;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.la */
/* loaded from: classes.dex */
public class C3268la implements InterfaceC3157hm {

    /* renamed from: uB */
    private static final C3268la f2989uB = new C3268la();

    /* renamed from: uE */
    private static List<RunningAppProcessInfoLite> f2990uE = new ArrayList();

    /* renamed from: uC */
    private String f2991uC;

    /* renamed from: uD */
    private Set<String> f2992uD = new HashSet();

    /* renamed from: uF */
    private IBinder f2993uF;

    /* renamed from: uG */
    private C3269a f2994uG;

    private C3268la() {
    }

    /* renamed from: dp */
    public static C3268la m3208dp() {
        return f2989uB;
    }

    /* renamed from: bJ */
    public String m3212bJ() {
        return this.f2991uC;
    }

    /* renamed from: dq */
    private IDaemonService m3207dq() {
        if (this.f2993uF != null && this.f2993uF.isBinderAlive()) {
            return IDaemonService.Stub.asInterface(this.f2993uF);
        }
        if (this.f2991uC == null) {
            m3211c(C3183ih.m3497bW());
        }
        this.f2993uF = C3344nf.m2883bH(this.f2991uC);
        return IDaemonService.Stub.asInterface(this.f2993uF);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.la$a */
    /* loaded from: classes.dex */
    public class C3269a implements IBinder.DeathRecipient {
        private C3269a() {
        }

        /* synthetic */ C3269a(C3268la c3268la, C3270lb c3270lb) {
            this();
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ((InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class)).mo3400bb();
            new C3271lc(this).m3081ez();
        }
    }

    /* renamed from: k */
    private int m3200k(boolean z) {
        C3297lz.m3112eq();
        C3334mz m2942eS = C3334mz.m2942eS();
        C3180if m3497bW = C3183ih.m3497bW();
        if (!new File(m3497bW.m3555bD()).exists()) {
            m2942eS.m2940j(67174406, z);
            return 67174406;
        } else if (!new File(m3497bW.m3533bx()).exists()) {
            m2942eS.m2940j(67174405, z);
            return 67174405;
        } else {
            return 0;
        }
    }

    /* renamed from: a */
    private String m3219a(InterfaceC3195it interfaceC3195it, String str) {
        try {
            return new C3230jw(interfaceC3195it).m3354a(C3183ih.m3497bW().getPackageName(), new File(str));
        } catch (FileNotFoundException e) {
            return "";
        }
    }

    /* renamed from: l */
    public synchronized int m3199l(boolean z) {
        int m3200k;
        if (isAlive()) {
            m3215a(z, false);
            m3206dr();
            m3200k = 67108864;
        } else {
            C3334mz m2942eS = C3334mz.m2942eS();
            m3200k = m3200k(z);
            if (m3200k != 0) {
                m2942eS.m2940j(m3200k, z);
            } else {
                InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
                if (!interfaceC3195it.mo3126h(true)) {
                    m2942eS.m2940j(67108865, z);
                    m3200k = 67108865;
                } else {
                    C3180if m3497bW = C3183ih.m3497bW();
                    String m3219a = m3219a(interfaceC3195it, m3497bW.m3533bx());
                    if (TextUtils.isEmpty(m3219a)) {
                        m2942eS.m2940j(67108868, z);
                        m3200k = 67108868;
                    } else {
                        String m3219a2 = m3219a(interfaceC3195it, m3497bW.m3555bD());
                        if (TextUtils.isEmpty(m3219a2)) {
                            m2942eS.m2940j(67108869, z);
                            m3200k = 67108869;
                        } else {
                            C3371oa.m2778a(new C3270lb(this, interfaceC3195it), new C3264ky.C3265a(m3219a).m3229aV(m3219a2).m3228aW(m3497bW.m3553bF() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m3497bW.m3550bI()).m3227aX(this.f2991uC).m3226aY(C3276lh.getName()).m3222do());
                            if (m3205ds()) {
                                m3215a(z, true);
                                m3206dr();
                                m3200k = 67108864;
                            } else {
                                m2942eS.m2940j(67174403, z);
                                m3200k = 67174403;
                            }
                        }
                    }
                }
            }
        }
        return m3200k;
    }

    /* renamed from: a */
    private void m3220a(IDaemonService iDaemonService) {
        try {
            iDaemonService.close(true);
        } catch (Throwable th) {
        }
    }

    /* renamed from: aZ */
    private void m3214aZ(String str) {
        for (int i = 1; i < C3371oa.getVersion(); i++) {
            IBinder m2883bH = C3344nf.m2883bH(str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i);
            if (m2883bH != null) {
                m3220a(IDaemonService.Stub.asInterface(m2883bH));
            }
        }
    }

    /* renamed from: dr */
    private void m3206dr() {
        IDaemonService m3207dq = m3207dq();
        try {
            m3207dq.asBinder().unlinkToDeath(this.f2994uG, 0);
        } catch (Throwable th) {
        }
        try {
            this.f2994uG = new C3269a(this, null);
            m3207dq.asBinder().linkToDeath(this.f2994uG, 0);
        } catch (Throwable th2) {
        }
    }

    /* renamed from: a */
    private void m3215a(boolean z, boolean z2) {
        int i;
        C3180if m3497bW = C3183ih.m3497bW();
        String m3553bF = m3497bW.m3553bF();
        String str = "/data/system/.uranusDaemon/" + m3553bF + File.separator + "statistic";
        String str2 = "/data/system/.uranusDaemon/" + m3553bF + File.separator + "crash";
        m3202e(str, EnumC0405cg.EMID_KingCommon_Uranus_Load_Module_Result.f266id);
        m3217a(new C3273le(str));
        m3218a(new C3272ld(str2));
        m3204dt();
        m3203du();
        setDropboxMonitorStrategy("/data/system/.uranusDaemon/" + m3553bF + File.separator + "dropbox");
        if (!m3497bW.m3538bU()) {
            i = 67108873;
        } else {
            i = m3209d(m3497bW);
        }
        if (z2) {
            C3334mz.m2942eS().m2949a(isAlive() ? 0 : 67108870, z, i);
        }
    }

    /* renamed from: ds */
    private boolean m3205ds() {
        for (int i = 0; i < 100; i++) {
            if (isAlive()) {
                return true;
            }
            try {
                Thread.sleep(50L);
            } catch (InterruptedException e) {
            }
        }
        return false;
    }

    @Override // com.kingroot.kinguser.InterfaceC3157hm
    /* renamed from: a */
    public synchronized int mo3216a(String str, String str2, String str3, Bundle bundle) {
        int m3213b;
        C3334mz m2942eS = C3334mz.m2942eS();
        String m2943bD = m2942eS.m2943bD(str);
        m3213b = m3213b(str, str2, str3, bundle);
        m2942eS.m2945a(m2943bD, str, m3213b);
        return m3213b;
    }

    /* renamed from: b */
    private int m3213b(String str, String str2, String str3, Bundle bundle) {
        if (m3199l(true) != 67108864) {
            return 67174404;
        }
        Bundle m2780c = C3369nz.m2780c(str, str2, str3, bundle);
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (!interfaceC3195it.mo3126h(true)) {
            return 67108865;
        }
        interfaceC3195it.mo3131aC("chmod 777 " + str);
        int loadDexMod = loadDexMod(m2780c);
        if (loadDexMod != 0) {
        }
        return loadDexMod;
    }

    public int setSpecialProcessCrashStrategy(String str, long j) {
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            m3207dq.setSpecialProcessCrashStrategy(str, j);
            return 0;
        } catch (Throwable th) {
            return 67108867;
        }
    }

    public int queryProcessCrashType(String str) {
        try {
            return m3207dq().queryProcessCrashType(str);
        } catch (Throwable th) {
            return 0;
        }
    }

    /* renamed from: e */
    private int m3202e(String str, int i) {
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            return m3207dq.setSpecialStatisticStrategy(str, i);
        } catch (Throwable th) {
            return 67108867;
        }
    }

    /* renamed from: a */
    private int m3217a(InterfaceC3364nv interfaceC3364nv) {
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            return m3207dq.setStatisticReportStrategy(C3371oa.m2773b(interfaceC3364nv));
        } catch (Throwable th) {
            return 67108867;
        }
    }

    private int setDropboxMonitorStrategy(String str) {
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            return m3207dq.setDropboxMonitorStrategy(str);
        } catch (Throwable th) {
            return 67108867;
        }
    }

    /* renamed from: a */
    private int m3218a(InterfaceC3361ns interfaceC3361ns) {
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            return m3207dq.setCrashReportStrategy(C3371oa.m2775b(interfaceC3361ns));
        } catch (Throwable th) {
            return 67108867;
        }
    }

    /* renamed from: dt */
    private int m3204dt() {
        C3180if m3497bW = C3183ih.m3497bW();
        ArrayList arrayList = new ArrayList();
        String m3531bz = m3497bW.m3531bz();
        arrayList.add(m3531bz.substring(m3531bz.lastIndexOf(File.separator) + 1, m3531bz.length()));
        String m3557bB = m3497bW.m3557bB();
        arrayList.add(m3557bB.substring(m3557bB.lastIndexOf(File.separator) + 1, m3557bB.length()));
        arrayList.add("com.king.uranus.zgo");
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            m3207dq.addFrameworkCrashKeywords(arrayList);
            return 0;
        } catch (Throwable th) {
            return 67108867;
        }
    }

    /* renamed from: du */
    private int m3203du() {
        if (this.f2992uD.size() == 0) {
            return 0;
        }
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            m3207dq.addDeveloperCrashKeywords(new ArrayList(this.f2992uD));
            return 0;
        } catch (Throwable th) {
            return 67108867;
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3157hm
    /* renamed from: h */
    public int mo3201h(List<String> list) {
        boolean z;
        Iterator<String> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            if (!this.f2992uD.contains(it.next())) {
                z = false;
                break;
            }
        }
        if (z) {
            return 0;
        }
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            if (m3207dq.addDeveloperCrashKeywords(list) == 0) {
                this.f2992uD.addAll(list);
            }
            return 0;
        } catch (Throwable th) {
            return 67108867;
        }
    }

    /* renamed from: c */
    private void m3211c(C3180if c3180if) {
        this.f2991uC = c3180if.m3553bF() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + c3180if.m3551bH() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + c3180if.m3549bJ() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + C3371oa.getVersion();
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            m3214aZ(c3180if.m3553bF() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + c3180if.m3551bH() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + c3180if.m3549bJ());
            return;
        }
        int i = -1;
        try {
            i = m3207dq.getVersion();
        } catch (Throwable th) {
        }
        if (i != C3371oa.getVersion()) {
            m3220a(m3207dq);
            this.f2991uC = c3180if.m3553bF() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + c3180if.m3551bH() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + c3180if.m3549bJ() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + C3371oa.getVersion();
            this.f2993uF = null;
        }
    }

    public boolean isAlive() {
        IDaemonService m3207dq = m3207dq();
        return m3207dq != null && m3207dq.asBinder().isBinderAlive();
    }

    @Override // com.kingroot.kinguser.InterfaceC3157hm
    public IBinder getDaemonService(String str) {
        try {
            return m3207dq().getDaemonService(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3157hm
    public List<InterfaceC3148hd> runCommands(List<String> list) {
        if (!isAlive()) {
            m3199l(true);
        }
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            throw new UranusException(67108866, "start daemon failed");
        }
        try {
            return C3263kx.m3231o(m3207dq.runCommands(list));
        } catch (Throwable th) {
            throw new UranusException(67108867, "remote service exception");
        }
    }

    public List<RunningAppProcessInfoLite> getRunningAppProcesses() {
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return f2990uE;
        }
        try {
            return m3207dq.getRunningAppProcesses();
        } catch (Throwable th) {
            return f2990uE;
        }
    }

    public int loadDexMod(Bundle bundle) {
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            int loadDexMod = m3207dq.loadDexMod(bundle);
            if (loadDexMod != 0) {
                return loadDexMod + 67174400;
            }
            return loadDexMod;
        } catch (Throwable th) {
            m3210c(th);
            return 67108867;
        }
    }

    /* renamed from: c */
    public int m3210c(Throwable th) {
        String str;
        StringWriter stringWriter = new StringWriter();
        stringWriter.append((CharSequence) "FATAL EXCEPTION: ");
        stringWriter.append((CharSequence) Thread.currentThread().getName());
        stringWriter.append((CharSequence) "\n");
        th.printStackTrace(new PrintWriter(stringWriter));
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) C3183ih.getContext().getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.pid == Process.myPid()) {
                        str = runningAppProcessInfo.processName;
                        break;
                    }
                }
            }
            str = "unknow";
        } catch (Throwable th2) {
            str = "unknow";
        }
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108866;
        }
        try {
            m3207dq.reportCatchedCrash(str, stringWriter.toString());
            return 0;
        } catch (Throwable th3) {
            return 67108867;
        }
    }

    /* renamed from: d */
    private int m3209d(C3180if c3180if) {
        C3366nx m2784fq = C3366nx.m2798fp().m2795aw(40).m2791bT("096CE82CAD7A6725").m2792bS(C3259ku.m3239aS(c3180if.getPackageName())).m2790bU(c3180if.m3544bO()).m2781o(false).m2796av(44).m2793bR("1.6.1").m2789bV("/data/system/.uranusDaemon/" + c3180if.m3553bF() + File.separator + "cloud").m2784fq();
        IDaemonService m3207dq = m3207dq();
        if (m3207dq == null) {
            return 67108871;
        }
        try {
            return m3207dq.initShark(m2784fq.m2799fo());
        } catch (Throwable th) {
            return 67108872;
        }
    }
}
