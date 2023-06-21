package com.kingroot.master.app;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Process;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.Log;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.AbstractC3520ri;
import com.kingroot.kinguser.C3521rj;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.aab;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.afr;
import com.kingroot.kinguser.aii;
import com.kingroot.kinguser.ail;
import com.kingroot.kinguser.aiq;
import com.kingroot.kinguser.aiu;
import com.kingroot.kinguser.akh;
import com.kingroot.kinguser.akv;
import com.kingroot.kinguser.apw;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bky;
import com.kingroot.kinguser.blb;
import com.kingroot.kinguser.bld;
import com.kingroot.kinguser.blf;
import java.io.File;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class KUApplication extends KApplication {
    private static final bed bzx = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.master.app.KUApplication.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() > 0) {
                Object obj = mo7445nF.get(0);
                if (obj instanceof Integer) {
                    try {
                        ady.m12308tK().m12345H(((Integer) obj).intValue(), new File(new String(aab.m13014dJ("2F73797374656D2F62696E2F33363073"))).exists() ? 0 : 1);
                    } catch (Exception e) {
                    }
                    try {
                        KUApplication.aeU();
                    } catch (Exception e2) {
                    }
                }
            }
            ail.m11618xT().m11622dA(2);
            System.exit(-1);
        }
    });
    private static final bed bzy = new bed(bem.MEDIUM, bec.Normal, true, new bek() { // from class: com.kingroot.master.app.KUApplication.2
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            try {
                KUApplication.aeU();
            } catch (Exception e) {
            }
        }
    });

    @Override // com.kingroot.common.app.KApplication, android.app.Application
    public void onCreate() {
        try {
            Thread.setDefaultUncaughtExceptionHandler(new C4012b());
        } catch (Throwable th) {
        }
        C3521rj.m2461u("191240FCB048127DB9110D1B30537FDE", "7CC749CFC0FB5677E6ABA342EDBDBA5A");
        apw.m9704LR();
        super.onCreate();
        afr.m12030vq();
        akh.m11296At();
    }

    @Override // com.kingroot.common.app.KApplication
    /* renamed from: iu */
    public KApplication.AbstractC0494b mo1209iu() {
        C4011a c4011a = new C4011a();
        c4011a.m13414k(2, "com.kingroot.kingusesr.mpstorage");
        c4011a.m13422cl("com.kingroot.kingusesr.taskprovider");
        return c4011a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.app.KApplication
    /* renamed from: it */
    public AbstractC3520ri mo1210it() {
        String aY = m13455aY();
        AbstractC3520ri abstractC3520ri = null;
        if (aY != null) {
            if (aY.endsWith(":service")) {
                abstractC3520ri = new bld();
            } else if (aY.endsWith(":task")) {
                abstractC3520ri = new blf();
            } else if (aY.equals(getPackageName())) {
                abstractC3520ri = new blb();
            }
        }
        if (abstractC3520ri == null) {
            return new bky();
        }
        return abstractC3520ri;
    }

    /* renamed from: com.kingroot.master.app.KUApplication$a */
    /* loaded from: classes.dex */
    class C4011a extends KApplication.AbstractC0494b {
        public C4011a() {
            super(17, "EP_KingUser", 640, "30F06D5DF23EAE66", aiq.f1456xV, "http://pmir.3g.qq.com", "", false, 0, 0, false);
        }

        @Override // com.kingroot.common.app.KApplication.AbstractC0494b
        public String getChannel() {
            return aii.m11642xL().getChannel();
        }

        @Override // com.kingroot.common.app.KApplication.AbstractC0494b
        /* renamed from: ix */
        public int mo1207ix() {
            return aiu.m11554yv();
        }
    }

    /* renamed from: com.kingroot.master.app.KUApplication$b */
    /* loaded from: classes.dex */
    static class C4012b implements Thread.UncaughtExceptionHandler {
        private C4012b() {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            int i = 1;
            try {
                StringBuilder sb = new StringBuilder();
                sb.append("FATAL EXCEPTION: ").append(thread.getName()).append("\n");
                String m13455aY = KApplication.m13455aY();
                sb.append("Process: ").append(m13455aY).append(", ");
                sb.append("PID: ").append(Process.myPid());
                Log.e("AndroidRuntime", sb.toString(), th);
                m1206h(th);
                if (m13455aY == null || !m13455aY.endsWith(":service")) {
                    i = 0;
                }
                beg.m7461Zj().m7454a(KUApplication.bzx, Integer.valueOf(i));
            } catch (Throwable th2) {
                Process.killProcess(Process.myPid());
                System.exit(10);
            }
        }

        /* renamed from: h */
        private void m1206h(Throwable th) {
            ClassLoader parent = C4012b.class.getClassLoader().getParent();
            try {
                StackTraceElement[] stackTrace = th.getStackTrace();
                if (stackTrace != null) {
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        if (stackTraceElement != null) {
                            String className = stackTraceElement.getClassName();
                            Class<?> cls = null;
                            try {
                                cls = parent.loadClass(className);
                            } catch (ClassNotFoundException e) {
                            }
                            if (cls == null) {
                                if (className.startsWith("com.kingroot.loader.")) {
                                    akv.m10705Gp().m10700Gu();
                                    return;
                                }
                                return;
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
            }
        }
    }

    public static void aeT() {
        beg.m7461Zj().m7450c(bzy);
    }

    public static void aeU() {
        try {
            File filesDir = m13453ge().getFilesDir();
            File file = new File(filesDir.getParentFile(), "databases");
            File file2 = new File(filesDir.getParentFile(), "applib");
            if (filesDir.exists() && file.exists()) {
                if (file2.exists()) {
                    return;
                }
            }
        } catch (Throwable th) {
        }
        aeV();
    }

    public static void aeV() {
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            ArrayList arrayList = new ArrayList(15);
            String str = new String(aab.m13014dJ("28726573756C743D607073207C206772657020726F6F74207C206772657020656D6461656D6F6E603B206172723D2824726573756C74293B206B696C6C202D3920247B6172725B315D7D29"));
            arrayList.add(str);
            arrayList.add(str);
            String str2 = new String(aab.m13014dJ("28726573756C743D607073207C206772657020726F6F74207C206772657020333630736775617264603B206172723D2824726573756C74293B206B696C6C202D3920247B6172725B315D7D3B206B696C6C202D3920247B6172725B31305D7D29"));
            arrayList.add(str2);
            arrayList.add(str2);
            ArrayList arrayList2 = new ArrayList(2);
            arrayList2.add(new String(aab.m13014dJ("656D6461656D6F6E")));
            arrayList2.add(new String(aab.m13014dJ("333630736775617264")));
            arrayList2.add(new String(aab.m13014dJ("2F73797374656D2F62696E2F33363073")));
            List<ProcessUtils.ProcessInfo> m13134qJ = ProcessUtils.m13134qJ();
            if (!C3942yy.m1352c(m13134qJ)) {
                for (ProcessUtils.ProcessInfo processInfo : m13134qJ) {
                    if (processInfo.ppid != 2 && processInfo.uid == 0 && !TextUtils.isEmpty(processInfo.name) && arrayList2.contains(processInfo.name.trim())) {
                        arrayList.add("kill -9 " + processInfo.pid);
                    }
                }
            }
            String str3 = new String(aab.m13014dJ("2F73797374656D2F62696E2F33363073"));
            File file = new File(str3);
            if (file.exists() && file.canExecute()) {
                arrayList.add(aas.f1256XR);
                arrayList.add("chmod 0644 " + str3);
            }
            m12845qK.runRootCommands(arrayList);
        }
    }

    public static boolean aeW() {
        return new File(new String(aab.m13014dJ("2F73797374656D2F62696E2F33363073"))).exists();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public ComponentName startService(Intent intent) {
        boolean ih;
        if (intent != null && "com.coloros.safe.service.framework".equals(intent.getPackage())) {
            return null;
        }
        try {
            return super.startService(intent);
        } finally {
            if (ih) {
            }
        }
    }
}
