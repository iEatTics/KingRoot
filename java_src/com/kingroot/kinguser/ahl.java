package com.kingroot.kinguser;

import android.content.Intent;
import android.os.Environment;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.C3171hz;
import com.kingroot.kinguser.C3959zm;
import com.kingroot.kinguser.C3966zn;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.p015ai.KAntiInjectClientManagerService;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectClientManager;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.util.protect.RebootStat;
import com.kingroot.master.app.KUApplication;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ahl extends AbstractC3667tu<IAntiInjectClientManager> {
    private static volatile ahl aqg;
    private static String TAG = "anti_inject_AntiInjectClientManager";
    private static final AtomicBoolean aqh = new AtomicBoolean(false);

    /* renamed from: xi */
    private static String m11729xi() {
        return Environment.getDataDirectory().getAbsolutePath() + File.separator + "data-lib" + File.separator + akf.m11306An() + File.separator + "libai.so";
    }

    /* renamed from: xj */
    private static String m11728xj() {
        return Environment.getDataDirectory().getAbsolutePath() + File.separator + "data-lib" + File.separator + akf.m11306An() + File.separator + "libai.arm64.so";
    }

    /* renamed from: fQ */
    public static String m11733fQ(String str) {
        return C3958zl.m1295pw().getAbsolutePath() + File.separator + str;
    }

    /* renamed from: xk */
    public static boolean m11727xk() {
        String m11728xj = abd.m12840qO() ? m11728xj() : m11729xi();
        synchronized (aqh) {
            if (aqh.get()) {
                return true;
            }
            if (!new File(m11728xj).exists()) {
                return false;
            }
            try {
                System.load(m11728xj);
                aqh.set(true);
            } catch (Throwable th) {
                try {
                    System.load(m11728xj);
                    aqh.set(true);
                } catch (Throwable th2) {
                }
            }
            return aqh.get();
        }
    }

    /* renamed from: xl */
    public static boolean m11726xl() {
        return m11731n("libai.so", "libai.so", m11729xi()) && m11731n("libai.so.arm64", "libai.arm64.so", m11728xj());
    }

    /* renamed from: n */
    private static boolean m11731n(String str, String str2, String str3) {
        int i;
        String m11733fQ = m11733fQ(str2);
        File file = new File(m11733fQ);
        C3959zm.m1293a(new C3959zm.C3962a(m11733fQ, str, 0));
        if (file.exists()) {
            if (!new File(str3).exists()) {
                i = 15;
            } else if (C3966zn.m1279H(m11733fQ, str3) == 0) {
                C3966zn.C3968a c3968a = new C3966zn.C3968a();
                c3968a.f4097WN = 0;
                c3968a.f4098WO = 0;
                c3968a.mode = FileUtils.FileMode.MODE_755;
                c3968a.f4099WP = "u:object_r:system_file:s0";
                i = 0 | C3966zn.m1277a(str3, c3968a);
            } else {
                i = 15;
            }
            if (i != 0) {
                return aau.m12934b(m11733fQ, str3, i);
            }
            return true;
        }
        return false;
    }

    /* renamed from: o */
    public static void m11730o(int i, boolean z) {
        C3180if m3521bV;
        if (z) {
            C3171hz.C3172a m3585br = C3171hz.m3585br();
            switch (i) {
                case 1:
                    m3585br.m3581at("asset://libgothook.so").m3583ar("explode").m3582as("hello");
                    break;
                default:
                    m3585br.m3581at(m11729xi()).m3583ar("start").m3582as("hello").m3580au(m11728xj());
                    break;
            }
            m3521bV = C3180if.m3530n(KUApplication.m13453ge()).m3525ay("kr").m3524az(aav.m12929ae(KUApplication.m13453ge())).m3527a(m3585br.m3578bs()).m3514g(bfw.aaS().abf()).m3528a(new InterfaceC3154hj() { // from class: com.kingroot.kinguser.ahl.2
                @Override // com.kingroot.kinguser.InterfaceC3154hj
                /* renamed from: am */
                public String mo3612am(String str) {
                    VTCmdResult m12846el = abc.m12845qK().m12846el(str);
                    if (m12846el.success()) {
                        return m12846el.mStdOut;
                    }
                    return null;
                }
            }).m3529a(new InterfaceC3149he() { // from class: com.kingroot.kinguser.ahl.1
                @Override // com.kingroot.kinguser.InterfaceC3149he
                /* renamed from: a */
                public void mo3614a(String str, InterfaceC3145ha interfaceC3145ha) {
                    boolean z2 = interfaceC3145ha.mo3339aJ() == 0;
                    boolean z3 = SystemClock.elapsedRealtime() < 120000;
                    if ("zygote".equals(str)) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(z3 ? "1" : "0");
                        Set<String> m7258ld = bfn.m7258ld("zygote");
                        if (m7258ld.size() <= 0) {
                            arrayList.add("0");
                            arrayList.add("");
                        } else {
                            StringBuilder sb = new StringBuilder();
                            for (String str2 : m7258ld) {
                                sb.append(str2).append(";");
                            }
                            sb.deleteCharAt(sb.length() - 1);
                            arrayList.add("1");
                            arrayList.add(sb.toString());
                        }
                        if (z2) {
                            arrayList.add("");
                        } else {
                            arrayList.add(interfaceC3145ha.mo3337aL());
                        }
                        ahk.m11738g(z2 ? 0 : 1, arrayList);
                    } else if (!"system_server".equals(str) && !z2) {
                        int lastIndexOf = str.lastIndexOf(58);
                        if (lastIndexOf != -1) {
                            str = str.substring(0, lastIndexOf);
                        }
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(z3 ? "1" : "0");
                        arrayList2.add(str);
                        ahk.m11741am(arrayList2);
                    }
                }
            }).m3521bV();
        } else {
            m3521bV = C3180if.m3530n(KUApplication.m13453ge()).m3525ay("kr").m3521bV();
        }
        C3183ih.m3503a(m3521bV);
    }

    /* renamed from: xm */
    public static ahl m11725xm() {
        if (aqg == null) {
            synchronized (ahl.class) {
                if (aqg == null) {
                    aqg = new ahl();
                }
            }
        }
        return aqg;
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jU */
    protected int mo2011jU() {
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: xn */
    public IAntiInjectClientManager mo2010jV() {
        return KAntiInjectClientManagerService.m11700xf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: j */
    public IAntiInjectClientManager mo2013d(IBinder iBinder) {
        return IAntiInjectClientManager.Stub.asInterface(iBinder);
    }

    @Override // com.kingroot.kinguser.AbstractC3667tu
    /* renamed from: jW */
    protected Intent mo2009jW() {
        return new Intent(KUApplication.m13453ge(), KAntiInjectClientManagerService.class);
    }

    /* renamed from: a */
    public void m11734a(boolean z, IAntiInjectSwitcherOpObserver iAntiInjectSwitcherOpObserver) {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                jX.setSwitcher(z, iAntiInjectSwitcherOpObserver);
            }
        } catch (RemoteException e) {
        }
    }

    public void addProtectedPackages(List<String> list) {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                jX.addProtectedPackages(list);
            }
        } catch (RemoteException e) {
        }
    }

    public void removeProtectedPackages(List<String> list) {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                jX.removeProtectedPackages(list);
            }
        } catch (RemoteException e) {
        }
    }

    /* renamed from: xo */
    public boolean m11723xo() {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                return jX.getSwitcher();
            }
        } catch (RemoteException e) {
        }
        return false;
    }

    public List<AntiInjectLogModel> getAllLogs() {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                return jX.getAllLogs();
            }
        } catch (RemoteException e) {
        }
        return new ArrayList();
    }

    public RebootStat getRebootStat() {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                return jX.getRebootStat();
            }
        } catch (RemoteException e) {
        }
        return null;
    }

    public void registerClient() {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                jX.registerClient();
            }
        } catch (RemoteException e) {
        }
    }

    public void syncListWithDaemon() {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                jX.syncListWithDaemon();
            }
        } catch (RemoteException e) {
        }
    }

    public void notifyManuallyReboot() {
        try {
            IAntiInjectClientManager jX = m2124jX();
            if (jX != null) {
                jX.notifyManuallyReboot();
            }
        } catch (RemoteException e) {
        }
    }
}
