package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.zm */
/* loaded from: classes.dex */
public final class C3959zm {

    /* renamed from: com.kingroot.kinguser.zm$d */
    /* loaded from: classes.dex */
    public interface InterfaceC3965d {
        String getAbsolutePath();

        /* renamed from: px */
        boolean mo1280px();
    }

    private C3959zm() {
    }

    /* renamed from: M */
    public static void m1294M(final List<InterfaceC3965d> list) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.zm.1
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                for (InterfaceC3965d interfaceC3965d : list) {
                    C3959zm.m1293a(interfaceC3965d);
                }
            }
        }.m1530ny();
    }

    /* renamed from: a */
    public static void m1292a(final InterfaceC3965d... interfaceC3965dArr) {
        new RunnableC3845wo() { // from class: com.kingroot.kinguser.zm.2
            @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
            public void run() {
                for (InterfaceC3965d interfaceC3965d : interfaceC3965dArr) {
                    C3959zm.m1293a(interfaceC3965d);
                }
            }
        }.m1530ny();
    }

    /* renamed from: b */
    public static void m1291b(InterfaceC3965d... interfaceC3965dArr) {
        for (InterfaceC3965d interfaceC3965d : interfaceC3965dArr) {
            m1293a(interfaceC3965d);
        }
    }

    /* renamed from: a */
    public static boolean m1293a(InterfaceC3965d interfaceC3965d) {
        boolean z;
        File file = new File(interfaceC3965d.getAbsolutePath());
        if (file.exists()) {
            C3964c m1287dz = C3963b.m1287dz(file.getAbsolutePath());
            if (m1287dz.m1281pz() && C3563rs.m2347p(file) == m1287dz.f4096WM) {
                z = true;
                if (z && interfaceC3965d.mo1280px()) {
                    long m2347p = C3563rs.m2347p(new File(interfaceC3965d.getAbsolutePath()));
                    C3964c c3964c = new C3964c(interfaceC3965d.getAbsolutePath());
                    c3964c.m1285Z(m2347p);
                    C3963b.m1288a(c3964c);
                    return true;
                }
                return false;
            }
        }
        z = false;
        if (z) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.zm$b */
    /* loaded from: classes.dex */
    public static final class C3963b {

        /* renamed from: WK */
        private static volatile C3978zu f4093WK = null;

        /* renamed from: py */
        private static C3978zu m1286py() {
            if (f4093WK == null) {
                synchronized (C3959zm.class) {
                    if (f4093WK == null) {
                        f4093WK = new C3978zu(C3971zq.get("a5"), false);
                    }
                }
            }
            return f4093WK;
        }

        /* renamed from: dz */
        public static C3964c m1287dz(String str) {
            C3964c c3964c = new C3964c(str);
            String property = m1286py().getProperty(str);
            if (property != null && property.length() > 0) {
                c3964c.m1283dA(property);
            }
            return c3964c;
        }

        /* renamed from: a */
        public static void m1288a(C3964c c3964c) {
            m1286py().setProperty(c3964c.getAbsolutePath(), c3964c.m1282pA());
            m1286py().m1241pF();
        }
    }

    /* renamed from: com.kingroot.kinguser.zm$a */
    /* loaded from: classes.dex */
    public static class C3962a implements InterfaceC3965d {

        /* renamed from: WF */
        private String f4088WF;

        /* renamed from: WG */
        private String f4089WG;

        /* renamed from: WH */
        private int f4090WH;

        /* renamed from: WI */
        private String f4091WI;

        /* renamed from: WJ */
        private int f4092WJ;

        public C3962a(String str, int i, int i2) {
            this.f4088WF = str;
            this.f4089WG = "0764";
            this.f4090WH = i;
            this.f4091WI = "";
            this.f4092WJ = i2;
        }

        public C3962a(String str, String str2, int i) {
            this.f4088WF = str;
            this.f4089WG = "0764";
            this.f4090WH = 0;
            this.f4091WI = str2;
            this.f4092WJ = i;
        }

        /* renamed from: dy */
        public void m1290dy(String str) {
            this.f4089WG = str;
        }

        @Override // com.kingroot.kinguser.C3959zm.InterfaceC3965d
        public String getAbsolutePath() {
            return this.f4088WF;
        }

        @Override // com.kingroot.kinguser.C3959zm.InterfaceC3965d
        /* renamed from: px */
        public boolean mo1280px() {
            File file = new File(this.f4088WF);
            if (file.exists() && file.isDirectory()) {
                m1289v(file);
                return true;
            }
            if (file.exists()) {
                if (!file.delete()) {
                    abc m12845qK = abc.m12845qK();
                    if (m12845qK.isRootPermition(true)) {
                        m12845qK.m12846el("rm -rf" + file.getAbsolutePath());
                    }
                }
                file = new File(this.f4088WF);
            }
            try {
                if (this.f4090WH != 0) {
                    if (this.f4092WJ == 0) {
                        C3563rs.m2364c(this.f4090WH, file);
                    } else if (1 == this.f4092WJ) {
                        C3563rs.m2353d(this.f4090WH, file);
                    }
                    abi.m12831em("chmod " + this.f4089WG + " " + file.getAbsolutePath());
                    return true;
                } else if (this.f4091WI.length() != 0) {
                    if (this.f4092WJ == 0) {
                        C3563rs.m2352e(this.f4091WI, file);
                    } else if (1 == this.f4092WJ) {
                        C3563rs.m2351f(this.f4091WI, file);
                    } else if (2 == this.f4092WJ) {
                        String str = file.getAbsolutePath() + ".tmp";
                        C3563rs.m2341z(this.f4091WI, str);
                        C3563rs.m2350g(str, file);
                    }
                    abi.m12831em("chmod " + this.f4089WG + " " + file.getAbsolutePath());
                    return true;
                } else {
                    return true;
                }
            } catch (Exception e) {
                file.delete();
                return false;
            }
        }

        /* renamed from: v */
        private void m1289v(File file) {
            if (file.exists() && file.isDirectory()) {
                ArrayList arrayList = new ArrayList();
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    for (File file2 : listFiles) {
                        if (!file2.delete()) {
                            arrayList.add(file2.getAbsolutePath());
                        }
                    }
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (abi.m12831em("rm -r " + ((String) arrayList.get(size))).success()) {
                        arrayList.remove(size);
                    }
                }
                if (arrayList.size() > 0) {
                    abc m12845qK = abc.m12845qK();
                    if (m12845qK.isRootPermition(true)) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            m12845qK.m12846el("rm -r " + ((String) arrayList.get(size2)));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.zm$c */
    /* loaded from: classes.dex */
    public static class C3964c {

        /* renamed from: WF */
        private String f4094WF;

        /* renamed from: WL */
        private int f4095WL = 0;

        /* renamed from: WM */
        private long f4096WM = 0;

        public C3964c(String str) {
            this.f4094WF = str;
        }

        /* renamed from: Z */
        public void m1285Z(long j) {
            this.f4095WL = KApplication.m13444hZ();
            this.f4096WM = j;
        }

        /* renamed from: pz */
        public boolean m1281pz() {
            return this.f4095WL == KApplication.m13444hZ();
        }

        /* renamed from: dA */
        public void m1283dA(String str) {
            if (str != null && str.length() > 0) {
                int indexOf = str.indexOf("|");
                try {
                    this.f4095WL = Integer.valueOf(str.substring(0, indexOf)).intValue();
                    this.f4096WM = Long.valueOf(str.substring(indexOf + 1, str.length())).longValue();
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: pA */
        public String m1282pA() {
            return this.f4095WL + "|" + this.f4096WM;
        }

        public String getAbsolutePath() {
            return this.f4094WF;
        }
    }
}
