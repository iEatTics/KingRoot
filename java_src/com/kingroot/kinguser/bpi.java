package com.kingroot.kinguser;

import android.os.Environment;
import android.os.SystemClock;
import android.p003os.Environmenu;
import android.text.TextUtils;
import android.util.Log;
import com.kingroot.kinguser.bov;
import com.kingroot.kinguser.boy;
import com.kingroot.kinguser.bpd;
import com.kingroot.kinguser.bpg;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class bpi implements bog, bom, box, Comparable, Runnable {

    /* renamed from: D */
    public String f1930D;

    /* renamed from: a */
    public int f1936a;

    /* renamed from: b */
    public String f1941b;
    private bph bGR;
    private bpf bHb;
    private bov bHc;
    private File bHd;
    private RandomAccessFile bHe;
    private File bHf;
    private RandomAccessFile bHg;
    private bou bHk;
    private bpd bHq;
    private bpj bHr;
    public String bHt;

    /* renamed from: f */
    public long f1945f;

    /* renamed from: h */
    public String f1947h;

    /* renamed from: i */
    public String f1948i;

    /* renamed from: n */
    public String f1952n;

    /* renamed from: z */
    public String f1961z;

    /* renamed from: c */
    public String f1942c = "";

    /* renamed from: d */
    public String f1943d = "";
    private bon bGS = bon.Cate_DefaultMass;

    /* renamed from: K */
    private boolean f1933K = true;
    private boolean bGT = true;

    /* renamed from: e */
    public Map f1944e = new HashMap();
    private volatile bop bGU = bop.NORMAL;

    /* renamed from: g */
    public volatile long f1946g = -1;
    private volatile long bGV = 0;

    /* renamed from: O */
    private String f1934O = "";

    /* renamed from: j */
    public volatile long f1949j = 0;
    public volatile boolean bGo = true;

    /* renamed from: l */
    public String f1950l = "";

    /* renamed from: m */
    public String f1951m = "";
    public AtomicLong bGW = new AtomicLong(0);
    public AtomicLong bGX = new AtomicLong(0);

    /* renamed from: q */
    public volatile int f1953q = 0;
    private boolean bGY = false;

    /* renamed from: r */
    public volatile int f1954r = 0;

    /* renamed from: s */
    public String f1955s = "";
    private long bGZ = -1;
    public long bHa = -1;

    /* renamed from: u */
    public long f1956u = -1;

    /* renamed from: v */
    public long f1957v = -1;
    private volatile boolean bHh = false;

    /* renamed from: w */
    public volatile int f1958w = 0;

    /* renamed from: Y */
    private volatile int f1935Y = 0;
    private boy bHi = new boy(this);
    private boolean bHj = false;

    /* renamed from: ac */
    private int f1937ac = 0;
    private volatile boolean bHl = false;
    private AtomicInteger bHm = new AtomicInteger(0);
    private Object bHn = new Object();

    /* renamed from: ag */
    private volatile boolean f1938ag = false;

    /* renamed from: x */
    public boolean f1959x = false;

    /* renamed from: y */
    public String f1960y = "";
    private boolean bHo = false;
    private C2554b bHp = new C2554b(this, (byte) 0);

    /* renamed from: A */
    public int f1927A = -1;

    /* renamed from: B */
    public long f1928B = 0;

    /* renamed from: am */
    private long f1939am = 0;

    /* renamed from: C */
    public boolean f1929C = true;

    /* renamed from: an */
    private String f1940an = "";
    private boolean bHs = false;

    /* renamed from: F */
    public int f1931F = 0;

    /* renamed from: G */
    public boolean f1932G = false;
    public boolean bHu = false;
    private volatile HashMap bHv = new LinkedHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bpi$a */
    /* loaded from: classes.dex */
    public static class C2553a extends RandomAccessFile {
        public C2553a(File file, String str) {
            super(file, str);
        }

        @Override // java.io.RandomAccessFile
        protected final void finalize() {
            try {
                super.finalize();
            } catch (Throwable th) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bpi$b */
    /* loaded from: classes.dex */
    public class C2554b implements bpa {
        bpb bHw;
        bpb bHx;

        private C2554b() {
        }

        /* synthetic */ C2554b(bpi bpiVar, byte b) {
            this();
        }

        /* renamed from: a */
        private boolean m5904a(String str) {
            String m5988c = bpi.this.bHb.m5988c();
            return (TextUtils.isEmpty(m5988c) || TextUtils.isEmpty(str) || m5988c.equals(str)) ? false : true;
        }

        @Override // com.kingroot.kinguser.bpa
        /* renamed from: a */
        public final synchronized boh mo5905a(bpb bpbVar, bpg bpgVar, String str, long j, boolean z, String str2, String str3, String str4, String str5) {
            boh bohVar;
            if (bpi.this.f1932G) {
                boe.m6091b();
                if (boe.m6090d()) {
                    bpi.this.pause();
                    bpi.this.bHu = true;
                }
            }
            if (!(bpbVar != null && (bpbVar == this.bHw || bpbVar == this.bHx)) || bpbVar.mo5951a() || j <= 0) {
                bohVar = new boh(4, "");
            } else {
                bohVar = new boh(0, "");
                if (bpi.this.bHb != null) {
                    if (bpbVar.bGm.bGi == bpi.this.bHb) {
                        if (bpi.this.f1946g == -1) {
                            if (bpi.this.f1945f == -1 || j == bpi.this.f1945f) {
                                bpi.this.f1946g = j;
                                bpi.this.bGo = z;
                                bpi.this.f1950l = str4;
                                bpi.this.f1951m = str5;
                                if (bpbVar.bGn != null) {
                                    bpi.this.f1927A = bpbVar.bGn.f1921c;
                                }
                                if (!bpi.this.bGo) {
                                    bpi.this.bHb = new bpf("");
                                    bpbVar.bGm = bpi.this.bHb.agQ();
                                } else if (bpi.this.bHb.f1911a > 0) {
                                    boolean z2 = false;
                                    if (bpi.this.bHb.f1911a != bpi.this.f1946g) {
                                        z2 = true;
                                    } else if (m5904a(str3)) {
                                        z2 = true;
                                    }
                                    if (z2) {
                                        bpi.this.bHb = new bpf("");
                                        bohVar.f1834a = 3;
                                        bohVar.f1835b = "can not resume from cfg, start over now";
                                    }
                                }
                                bpi.this.bHb.f1911a = j;
                                bpi.this.bHb.m5991a(str2);
                                bpi.this.bHb.m5989b(str3);
                                if (bpbVar.bGm.f1863c == -1 && bpbVar.bGm.f1862b == -1) {
                                    bpi.this.bHb.m5992a(bpbVar.bGm);
                                }
                            } else {
                                bohVar.f1834a = -10;
                                bohVar.f1835b = "knownSize:" + bpi.this.f1945f + ",rspLength:" + j;
                            }
                            if (bohVar.f1834a == 0) {
                                if (!bpi.this.bHo && !bpi.this.m5948a(j)) {
                                    bpi.this.m5939a(false, bpi.this.f1954r, bpi.this.f1955s, boq.FAILED);
                                }
                                bpi.this.bHi.m6017a(boy.EnumC2546a.Inform_Detected);
                            }
                        } else if (j != bpi.this.f1946g) {
                            bohVar.f1834a = -43;
                            bohVar.f1835b = "detectLength:" + bpi.this.f1946g + ",rspLength:" + j;
                        } else if (!bpi.this.bGo) {
                            bohVar.f1834a = 1;
                            bohVar.f1835b = "not support range";
                        } else if (m5904a(str3)) {
                            bohVar.f1834a = -68;
                            bohVar.f1835b = "cur:" + bpi.this.bHb.m5988c() + ",rsp:" + str3;
                        }
                        if (bohVar.f1834a == 0 && !TextUtils.isEmpty(str)) {
                            if (bpgVar.bGA == bpg.EnumC2551a.Type_CDN_Domain || bpgVar.bGA == bpg.EnumC2551a.Type_Outer) {
                                bpi.this.bGR.m5972a(boe.f1824a, str);
                            } else if (bpgVar.bGA == bpg.EnumC2551a.Type_Src_Domain) {
                                bpi.this.bGR.m5970aP(boe.f1824a, str);
                            }
                        }
                    }
                }
                bohVar.f1834a = 2;
                bohVar.f1835b = "not the same divider";
            }
            return bohVar;
        }

        @Override // com.kingroot.kinguser.bpa
        /* renamed from: a */
        public final boz mo5907a(bpb bpbVar) {
            if ((bpbVar != null && (bpbVar == this.bHw || bpbVar == this.bHx)) && bpi.this.bGo) {
                return bpi.this.bHb.agQ();
            }
            return null;
        }

        @Override // com.kingroot.kinguser.bpa
        /* renamed from: a */
        public final boolean mo5906a(bpb bpbVar, long j, byte[] bArr, int i, boolean z) {
            boolean z2 = false;
            if (bpbVar != null && (bpbVar == this.bHw || bpbVar == this.bHx)) {
                if (i > 0) {
                    bpi.this.bGW.addAndGet(i);
                    bpi.this.bGX.addAndGet(i);
                }
                if (bpi.this.bHb != null) {
                    if (bpbVar.bGm.bGi == bpi.this.bHb) {
                        if (z) {
                            bpi.this.f1958w = 0;
                            if (bpbVar.bGm.f1862b == -1 && !bpi.this.bHb.m5992a(bpbVar.bGm)) {
                                return false;
                            }
                        }
                        if (i > 0 && !bpi.this.isPaused()) {
                            try {
                                bpi.this.bHc.m6024a(bpbVar.bGm.f1862b, j, bArr, i);
                                bpbVar.bGm.f1866f += i;
                                bpf bpfVar = bpi.this.bHb;
                                long m5985f = bpfVar.m5985f();
                                if (m5985f > 0 && m5985f == bpfVar.f1911a) {
                                    z2 = true;
                                }
                                if (z2) {
                                    bpi.this.bHk.m6030b();
                                    bot.agK().m6052b();
                                }
                                if (bot.agK().m6043g()) {
                                    bpi.this.bHl = true;
                                    bot.agK().m6052b();
                                    try {
                                        bpi.this.f1938ag = true;
                                        synchronized (bpi.this.bHn) {
                                            bpi.this.bHn.wait(2000L);
                                        }
                                    } catch (Exception e) {
                                    }
                                }
                            } catch (OutOfMemoryError e2) {
                                e2.printStackTrace();
                                bpi.this.m5939a(false, -19, "append size:" + i + ",buffer size:" + bot.agK().m6045f(), boq.FAILED);
                                return false;
                            }
                        }
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        public final synchronized boh ahc() {
            boh bohVar;
            bohVar = new boh(0, "");
            this.bHw = new bpb(bpi.this.bGR, true, bpi.this.f1945f, bpi.this, this, bpi.this.f1944e, bpi.this.f1929C);
            try {
                bpr.ahd().m5883i(this.bHw);
            } catch (Exception e) {
                this.bHw = null;
                bohVar.f1834a = -67;
                e.printStackTrace();
            }
            if (bohVar.f1834a == 0 && !bpi.this.aha()) {
                this.bHx = new bpb(bpi.this.bGR, false, bpi.this.f1945f, bpi.this, this, bpi.this.f1944e, bpi.this.f1929C);
                try {
                    bpr.ahd().m5882j(this.bHx);
                } catch (Exception e2) {
                    this.bHx = null;
                }
            }
            return bohVar;
        }

        @Override // com.kingroot.kinguser.bpa
        /* renamed from: b */
        public final void mo5902b(bpb bpbVar) {
            if ((bpbVar != null && (bpbVar == this.bHw || bpbVar == this.bHx)) && bpbVar.bGm != null) {
                bpf unused = bpi.this.bHb;
                bpbVar.bGm.f1868h = false;
            }
        }

        @Override // com.kingroot.kinguser.bpa
        /* renamed from: b */
        public final boolean mo5903b() {
            return bpi.this.f1946g != -1;
        }

        @Override // com.kingroot.kinguser.bpa
        /* renamed from: c */
        public final void mo5901c(bpb bpbVar) {
            boolean z;
            boolean z2 = true;
            if (bpbVar != null && (bpbVar == this.bHw || bpbVar == this.bHx)) {
                synchronized (bpi.this.bHp) {
                    z = (this.bHw == null || this.bHw.m6002e()) ? !bpi.this.f1929C || this.bHx == null || this.bHx.m6002e() : false;
                }
                if (!z || bpi.this.bHh) {
                    return;
                }
                bpf bpfVar = bpi.this.bHb;
                long m5985f = bpfVar.m5985f();
                if (m5985f <= 0 || m5985f != bpfVar.f1911a) {
                    z2 = false;
                }
                if (z2) {
                    return;
                }
                bpi.this.f1954r = bpbVar.m6006b();
                bpi.this.f1955s = bpbVar.m6004c();
                if (bpi.this.f1954r == 0) {
                    bpi.this.f1954r = -69;
                    bpi.this.f1955s = "readLen:" + bpi.this.bHb.m5985f();
                }
                bpi.this.bHi.m6013c(boq.FAILED);
            }
        }
    }

    public bpi(int i, String str, bph bphVar, String str2, String str3, boo booVar, long j) {
        this.f1936a = -1;
        this.f1941b = "";
        this.f1945f = -1L;
        this.f1947h = "";
        this.f1948i = "";
        this.f1952n = null;
        this.f1930D = "";
        this.f1936a = i;
        this.f1941b = TextUtils.isEmpty(str) ? "" : str;
        this.bGR = bphVar;
        this.f1947h = str2;
        this.f1948i = str3;
        this.bHi.m6019a(booVar);
        this.f1945f = j <= 0 ? -1L : j;
        this.f1930D = !TextUtils.isEmpty(this.bHt) ? this.bHt : "";
        this.f1952n = bny.m6138al("" + bok.m6068b() + bok.m6065c() + System.currentTimeMillis() + this.bGR.bGL.f1920a + bok.m6071a());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002c A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String m5960B() {
        String str;
        Exception e;
        String str2 = "";
        try {
            if (this.f1940an == null || this.f1940an.length() == 0) {
                this.bHg.seek(0L);
                str = this.bHg.readUTF();
            } else {
                str = this.f1940an;
                try {
                    str2 = "TAG";
                    Log.e("TAG", "currentCfg = " + this.f1940an);
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (!TextUtils.isEmpty(str)) {
                    }
                }
            }
        } catch (Exception e3) {
            str = str2;
            e = e3;
        }
        return !TextUtils.isEmpty(str) ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m5948a(long j) {
        String str;
        String str2;
        synchronized (getClass()) {
            this.bHv.put("point0", 0L);
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            new File(this.f1947h).mkdirs();
            if (bnz.m6122mL(this.f1948i)) {
                this.f1934O = this.f1948i;
            } else {
                this.f1934O = boh.m6082c(this.bGR.bGL.f1920a, this.f1950l, this.f1951m, "");
                File file = new File(this.f1947h, bnz.m6121mf(this.f1934O));
                File file2 = new File(this.f1947h, this.f1934O);
                if (file.exists() || file2.exists()) {
                    int lastIndexOf = this.f1934O.lastIndexOf(".");
                    String str3 = "";
                    if (lastIndexOf <= 0 || this.f1934O.length() <= lastIndexOf + 1) {
                        str = this.f1934O;
                    } else {
                        str = this.f1934O.substring(0, lastIndexOf);
                        str3 = this.f1934O.substring(lastIndexOf);
                    }
                    int i = 2;
                    while (true) {
                        str2 = str + "(" + i + ")" + str3;
                        File file3 = new File(this.f1947h, bnz.m6121mf(str2));
                        File file4 = new File(this.f1947h, str2);
                        if (!file3.exists() && !file4.exists()) {
                            break;
                        }
                        i++;
                    }
                    this.f1934O = str2;
                }
            }
            this.bHv.put("point1", Long.valueOf(System.currentTimeMillis() - valueOf.longValue()));
            Long valueOf2 = Long.valueOf(System.currentTimeMillis());
            if (this.bGT) {
                this.bHd = new File(this.f1947h, bnz.m6121mf(this.f1934O));
            } else {
                this.bHd = new File(this.f1947h, this.f1934O);
            }
            this.bHf = new File(this.f1947h, bnz.m6123mK(this.f1934O));
            try {
                this.bHg = new C2553a(this.bHf, "rw");
                this.bHv.put("point2", Long.valueOf(System.currentTimeMillis() - valueOf2.longValue()));
                Long valueOf3 = Long.valueOf(System.currentTimeMillis());
                try {
                    this.bHe = new C2553a(this.bHd, "rw");
                    this.bHv.put("point3", Long.valueOf(System.currentTimeMillis() - valueOf3.longValue()));
                    Long valueOf4 = Long.valueOf(System.currentTimeMillis());
                    if (this.f1933K) {
                        try {
                            this.bHe.setLength(j);
                        } catch (Exception e) {
                            e.printStackTrace();
                            if (this.f1947h.startsWith(Environment.getExternalStorageDirectory().getAbsolutePath())) {
                                if (Environmenu.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) {
                                    long m6085a = boh.m6085a();
                                    if (m6085a <= (3 * j) / 2) {
                                        this.f1954r = -12;
                                        this.f1955s = "SDCard free space:" + m6085a + ", need space:" + j;
                                    } else if (boh.m6081e(e)) {
                                        return true;
                                    } else {
                                        this.f1954r = -45;
                                        this.f1955s = "on SDCard, setting file length faill. length:" + j + ",Exception Info:" + e;
                                    }
                                } else {
                                    this.f1954r = -46;
                                    this.f1955s = "SDCard is not ready.";
                                }
                            } else {
                                if (this.f1947h.startsWith(boi.agA().getFilesDir().toString())) {
                                    long m6083b = boh.m6083b();
                                    if (m6083b <= (3 * j) / 2 || boh.m6081e(e)) {
                                        this.f1954r = -40;
                                        this.f1955s = "Phone data free space:" + m6083b + ", need space:" + j;
                                    } else if (boh.m6081e(e)) {
                                        return true;
                                    } else {
                                        this.f1954r = -45;
                                        this.f1955s = "on Phone data, setting file length faill. length:" + j + ",Exception Info:" + e;
                                    }
                                } else {
                                    this.f1954r = -47;
                                    this.f1955s = "save dir not exists, dir:" + this.f1947h;
                                }
                            }
                            this.f1955s += "|" + e;
                            return false;
                        }
                    }
                    this.bHv.put("point4", Long.valueOf(System.currentTimeMillis() - valueOf4.longValue()));
                    Long.valueOf(System.currentTimeMillis());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    this.f1954r = -49;
                    this.f1955s = "initFileOnDetected...create RandomAccessFile of path:" + this.bHd.getAbsolutePath() + " fail.|" + e2;
                    if (boh.m6081e(e2)) {
                        this.f1954r = -12;
                    } else if (boh.m6080f(e2)) {
                        this.f1954r = -13;
                    }
                    m5938ae();
                    return false;
                }
            } catch (Exception e3) {
                this.f1954r = -49;
                this.f1955s = "initFileOnDetected...create RandomAccessFile of path:" + this.bHf.getAbsolutePath() + " fail.|" + e3;
                if (boh.m6081e(e3)) {
                    this.f1954r = -12;
                } else if (boh.m6080f(e3)) {
                    this.f1954r = -13;
                }
                m5938ae();
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    private boolean m5941a(String str) {
        try {
            this.f1940an = str;
            this.bHg.seek(0L);
            this.bHg.writeUTF(str);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: ae */
    private synchronized void m5938ae() {
        if (this.bHe != null) {
            try {
                this.bHe.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.bHe = null;
        }
        if (this.bHg != null) {
            try {
                this.bHg.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.bHg = null;
        }
    }

    private boolean agS() {
        try {
            File file = new File(mo5956KI());
            if (file.exists()) {
                return file.delete();
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private boolean agT() {
        try {
            File file = new File(agD(), bnz.m6121mf(this.f1934O));
            if (file.exists()) {
                return file.delete();
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    private boolean agV() {
        try {
            this.bHg = new C2553a(this.bHf, "rw");
            try {
                this.bHe = new C2553a(this.bHd, "rw");
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                this.f1954r = -49;
                this.f1955s = "initFileOnStart...create RandomAccessFile of path:" + this.bHd.getAbsolutePath() + " fail.|" + e;
                if (boh.m6081e(e)) {
                    this.f1954r = -12;
                } else if (boh.m6080f(e)) {
                    this.f1954r = -13;
                }
                m5938ae();
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            this.f1954r = -49;
            this.f1955s = "initFileOnStart...create RandomAccessFile of path:" + this.bHf.getAbsolutePath() + " fail.|" + e2;
            if (boh.m6081e(e2)) {
                this.f1954r = -12;
            } else if (boh.m6080f(e2)) {
                this.f1954r = -13;
            }
            m5938ae();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x0115  */
    /* renamed from: av */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m5937av() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        try {
            new File(this.f1947h).mkdirs();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.bHd = null;
        this.bHf = null;
        if (this.bHb != null) {
            if (this.bHb.m5987d() <= 0 || TextUtils.isEmpty(this.f1934O)) {
                z4 = false;
            } else {
                if (this.bGT) {
                    this.bHd = new File(this.f1947h, bnz.m6121mf(this.f1934O));
                } else {
                    this.bHd = new File(this.f1947h, this.f1934O);
                }
                this.bHf = new File(this.f1947h, bnz.m6123mK(this.f1934O));
                z4 = true;
            }
            z2 = z4;
            z = false;
        } else if (bnz.m6122mL(this.f1948i)) {
            if (this.bGT) {
                this.bHd = new File(this.f1947h, bnz.m6121mf(this.f1948i));
            } else {
                this.bHd = new File(this.f1947h, this.f1948i);
            }
            this.bHf = new File(this.f1947h, bnz.m6123mK(this.f1948i));
            z = true;
            z2 = false;
        } else {
            z = false;
            z2 = false;
        }
        if ((z2 || z) && this.bHd.exists()) {
            if (!agV()) {
                return false;
            }
            String m5960B = m5960B();
            this.bHb = new bpf(m5960B);
            if (!TextUtils.isEmpty(m5960B) && this.bHb.f1915e) {
                long lastModified = this.bHd.lastModified();
                boolean z5 = (!z || lastModified < this.bHb.f1912b || this.bHb.f1911a <= 0 || this.bHb.m5987d() > this.bHb.f1911a) ? z2 && lastModified >= this.bHb.f1912b : true;
                if (z5) {
                    if (TextUtils.isEmpty(this.f1934O)) {
                        this.f1934O = this.f1948i;
                    }
                    this.f1949j = this.bHb.f1913c;
                    this.bGW.set(this.bHb.f1914d);
                    if (z && this.bHb.f1911a > 0) {
                        this.f1959x = true;
                        z3 = z5;
                        if (!z3) {
                            m5938ae();
                            this.f1946g = -1L;
                            this.f1934O = "";
                            this.f1949j = 0L;
                            this.bGW.set(0L);
                            this.bGo = true;
                            this.f1950l = "";
                            this.f1951m = "";
                            this.f1953q = 0;
                            this.bGY = false;
                            this.f1954r = 0;
                            this.f1955s = "";
                            this.bHb = new bpf("");
                            this.f1959x = false;
                        }
                        this.bHo = z3;
                        return true;
                    }
                } else {
                    this.f1960y = "resume failed. cfg:" + m5960B + ",flm:" + lastModified + ",from:" + (z ? 0 : 1);
                }
                z3 = z5;
                if (!z3) {
                }
                this.bHo = z3;
                return true;
            }
            this.f1960y = "resume failed. cfg:" + m5960B;
        }
        z3 = false;
        if (!z3) {
        }
        this.bHo = z3;
        return true;
    }

    /* renamed from: aw */
    private void m5936aw() {
        try {
            synchronized (this.bHn) {
                this.bHn.notifyAll();
                this.f1938ag = false;
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: ay */
    private void m5935ay() {
        boolean z;
        synchronized (this.bHi) {
            if (this.bHi.agO() != boq.PAUSED) {
                if (this.bGT) {
                    File file = new File(this.f1947h, bnz.m6121mf(this.f1934O));
                    File file2 = new File(this.f1947h, this.f1934O);
                    if (file2.exists()) {
                        file2.delete();
                    }
                    z = file.renameTo(file2);
                } else {
                    z = true;
                }
                m5909t();
                if (z) {
                    this.bHi.m6013c(boq.COMPLETE);
                } else {
                    m5939a(false, -72, "", boq.FAILED);
                }
            }
        }
    }

    /* renamed from: az */
    private synchronized void m5934az() {
        if (this.bHb != null && this.bHd != null && this.bHf != null) {
            this.bHb.f1912b = this.bHd.lastModified();
            this.bHb.f1913c = this.f1949j;
            this.bHb.f1914d = this.bGW.get();
            m5941a(this.bHb.m5990b());
        }
    }

    /* renamed from: t */
    private boolean m5909t() {
        try {
            File file = new File(this.f1947h, bnz.m6123mK(this.f1934O));
            if (file.exists()) {
                return file.delete();
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: x */
    private boolean m5908x() {
        boolean z;
        if (this.bHh || isPaused() || agW() || isCompleted() || isFailed()) {
            if (this.bHc != null) {
                this.bHc.m6023c();
            }
            m5938ae();
            return false;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = 0;
        while (!this.bHh && !isPaused() && !agW() && !isCompleted() && !isFailed()) {
            if (SystemClock.elapsedRealtime() - elapsedRealtime <= bnz.f1796f) {
                bov.C2544a agN = this.bHc.agN();
                if (agN != null) {
                    boz m5982ka = this.bHb.m5982ka(agN.f1851a);
                    if (m5982ka == null) {
                        m5939a(false, -42, "inner error: getRange null for sectionId:" + agN.f1851a, boq.FAILED);
                        return false;
                    } else if (m5982ka.f1865e != agN.f1852b) {
                        m5939a(false, -42, "inner error: check offset fail for section:" + m5982ka + ",buffer offset:" + agN.f1852b + ",sectionId:" + agN.f1851a, boq.FAILED);
                        return false;
                    } else {
                        try {
                            if (this.bHe.getFilePointer() != agN.f1852b) {
                                this.bHe.seek(agN.f1852b);
                            }
                            this.bHe.write(agN.f1853c, 0, (int) agN.f1854d);
                            m5982ka.f1865e = agN.f1852b + agN.f1854d;
                            i = (int) (i + agN.f1854d);
                            agN.f1853c = null;
                            if (this.f1938ag && bot.agK().m6041h()) {
                                m5936aw();
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                            if (!(e instanceof NullPointerException)) {
                                int i2 = -50;
                                if (!this.bHd.exists()) {
                                    i2 = -14;
                                } else if (boh.m6081e(e)) {
                                    i2 = -12;
                                } else if (boh.m6080f(e)) {
                                    i2 = -17;
                                }
                                m5939a(false, i2, "saveData fail.|" + e, boq.FAILED);
                                z = false;
                            }
                        }
                    }
                }
                z = false;
                break;
            }
            z = true;
            this.bHm.getAndIncrement();
            break;
        }
        if (this.bHc != null) {
            this.bHc.m6023c();
        }
        z = false;
        if (!z) {
            m5936aw();
        }
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        if (this.bHk != null) {
            this.bHk.m6031a(i, (int) (elapsedRealtime2 - elapsedRealtime));
        }
        if (i > 0) {
            m5934az();
        }
        if (this.bHh || isPaused() || agW() || isCompleted() || isFailed()) {
            m5938ae();
        } else if (this.f1946g > 0) {
            long m5987d = this.bHb.m5987d();
            if (elapsedRealtime2 - this.f1939am > bnz.m6128f() || m5987d == this.f1946g) {
                if (i > 0 && !this.f1929C) {
                    try {
                        this.bHe.getFD().sync();
                    } catch (Throwable th) {
                    }
                }
                this.bGV = m5987d;
                this.bHi.m6013c(boq.DOWNLOADING);
                this.f1939am = elapsedRealtime2;
            }
            if (m5987d == this.f1946g) {
                this.bHk.m6029c();
                this.f1957v = elapsedRealtime2;
                m5935ay();
            } else if (m5987d > this.f1946g) {
                m5939a(false, -42, "inner error: receivedLength > detectLength:" + m5987d + " > " + this.f1946g, boq.FAILED);
                m5909t();
            }
        }
        return z;
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KF */
    public final long mo5959KF() {
        if (this.f1945f > 0) {
            return this.f1945f;
        }
        if (this.f1946g > 0) {
            return this.f1946g;
        }
        try {
            return this.bHb.f1911a;
        } catch (Exception e) {
            return 0L;
        }
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KG */
    public final long mo5958KG() {
        return this.bGV;
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KH */
    public final String mo5957KH() {
        return this.f1952n;
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KI */
    public final String mo5956KI() {
        String str = "";
        try {
            str = new File(this.f1947h, this.f1934O).getAbsolutePath();
        } catch (Exception e) {
        }
        return TextUtils.isEmpty(str) ? this.f1947h + "/" + this.f1934O : str;
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KJ */
    public final boq mo5955KJ() {
        return this.bHi.agO();
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KK */
    public final String mo5954KK() {
        return this.f1934O;
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KL */
    public final int mo5953KL() {
        long mo5959KF = mo5959KF();
        if (mo5959KF == -1 && this.bHb != null) {
            mo5959KF = this.bHb.f1911a;
        }
        if (mo5959KF <= 0) {
            return 0;
        }
        return (int) ((this.bGV * 100) / mo5959KF);
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: KN */
    public final int mo5952KN() {
        return this.f1954r;
    }

    /* renamed from: a */
    public final void m5950a(int i) {
        if (this.f1937ac < i) {
            this.f1937ac = i;
        }
    }

    /* renamed from: a */
    public final void m5949a(int i, String str) {
        if (!isRunning() || this.bHq == null) {
            return;
        }
        this.bHq.m5996a(new bpd.C2549a(System.currentTimeMillis() - this.bHa, i, str));
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: a */
    public final void mo5947a(bon bonVar) {
        if (bonVar != null) {
            this.bGS = bonVar;
        }
    }

    @Override // com.kingroot.kinguser.bom
    /* renamed from: a */
    public final void mo5946a(bop bopVar) {
        if (this.bGU != bopVar) {
            this.bGU = bopVar;
        }
    }

    /* renamed from: a */
    public final void m5940a(boolean z) {
        if (agW()) {
            return;
        }
        if (!isRunning() && z) {
            m5909t();
            agS();
            if (this.bGT) {
                agT();
            }
        }
        if (z) {
            this.bHj = z;
        }
        m5939a(true, 0, "", boq.DELETED);
    }

    /* renamed from: a */
    public final void m5939a(boolean z, int i, String str, boq boqVar) {
        this.bHh = true;
        this.bGY = z;
        if (!this.bGY) {
            this.f1954r = i;
            this.f1955s = str;
        }
        this.bHi.m6013c(boqVar);
        C2554b c2554b = this.bHp;
        try {
            if (c2554b.bHw != null) {
                c2554b.bHw.m6003d();
            }
            if (c2554b.bHx != null) {
                c2554b.bHx.m6003d();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.kingroot.kinguser.bog
    /* renamed from: a */
    public final boolean mo5951a() {
        return this.bHh;
    }

    public final void addHeader(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equalsIgnoreCase("range")) {
            return;
        }
        this.f1944e.put(str, str2);
    }

    public final String afq() {
        if (this.bHp != null) {
            C2554b c2554b = this.bHp;
            StringBuilder sb = new StringBuilder();
            if (c2554b.bHw != null) {
                sb.append(c2554b.bHw.m6001f());
            }
            if (c2554b.bHx != null) {
                sb.append(c2554b.bHx.m6001f());
            }
            return sb.toString();
        }
        return "";
    }

    @Override // com.kingroot.kinguser.bom
    public final String agD() {
        return this.f1947h;
    }

    @Override // com.kingroot.kinguser.bom
    public final String agE() {
        return this.f1948i;
    }

    @Override // com.kingroot.kinguser.bom
    public final boolean agF() {
        synchronized (this.bHi) {
            boq agO = this.bHi.agO();
            if (agO == boq.STARTED || agO == boq.DOWNLOADING || agO == boq.COMPLETE || agO == boq.PENDING) {
                return true;
            }
            if (agO == boq.DELETED || this.bHi.m6011e()) {
                return false;
            }
            this.bGY = false;
            this.bHh = false;
            this.bGo = true;
            this.f1953q = 0;
            this.bHu = false;
            m5933b();
            return true;
        }
    }

    @Override // com.kingroot.kinguser.bom
    public final boolean agG() {
        return this.bHi.agO() == boq.PENDING;
    }

    @Override // com.kingroot.kinguser.bom
    public final long agH() {
        return this.f1949j;
    }

    @Override // com.kingroot.kinguser.bom
    public final int agI() {
        long j = this.f1949j;
        if (j <= 10 || this.f1946g <= 0) {
            return -1;
        }
        return (int) ((this.bGV * 1000) / j);
    }

    public final boolean agU() {
        return this.bGo;
    }

    public final boolean agW() {
        return this.bHi.agO() == boq.DELETED;
    }

    public final synchronized String agX() {
        return this.f1955s;
    }

    public final long agY() {
        return this.f1945f;
    }

    public final bon agZ() {
        return this.bGS;
    }

    public final boolean aha() {
        return this.bGS == bon.Cate_DefaultEase;
    }

    public final boolean ahb() {
        return this.bHu;
    }

    /* renamed from: b */
    public final void m5933b() {
        this.bGZ = SystemClock.elapsedRealtime();
        try {
            this.bHi.m6013c(boq.PENDING);
            if (this.bGS != bon.Cate_DefaultEase) {
                addHeader("Connection", "close");
            }
            this.bHr = bpr.ahd().m5886a(this, this.bGS);
        } catch (Exception e) {
            throw new bnx(new StringBuilder().append(e).toString());
        }
    }

    /* renamed from: c */
    public final long m5930c() {
        return this.f1946g;
    }

    /* renamed from: cC */
    public final void m5928cC() {
        if (this.bHs) {
            File file = new File(this.f1947h, this.f1934O);
            if (file.exists()) {
                try {
                    this.bHt = bny.m6135c(file);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        bpi bpiVar = (bpi) obj;
        int ordinal = bpiVar.bGU.ordinal() - this.bGU.ordinal();
        return ordinal == 0 ? (int) (this.bGZ - bpiVar.bGZ) : ordinal;
    }

    /* renamed from: d */
    public final boolean m5927d() {
        return bnz.m6122mL(this.f1948i);
    }

    @Override // com.kingroot.kinguser.box
    /* renamed from: e */
    public final boolean mo5925e() {
        if (isRunning()) {
            return m5908x();
        }
        return false;
    }

    /* renamed from: f */
    public final int m5923f() {
        return this.bHi.m6010f();
    }

    /* renamed from: g */
    public final int m5921g() {
        return this.f1937ac;
    }

    @Override // com.kingroot.kinguser.bom
    public final String getId() {
        return this.f1941b;
    }

    @Override // com.kingroot.kinguser.bom
    public final String getUrl() {
        return this.bGR.bGL.f1920a;
    }

    /* renamed from: h */
    public final boolean m5919h() {
        return this.bHl;
    }

    /* renamed from: i */
    public final long m5917i() {
        if (this.bHk != null) {
            return this.bHk.m6028d();
        }
        return -1L;
    }

    @Override // com.kingroot.kinguser.bom
    public final boolean isCompleted() {
        return this.bHi.agO() == boq.COMPLETE;
    }

    public final boolean isFailed() {
        return this.bHi.agO() == boq.FAILED;
    }

    @Override // com.kingroot.kinguser.bom
    public final boolean isPaused() {
        return this.bHi.agO() == boq.PAUSED;
    }

    @Override // com.kingroot.kinguser.bom
    public final boolean isRunning() {
        return this.bHi.agO() == boq.STARTED || this.bHi.agO() == boq.DOWNLOADING;
    }

    /* renamed from: j */
    public final long m5915j() {
        if (this.bHc != null) {
            return this.bHc.m6025a();
        }
        return 0L;
    }

    /* renamed from: k */
    public final long m5914k() {
        if (this.bHb != null) {
            return this.bHb.m5984g();
        }
        return 0L;
    }

    /* renamed from: l */
    public final String m5913l() {
        return this.bHq != null ? this.bHq.m5997a() : "";
    }

    /* renamed from: m */
    public final String m5912m() {
        return this.bGR != null ? this.bGR.m5977a() : "";
    }

    /* renamed from: o */
    public final String m5911o() {
        if (this.bHp != null) {
            C2554b c2554b = this.bHp;
            StringBuilder sb = new StringBuilder();
            if (c2554b.bHw != null) {
                sb.append(c2554b.bHw.m6000g());
            }
            if (c2554b.bHx != null) {
                sb.append(c2554b.bHx.m6000g());
            }
            return sb.toString();
        }
        return "";
    }

    /* renamed from: p */
    public final String m5910p() {
        if (this.bHp != null) {
            C2554b c2554b = this.bHp;
            StringBuilder sb = new StringBuilder();
            if (c2554b.bHw != null) {
                sb.append(c2554b.bHw.m5999h());
            }
            if (c2554b.bHx != null) {
                sb.append(c2554b.bHx.m5999h());
            }
            return sb.toString();
        }
        return "";
    }

    @Override // com.kingroot.kinguser.bom
    public final void pause() {
        boq agO = this.bHi.agO();
        if (agO == boq.PENDING || agO == boq.STARTED || agO == boq.DOWNLOADING) {
            if (this.bHb != null) {
                bpf bpfVar = this.bHb;
                long m5985f = bpfVar.m5985f();
                if (m5985f > 0 && m5985f == bpfVar.f1911a) {
                    return;
                }
            }
            m5939a(true, 0, "", boq.PAUSED);
            try {
                if (this.bHr != null) {
                    this.bHr.m5900a();
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1954r = 0;
        this.f1955s = "";
        this.bHa = System.currentTimeMillis();
        this.f1956u = SystemClock.elapsedRealtime();
        this.f1939am = 0L;
        synchronized (this.bHp) {
            this.f1946g = -1L;
        }
        this.f1959x = false;
        this.f1927A = -1;
        this.f1958w = 0;
        this.f1935Y = 0;
        this.bGX.set(0L);
        if (this.bHh) {
            return;
        }
        this.bHi.m6014c();
        this.bHc = new bov();
        this.bHk = new bou(this);
        this.bHk.m6032a();
        boolean m5937av = m5937av();
        this.bHi.m6013c(boq.STARTED);
        this.bHq = new bpd();
        m5949a(boe.m6088f(), boe.f1824a);
        if (!m5937av) {
            m5939a(false, this.f1954r, this.f1955s, boq.FAILED);
        } else if (this.bHb.m5986e()) {
            m5935ay();
        } else {
            boh ahc = this.bHp.ahc();
            if (ahc.f1834a != 0) {
                m5939a(false, ahc.f1834a, ahc.f1835b, boq.FAILED);
            }
        }
        this.bHi.m6012d();
        if (this.bHc != null) {
            this.bHc.m6023c();
        }
        m5938ae();
        if (this.bHj) {
            m5909t();
            agS();
            if (this.bGT) {
                agT();
            }
        } else if (isCompleted()) {
            m5909t();
        }
        this.bGX.set(0L);
        this.bHq = null;
        C2554b c2554b = this.bHp;
        c2554b.bHw = null;
        c2554b.bHx = null;
    }
}
