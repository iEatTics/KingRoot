package com.kingroot.kinguser;

import java.io.File;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.ni */
/* loaded from: classes.dex */
public final class C3347ni {

    /* renamed from: xb */
    private static int f3195xb = 40;

    /* renamed from: com.kingroot.kinguser.ni$d */
    /* loaded from: classes.dex */
    public interface InterfaceC3351d {
        /* renamed from: fd */
        boolean mo2866fd();

        String getAbsolutePath();
    }

    private C3347ni() {
    }

    /* renamed from: a */
    public static void m2878a(InterfaceC3351d... interfaceC3351dArr) {
        for (InterfaceC3351d interfaceC3351d : interfaceC3351dArr) {
            m2879a(interfaceC3351d);
        }
    }

    /* renamed from: a */
    public static boolean m2879a(InterfaceC3351d interfaceC3351d) {
        boolean z;
        File file = new File(interfaceC3351d.getAbsolutePath());
        if (file.exists()) {
            C3350c m2873bJ = C3349b.m2873bJ(file.getAbsolutePath());
            if (m2873bJ.m2868ff() && C3353nk.m2855m(file) == m2873bJ.f3204xj) {
                z = true;
                if (z && interfaceC3351d.mo2866fd()) {
                    long m2855m = C3353nk.m2855m(new File(interfaceC3351d.getAbsolutePath()));
                    C3350c c3350c = new C3350c(interfaceC3351d.getAbsolutePath());
                    c3350c.m2869c(m2855m);
                    C3349b.m2874a(c3350c);
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

    /* renamed from: com.kingroot.kinguser.ni$b */
    /* loaded from: classes.dex */
    public static final class C3349b {

        /* renamed from: xh */
        private static volatile C3358np f3201xh = null;

        /* renamed from: fe */
        private static C3358np m2872fe() {
            if (f3201xh == null) {
                synchronized (C3347ni.class) {
                    if (f3201xh == null) {
                        f3201xh = C3358np.m2830g(C3183ih.m3497bW().m3552bG() + File.separator + "uranus_files.dat", false);
                    }
                }
            }
            return f3201xh;
        }

        /* renamed from: bJ */
        public static C3350c m2873bJ(String str) {
            C3350c c3350c = new C3350c(str);
            String property = m2872fe().getProperty(str);
            if (property != null && property.length() > 0) {
                c3350c.m2870bK(property);
            }
            return c3350c;
        }

        /* renamed from: a */
        public static void m2874a(C3350c c3350c) {
            m2872fe().setProperty(c3350c.getAbsolutePath(), c3350c.m2867fg());
            m2872fe().m2831fm();
        }
    }

    /* renamed from: com.kingroot.kinguser.ni$a */
    /* loaded from: classes.dex */
    public static class C3348a implements InterfaceC3351d {

        /* renamed from: xc */
        private String f3196xc;

        /* renamed from: xd */
        private String f3197xd = "0764";

        /* renamed from: xe */
        private int f3198xe = 0;

        /* renamed from: xf */
        private String f3199xf;

        /* renamed from: xg */
        private int f3200xg;

        public C3348a(String str, String str2, int i) {
            this.f3196xc = str;
            this.f3199xf = str2;
            this.f3200xg = i;
        }

        /* renamed from: bI */
        public void m2876bI(String str) {
            this.f3197xd = str;
        }

        @Override // com.kingroot.kinguser.C3347ni.InterfaceC3351d
        public String getAbsolutePath() {
            return this.f3196xc;
        }

        @Override // com.kingroot.kinguser.C3347ni.InterfaceC3351d
        /* renamed from: fd */
        public boolean mo2866fd() {
            File file;
            boolean z;
            File file2 = new File(this.f3196xc);
            if (file2.exists() && file2.isDirectory()) {
                m2875k(file2);
                return true;
            }
            if (file2.exists()) {
                if (!file2.delete()) {
                    InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
                    if (interfaceC3195it.mo3126h(true)) {
                        interfaceC3195it.mo3131aC("rm -r " + file2.getAbsolutePath());
                    }
                }
                file = new File(this.f3196xc);
            } else {
                file = file2;
            }
            try {
                if (this.f3198xe != 0) {
                    if (this.f3200xg == 0) {
                        C3353nk.m2864a(this.f3198xe, file);
                    } else if (1 == this.f3200xg) {
                        C3353nk.m2862b(this.f3198xe, file);
                    }
                    C3197iv.m3465aD("chmod " + this.f3197xd + " " + file.getAbsolutePath());
                } else if (this.f3199xf.length() != 0) {
                    if (this.f3200xg == 0) {
                        C3353nk.m2857c(this.f3199xf, file);
                    } else if (1 == this.f3200xg) {
                        C3353nk.m2856d(this.f3199xf, file);
                    }
                    C3197iv.m3465aD("chmod " + this.f3197xd + " " + file.getAbsolutePath());
                }
                z = true;
            } catch (Exception e) {
                z = false;
            }
            return z;
        }

        /* renamed from: k */
        private void m2875k(File file) {
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
                    if (C3197iv.m3465aD("rm -r " + ((String) arrayList.get(size))).m3447co()) {
                        arrayList.remove(size);
                    }
                }
                if (arrayList.size() > 0) {
                    InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
                    if (interfaceC3195it.mo3126h(true)) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            interfaceC3195it.mo3131aC("rm -r " + ((String) arrayList.get(size2)));
                        }
                    }
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.ni$c */
    /* loaded from: classes.dex */
    public static class C3350c {

        /* renamed from: xc */
        private String f3202xc;

        /* renamed from: xi */
        private int f3203xi = 0;

        /* renamed from: xj */
        private long f3204xj = 0;

        public C3350c(String str) {
            this.f3202xc = str;
        }

        /* renamed from: c */
        public void m2869c(long j) {
            this.f3203xi = C3347ni.f3195xb;
            this.f3204xj = j;
        }

        /* renamed from: ff */
        public boolean m2868ff() {
            return this.f3203xi == C3347ni.f3195xb;
        }

        /* renamed from: bK */
        public void m2870bK(String str) {
            if (str != null && str.length() > 0) {
                int indexOf = str.indexOf("|");
                try {
                    this.f3203xi = Integer.valueOf(str.substring(0, indexOf)).intValue();
                    this.f3204xj = Long.valueOf(str.substring(indexOf + 1, str.length())).longValue();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        /* renamed from: fg */
        public String m2867fg() {
            return this.f3203xi + "|" + this.f3204xj;
        }

        public String getAbsolutePath() {
            return this.f3202xc;
        }
    }
}
