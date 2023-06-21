package com.kingroot.common.app;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Process;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.kinguser.AbstractC3520ri;
import com.kingroot.kinguser.AbstractC3793vo;
import com.kingroot.kinguser.C3671tw;
import com.kingroot.kinguser.C3940yw;
import com.kingroot.kinguser.C3951zg;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3979zv;
import com.kingroot.kinguser.InterfaceC3519rh;
import com.kingroot.kinguser.InterfaceC3950zf;
import com.kingroot.kinguser.aab;
import com.kingroot.kinguser.abs;
import com.kingroot.kinguser.cbw;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public abstract class KApplication extends Application {

    /* renamed from: FA */
    private static AbstractC0494b f753FA;

    /* renamed from: Fx */
    private static Context f754Fx;

    /* renamed from: Fy */
    private static Context f755Fy;

    /* renamed from: Fz */
    private static AbstractC3520ri f756Fz;
    private static String mProcessName;

    /* renamed from: iu */
    public abstract AbstractC0494b mo1209iu();

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        f754Fx = context;
        f753FA = mo1209iu();
    }

    @Override // android.app.Application
    public void onCreate() {
        try {
            super.onCreate();
            C3940yw.m1357pe();
            m13452hR();
            C3671tw.m2097ka();
            C3951zg.m1317g(f753FA.f763FH);
            m13451hS();
            if (f756Fz != null) {
                f756Fz.onCreate();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: hR */
    private void m13452hR() {
        f755Fy = getApplicationContext();
        mProcessName = ProcessUtils.m13147cd(Process.myPid());
        if (f753FA == null) {
            System.exit(0);
            return;
        }
        f756Fz = mo1210it();
        if (f756Fz == null) {
            f756Fz = new C0492a();
        }
        C3951zg.m1320d(f753FA.f764FI, f756Fz.mo2467iw());
    }

    /* renamed from: hS */
    private void m13451hS() {
        if (f756Fz != null) {
            f756Fz.mo2466iy();
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        if (f756Fz != null) {
            f756Fz.onTerminate();
        }
        super.onTerminate();
    }

    /* renamed from: aY */
    public static String m13455aY() {
        if (TextUtils.isEmpty(mProcessName)) {
            mProcessName = ProcessUtils.m13147cd(Process.myPid());
        }
        return aab.m13016dH(mProcessName);
    }

    /* renamed from: ge */
    public static Context m13453ge() {
        return f755Fy == null ? f754Fx : f755Fy;
    }

    /* renamed from: hT */
    public static int m13450hT() {
        if (f756Fz != null) {
            return f756Fz.mo2467iw();
        }
        return -1;
    }

    /* renamed from: hU */
    public static InterfaceC3519rh m13449hU() {
        if (f756Fz != null) {
            return f756Fz.mo2468iv();
        }
        return null;
    }

    /* renamed from: hV */
    public static InterfaceC3519rh m13448hV() {
        if (f756Fz != null) {
            return f756Fz.mo2474hV();
        }
        return null;
    }

    /* renamed from: hW */
    public static cbw m13447hW() {
        if (f756Fz != null) {
            return f756Fz.mo2473hW();
        }
        return null;
    }

    /* renamed from: a */
    public static void m13456a(Throwable th, String str, byte[] bArr) {
        if (f756Fz != null) {
            f756Fz.mo2475a(th, str, bArr);
        }
    }

    /* renamed from: hX */
    public static InterfaceC3950zf m13446hX() {
        if (f756Fz == null) {
            return null;
        }
        try {
            return f756Fz.mo2472hX();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: hY */
    public static int m13445hY() {
        return f753FA.f759FD;
    }

    /* renamed from: hZ */
    public static int m13444hZ() {
        return f753FA.f761FF;
    }

    /* renamed from: ia */
    public static String m13443ia() {
        return f753FA.f762FG;
    }

    /* renamed from: ib */
    public static String m13442ib() {
        return f753FA.getChannel();
    }

    /* renamed from: ic */
    public static int m13441ic() {
        if (f753FA == null) {
            return 0;
        }
        return f753FA.mo1207ix();
    }

    /* renamed from: ie */
    public static String m13440ie() {
        return f753FA.f766FK;
    }

    /* renamed from: dG */
    public static String m13454dG() {
        return f753FA.mVersionName;
    }

    /* renamed from: if */
    public static AbstractC3793vo m13439if() {
        return f756Fz.mo2471if();
    }

    /* renamed from: ig */
    public static C3979zv m13438ig() {
        return f756Fz.mo2470ig();
    }

    /* renamed from: ih */
    public static boolean m13437ih() {
        return f753FA.f764FI;
    }

    /* renamed from: ii */
    public static String m13436ii() {
        return f753FA.mVersionName;
    }

    /* renamed from: ij */
    public static String m13435ij() {
        return f753FA.f767FL;
    }

    /* renamed from: ik */
    public static int m13434ik() {
        try {
            return Integer.parseInt(f753FA.f767FL);
        } catch (Exception e) {
            return 1;
        }
    }

    /* renamed from: il */
    public static int m13433il() {
        return f753FA.f769FN;
    }

    /* renamed from: im */
    public static int m13432im() {
        return f753FA.f770FO;
    }

    /* renamed from: in */
    public static String m13431in() {
        return f753FA.f768FM;
    }

    /* renamed from: io */
    public static String m13430io() {
        return f753FA.mVersionName + "." + f753FA.f761FF + " " + f753FA.f767FL + ("".equals(f753FA.f768FM) ? "" : " " + f753FA.f768FM);
    }

    /* renamed from: ip */
    public static String m13429ip() {
        return f753FA.f772FQ.f774FS;
    }

    /* renamed from: iq */
    public static String m13428iq() {
        return f753FA.f771FP;
    }

    /* renamed from: ir */
    public static abs m13427ir() {
        if (f756Fz != null) {
            return f756Fz.mo2469ir();
        }
        return null;
    }

    /* renamed from: is */
    public static boolean m13426is() {
        return f753FA.f765FJ;
    }

    /* renamed from: it */
    public AbstractC3520ri mo1210it() {
        return null;
    }

    /* renamed from: com.kingroot.common.app.KApplication$b */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0494b {

        /* renamed from: FD */
        private int f759FD;

        /* renamed from: FE */
        public String f760FE;

        /* renamed from: FF */
        private int f761FF;

        /* renamed from: FG */
        private String f762FG;

        /* renamed from: FH */
        private String[] f763FH;

        /* renamed from: FI */
        private boolean f764FI;

        /* renamed from: FJ */
        private boolean f765FJ;

        /* renamed from: FK */
        private String f766FK;

        /* renamed from: FL */
        private String f767FL;

        /* renamed from: FM */
        private String f768FM;

        /* renamed from: FN */
        private int f769FN;

        /* renamed from: FO */
        private int f770FO;

        /* renamed from: FP */
        private String f771FP = "";

        /* renamed from: FQ */
        private C0495c f772FQ = new C0495c();
        private String mVersionName;

        public abstract String getChannel();

        /* renamed from: ix */
        public abstract int mo1207ix();

        public AbstractC0494b(int i, String str, int i2, String str2, String[] strArr, String str3, String str4, boolean z, int i3, int i4, boolean z2) {
            this.f759FD = 0;
            this.f761FF = 0;
            this.f762FG = "";
            this.f763FH = null;
            this.f764FI = false;
            this.f765FJ = false;
            this.f766FK = "";
            this.mVersionName = "";
            this.f767FL = "1";
            this.f768FM = "";
            this.f769FN = -1;
            this.f770FO = -1;
            this.f759FD = i;
            this.f760FE = str;
            this.f761FF = i2;
            this.f762FG = aab.m13016dH(str2);
            if (strArr != null) {
                this.f763FH = (String[]) Arrays.copyOf(strArr, strArr.length);
            }
            this.f766FK = str3 == null ? "" : str3;
            this.f764FI = z;
            this.f768FM = str4;
            this.f769FN = i3;
            this.f770FO = i4;
            this.f765FJ = z2;
            try {
                PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(KApplication.m13453ge().getPackageName(), 0);
                this.mVersionName = packageInfo.versionName;
                this.f767FL = String.valueOf(packageInfo.versionCode);
            } catch (Exception e) {
                this.mVersionName = "1.0.0";
                this.f767FL = "1";
            }
        }

        /* renamed from: k */
        public void m13414k(int i, @NonNull String str) {
            this.f772FQ.m13407l(i, str);
        }

        /* renamed from: cl */
        public void m13422cl(@NonNull String str) {
            this.f771FP = aab.m13016dH(str);
        }
    }

    /* renamed from: com.kingroot.common.app.KApplication$c */
    /* loaded from: classes.dex */
    static class C0495c {

        /* renamed from: FR */
        private int f773FR = 0;

        /* renamed from: FS */
        private String f774FS = "";

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public void m13407l(int i, String str) {
            this.f773FR = i;
            if (!TextUtils.isEmpty(str)) {
                this.f774FS = str;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.common.app.KApplication$a */
    /* loaded from: classes.dex */
    public static class C0492a extends AbstractC3520ri {

        /* renamed from: FB */
        private cbw f757FB;

        private C0492a() {
            this.f757FB = new cbw() { // from class: com.kingroot.common.app.KApplication.a.1
                @Override // com.kingroot.kinguser.cbw
                public void closeShell() {
                }

                @Override // com.kingroot.kinguser.cbw
                public boolean isRootPermition(boolean z) {
                    return false;
                }

                @Override // com.kingroot.kinguser.cbw
                public boolean isRootPermitionInBackupSu() {
                    return false;
                }

                @Override // com.kingroot.kinguser.cbw
                public List<VTCmdResult> runRootCommands(List<String> list) {
                    return null;
                }

                @Override // com.kingroot.kinguser.cbw
                /* renamed from: a */
                public void mo4997a(cbw.InterfaceC2700a interfaceC2700a) {
                }

                @Override // com.kingroot.kinguser.cbw
                /* renamed from: a */
                public VTCmdResult mo4998a(VTCommand vTCommand) {
                    return null;
                }

                @Override // com.kingroot.kinguser.cbw
                /* renamed from: e */
                public List<VTCmdResult> mo4996e(List<String> list, boolean z) {
                    return null;
                }

                @Override // com.kingroot.kinguser.cbw
                /* renamed from: q */
                public List<VTCmdResult> mo4995q(List<VTCommand> list) {
                    return null;
                }
            };
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        public void onCreate() {
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        public void onTerminate() {
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: iv */
        public InterfaceC3519rh mo2468iv() {
            return null;
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: hV */
        public InterfaceC3519rh mo2474hV() {
            return null;
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: iw */
        public int mo2467iw() {
            return 0;
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: hW */
        public cbw mo2473hW() {
            return this.f757FB;
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: a */
        public void mo2475a(Throwable th, String str, byte[] bArr) {
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: ir */
        public abs mo2469ir() {
            return null;
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: hX */
        public InterfaceC3950zf mo2472hX() {
            return null;
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: ig */
        public C3979zv mo2470ig() {
            return new C3979zv.C3981a().m1237pH();
        }

        @Override // com.kingroot.kinguser.AbstractC3520ri
        /* renamed from: if */
        public AbstractC3793vo mo2471if() {
            return null;
        }
    }
}
