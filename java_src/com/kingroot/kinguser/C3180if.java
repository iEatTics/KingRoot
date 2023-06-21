package com.kingroot.kinguser;

import android.content.Context;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.if */
/* loaded from: classes.dex */
public final class C3180if {
    private Context mContext;
    private String mPackageName;

    /* renamed from: rA */
    private String f2782rA;

    /* renamed from: rB */
    private String f2783rB;

    /* renamed from: rC */
    private String f2784rC;

    /* renamed from: rD */
    private String f2785rD;

    /* renamed from: rE */
    private String f2786rE;

    /* renamed from: rF */
    private InterfaceC3151hg f2787rF;

    /* renamed from: rG */
    private InterfaceC3162hr f2788rG;

    /* renamed from: rH */
    private final InterfaceC3149he f2789rH;

    /* renamed from: rI */
    private C3171hz f2790rI;

    /* renamed from: rJ */
    private InterfaceC3160hp f2791rJ;

    /* renamed from: rK */
    private final InterfaceC3154hj f2792rK;

    /* renamed from: rL */
    private Map<String, C3257ks> f2793rL;

    /* renamed from: rM */
    private String f2794rM;

    /* renamed from: rN */
    private boolean f2795rN;

    /* renamed from: rO */
    private boolean f2796rO;

    /* renamed from: rP */
    private String f2797rP;

    /* renamed from: rQ */
    private String f2798rQ;

    /* renamed from: rR */
    private String f2799rR;

    /* renamed from: rS */
    private int f2800rS;

    /* renamed from: rp */
    private String f2801rp;

    /* renamed from: rq */
    private String f2802rq;

    /* renamed from: rr */
    private String f2803rr;

    /* renamed from: rs */
    private String f2804rs;

    /* renamed from: rt */
    private String f2805rt;

    /* renamed from: ru */
    private String f2806ru;

    /* renamed from: rv */
    private String f2807rv;

    /* renamed from: rw */
    private String f2808rw;

    /* renamed from: rx */
    private String f2809rx;

    /* renamed from: ry */
    private String f2810ry;

    /* renamed from: rz */
    private String f2811rz;

    private C3180if(C3181a c3181a) {
        this.f2793rL = new HashMap();
        this.mContext = c3181a.mContext;
        this.f2804rs = c3181a.f2826rs;
        this.mPackageName = c3181a.mPackageName;
        this.f2801rp = c3181a.f2823rT;
        this.f2802rq = c3181a.f2824rU;
        this.f2805rt = m3559ax("ipme");
        this.f2806ru = m3559ax("ipme64");
        this.f2807rv = m3559ax("libclient.so");
        this.f2808rw = m3559ax("libclient64.so");
        this.f2809rx = m3559ax("libsrvmgr.so");
        this.f2810ry = m3559ax("libsrvmgr64.so");
        this.f2811rz = m3559ax("daemon.jar");
        this.f2782rA = m3559ax("zgo.jar");
        this.f2783rB = this.f2802rq + File.separator + "40276.dat";
        this.f2784rC = m3559ax("libpm.so");
        this.f2803rr = "uranus";
        this.f2785rD = "daemon";
        this.f2786rE = "guard";
        this.f2795rN = c3181a.f2818rN;
        this.f2797rP = c3181a.f2820rP;
        this.f2798rQ = c3181a.f2821rQ;
        this.f2799rR = c3181a.f2822rR;
        this.f2796rO = c3181a.f2819rO;
        m3536bu();
        this.f2787rF = c3181a.f2812rF;
        this.f2790rI = c3181a.f2815rI;
        this.f2794rM = c3181a.f2817rM;
        this.f2791rJ = c3181a.f2816rJ;
        this.f2792rK = c3181a.f2825rV;
        this.f2788rG = c3181a.f2813rG;
        this.f2789rH = c3181a.f2814rH;
        this.f2800rS = 8;
    }

    /* renamed from: bt */
    public int m3537bt() {
        return this.f2800rS;
    }

    /* renamed from: bu */
    private void m3536bu() {
        int m3091ev = C3304mf.m3091ev();
        boolean m3090ey = C3304mf.m3090ey();
        if (m3091ev >= 21) {
            this.f2793rL.put("ipme_pie", new C3257ks(this.f2805rt));
            if (m3090ey) {
                this.f2793rL.put("ipme64", new C3257ks(this.f2806ru));
            }
        } else {
            this.f2793rL.put("ipme", new C3257ks(this.f2805rt));
        }
        if (m3091ev >= 23) {
            this.f2793rL.put("libclient_60.so", new C3257ks(this.f2807rv));
            this.f2793rL.put("libsrvmgr_60.so", new C3257ks(this.f2809rx));
            if (m3090ey) {
                this.f2793rL.put("libclient64_60.so", new C3257ks(this.f2808rw));
                this.f2793rL.put("libsrvmgr64_60.so", new C3257ks(this.f2810ry));
            }
        } else {
            this.f2793rL.put("libclient.so", new C3257ks(this.f2807rv));
            this.f2793rL.put("libsrvmgr.so", new C3257ks(this.f2809rx));
            if (m3090ey) {
                this.f2793rL.put("libclient64_50.so", new C3257ks(this.f2808rw));
                this.f2793rL.put("libsrvmgr64_50.so", new C3257ks(this.f2810ry));
            }
        }
        this.f2793rL.put("40276.dat", new C3257ks(this.f2783rB, true));
        this.f2793rL.put("daemon.jar", new C3257ks(this.f2811rz));
        this.f2793rL.put("zgo.jar", new C3257ks(this.f2782rA));
    }

    /* renamed from: ax */
    private String m3559ax(String str) {
        return this.f2802rq + File.separator + C3250kl.m3271p(str, this.f2801rp);
    }

    /* renamed from: bv */
    public Map<String, C3257ks> m3535bv() {
        return this.f2793rL;
    }

    /* renamed from: bw */
    public String m3534bw() {
        return this.f2804rs;
    }

    /* renamed from: bx */
    public String m3533bx() {
        return this.f2805rt;
    }

    /* renamed from: by */
    public String m3532by() {
        return this.f2806ru;
    }

    /* renamed from: bz */
    public String m3531bz() {
        return this.f2807rv;
    }

    /* renamed from: bA */
    public String m3558bA() {
        return this.f2808rw;
    }

    /* renamed from: bB */
    public String m3557bB() {
        return this.f2809rx;
    }

    /* renamed from: bC */
    public String m3556bC() {
        return this.f2810ry;
    }

    /* renamed from: bD */
    public String m3555bD() {
        return this.f2811rz;
    }

    /* renamed from: bE */
    public String m3554bE() {
        return this.f2782rA;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    /* renamed from: bF */
    public String m3553bF() {
        return this.f2801rp;
    }

    /* renamed from: bG */
    public String m3552bG() {
        return this.f2802rq;
    }

    /* renamed from: bH */
    public String m3551bH() {
        return this.f2803rr;
    }

    /* renamed from: bI */
    public String m3550bI() {
        return this.f2786rE;
    }

    /* renamed from: bJ */
    public String m3549bJ() {
        return this.f2785rD;
    }

    /* renamed from: bK */
    public InterfaceC3151hg m3548bK() {
        return this.f2787rF;
    }

    /* renamed from: n */
    public static C3181a m3530n(Context context) {
        return new C3181a(context);
    }

    public Context getContext() {
        return this.mContext;
    }

    /* renamed from: bL */
    public C3171hz m3547bL() {
        return this.f2790rI;
    }

    /* renamed from: bM */
    public InterfaceC3160hp m3546bM() {
        return this.f2791rJ;
    }

    /* renamed from: bN */
    public boolean m3545bN() {
        return this.f2795rN;
    }

    /* renamed from: bO */
    public String m3544bO() {
        return this.f2797rP;
    }

    /* renamed from: bP */
    public String m3543bP() {
        return this.f2798rQ;
    }

    /* renamed from: bQ */
    public String m3542bQ() {
        return this.f2799rR;
    }

    /* renamed from: bR */
    public InterfaceC3154hj m3541bR() {
        return this.f2792rK;
    }

    /* renamed from: bS */
    public InterfaceC3162hr m3540bS() {
        return this.f2788rG;
    }

    /* renamed from: bT */
    public InterfaceC3149he m3539bT() {
        return this.f2789rH;
    }

    /* renamed from: bU */
    public boolean m3538bU() {
        return this.f2796rO;
    }

    /* renamed from: com.kingroot.kinguser.if$a */
    /* loaded from: classes.dex */
    public static final class C3181a {
        private final Context mContext;
        private String mPackageName;

        /* renamed from: rF */
        private InterfaceC3151hg f2812rF;

        /* renamed from: rG */
        private InterfaceC3162hr f2813rG;

        /* renamed from: rH */
        private InterfaceC3149he f2814rH;

        /* renamed from: rI */
        private C3171hz f2815rI;

        /* renamed from: rJ */
        private InterfaceC3160hp f2816rJ;

        /* renamed from: rM */
        private String f2817rM;

        /* renamed from: rN */
        private boolean f2818rN;

        /* renamed from: rO */
        private boolean f2819rO;

        /* renamed from: rP */
        private String f2820rP;

        /* renamed from: rQ */
        private String f2821rQ;

        /* renamed from: rR */
        private String f2822rR;

        /* renamed from: rT */
        private String f2823rT;

        /* renamed from: rU */
        private String f2824rU;

        /* renamed from: rV */
        private InterfaceC3154hj f2825rV;

        /* renamed from: rs */
        private String f2826rs;

        private C3181a(Context context) {
            this.f2818rN = true;
            this.f2819rO = true;
            m3522b(context, "input context was null");
            this.mContext = context;
        }

        /* renamed from: ay */
        public C3181a m3525ay(String str) {
            m3522b(str, "Client Identity not set");
            this.f2823rT = str;
            return this;
        }

        /* renamed from: a */
        public C3181a m3527a(C3171hz c3171hz) {
            m3522b(c3171hz, "preload library was null");
            this.f2815rI = c3171hz;
            return this;
        }

        /* renamed from: a */
        public C3181a m3529a(InterfaceC3149he interfaceC3149he) {
            this.f2814rH = interfaceC3149he;
            return this;
        }

        /* renamed from: az */
        public C3181a m3524az(String str) {
            this.f2820rP = str;
            return this;
        }

        /* renamed from: a */
        public C3181a m3528a(InterfaceC3154hj interfaceC3154hj) {
            this.f2825rV = interfaceC3154hj;
            return this;
        }

        /* renamed from: g */
        public C3181a m3514g(boolean z) {
            this.f2819rO = z;
            return this;
        }

        /* renamed from: e */
        private static void m3517e(File file) {
            if (!file.exists()) {
                throw new IllegalArgumentException("No such file or directory: " + file.getPath());
            }
        }

        /* renamed from: b */
        private static <T> void m3522b(T t, String str) {
            if (t == null) {
                throw new IllegalArgumentException(str);
            }
        }

        /* renamed from: bV */
        public C3180if m3521bV() {
            this.mPackageName = this.mContext.getPackageName();
            this.f2826rs = this.f2826rs != null ? this.f2826rs : "uranus.zip";
            this.f2817rM = this.f2817rM != null ? this.f2817rM : "uranus.cert";
            File dir = this.mContext.getApplicationContext().getDir("uranus", 1);
            m3517e(dir);
            this.f2824rU = dir.getAbsolutePath();
            return new C3180if(this);
        }
    }
}
