package com.tencent.feedback.common;

import android.content.Context;
import android.util.Log;
import com.tencent.feedback.proguard.C4135p;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.tencent.feedback.common.c */
/* loaded from: classes.dex */
public final class C4071c {

    /* renamed from: E */
    private static C4071c f4419E = null;

    /* renamed from: W */
    private static Class<?> f4420W;

    /* renamed from: X */
    private static Method f4421X;

    /* renamed from: C */
    private List<C4135p> f4424C;

    /* renamed from: F */
    private final long f4426F;

    /* renamed from: V */
    private final Object f4442V;

    /* renamed from: a */
    private final Context f4443a;

    /* renamed from: b */
    private final byte f4444b;

    /* renamed from: c */
    private String f4445c;

    /* renamed from: d */
    private String f4446d;

    /* renamed from: e */
    private final String f4447e;

    /* renamed from: f */
    private final String f4448f;

    /* renamed from: g */
    private final String f4449g;

    /* renamed from: h */
    private final String f4450h;

    /* renamed from: i */
    private final String f4451i;

    /* renamed from: j */
    private String f4452j = "10000";

    /* renamed from: k */
    private String f4453k = "unknown";

    /* renamed from: l */
    private long f4454l = 0;

    /* renamed from: m */
    private String f4455m = "";

    /* renamed from: n */
    private String f4456n = null;

    /* renamed from: o */
    private String f4457o = null;

    /* renamed from: p */
    private String f4458p = null;

    /* renamed from: q */
    private String f4459q = null;

    /* renamed from: r */
    private String f4460r = null;

    /* renamed from: s */
    private String f4461s = null;

    /* renamed from: t */
    private String f4462t = null;

    /* renamed from: u */
    private long f4463u = -1;

    /* renamed from: v */
    private long f4464v = -1;

    /* renamed from: w */
    private long f4465w = -1;

    /* renamed from: x */
    private String f4466x = null;

    /* renamed from: y */
    private String f4467y = null;

    /* renamed from: z */
    private Map<String, PlugInInfo> f4468z = null;

    /* renamed from: A */
    private boolean f4422A = true;

    /* renamed from: B */
    private String f4423B = null;

    /* renamed from: D */
    private Boolean f4425D = null;

    /* renamed from: G */
    private boolean f4427G = true;

    /* renamed from: H */
    private String f4428H = null;

    /* renamed from: I */
    private int f4429I = -1;

    /* renamed from: J */
    private int f4430J = -1;

    /* renamed from: K */
    private Map<String, String> f4431K = new HashMap();

    /* renamed from: L */
    private Map<String, String> f4432L = new HashMap();

    /* renamed from: M */
    private final Object f4433M = new Object();

    /* renamed from: N */
    private final Object f4434N = new Object();

    /* renamed from: O */
    private final Object f4435O = new Object();

    /* renamed from: P */
    private final Object f4436P = new Object();

    /* renamed from: Q */
    private final Object f4437Q = new Object();

    /* renamed from: R */
    private final Object f4438R = new Object();

    /* renamed from: S */
    private final Object f4439S = new Object();

    /* renamed from: T */
    private final Object f4440T = new Object();

    /* renamed from: U */
    private final Object f4441U = new Object();

    static {
        f4420W = null;
        f4421X = null;
        try {
            Class<?> cls = Class.forName("com.tencent.feedback.eup.jni.NativeExceptionUpload");
            f4420W = cls;
            f4421X = cls.getDeclaredMethod("putKeyValueToNative", String.class, String.class);
        } catch (Throwable th) {
            Log.w("eup", th.getMessage());
        }
    }

    /* renamed from: b */
    private static boolean m1080b(String str, String str2) {
        if (f4420W == null || f4421X == null) {
            return false;
        }
        try {
            return ((Boolean) f4421X.invoke(f4420W, str, str2)).booleanValue();
        } catch (Throwable th) {
            Log.w("eup", th.getMessage());
            return false;
        }
    }

    private C4071c(Context context) {
        Context applicationContext;
        new Object();
        this.f4442V = new Object();
        C4073e.m1015b("rqdp{  init cominfo}", new Object[0]);
        if (context == null) {
            applicationContext = context;
        } else {
            applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
        }
        this.f4443a = applicationContext;
        C4072d.m1041a(this.f4443a);
        this.f4444b = (byte) 1;
        this.f4445c = C4068a.m1126b(context);
        this.f4446d = C4068a.m1124c(context);
        this.f4447e = "1.9.14";
        this.f4448f = C4072d.m1025l();
        this.f4449g = C4072d.m1042a();
        this.f4450h = "Android " + C4072d.m1040b() + ",level " + C4072d.m1038c();
        String str = this.f4449g + ";" + this.f4450h;
        this.f4426F = new Date().getTime();
        this.f4451i = C4068a.m1117i(this.f4443a);
    }

    /* renamed from: a */
    public static synchronized C4071c m1088a(Context context) {
        C4071c c4071c;
        synchronized (C4071c.class) {
            if (f4419E == null) {
                f4419E = new C4071c(context);
            }
            c4071c = f4419E;
        }
        return c4071c;
    }

    /* renamed from: a */
    public static C4071c m1091a() {
        return f4419E;
    }

    /* renamed from: b */
    public final byte m1082b() {
        return (byte) 1;
    }

    /* renamed from: c */
    public final synchronized String m1078c() {
        return this.f4445c;
    }

    /* renamed from: d */
    public final String m1075d() {
        return this.f4447e;
    }

    /* renamed from: e */
    public final String m1073e() {
        return this.f4448f;
    }

    /* renamed from: f */
    public final String m1071f() {
        return this.f4449g;
    }

    /* renamed from: g */
    public final String m1069g() {
        return this.f4450h;
    }

    /* renamed from: h */
    public final synchronized String m1067h() {
        return this.f4452j;
    }

    /* renamed from: a */
    public final synchronized void m1087a(String str) {
        if (str != null) {
            if (str.trim().length() != 0 && !str.equals("10000")) {
                this.f4452j = str;
            }
        }
    }

    /* renamed from: i */
    public final synchronized String m1065i() {
        return (this.f4455m == null || this.f4455m.length() == 0) ? m1053p() : this.f4455m;
    }

    /* renamed from: b */
    public final synchronized void m1081b(String str) {
        this.f4455m = str;
        if (str != null) {
            m1076c(false);
        }
    }

    /* renamed from: j */
    public final synchronized String m1063j() {
        return this.f4453k;
    }

    /* renamed from: c */
    public final synchronized void m1077c(String str) {
        this.f4453k = str;
    }

    /* renamed from: k */
    public final synchronized long m1061k() {
        return this.f4454l;
    }

    /* renamed from: a */
    public final synchronized void m1089a(long j) {
        this.f4454l = j;
    }

    /* renamed from: l */
    public final String m1059l() {
        String str;
        synchronized (this.f4433M) {
            if (this.f4456n == null) {
                this.f4456n = C4068a.m1122d(this.f4443a);
            }
            str = this.f4456n;
        }
        return str;
    }

    /* renamed from: m */
    public final String m1057m() {
        String str;
        synchronized (this.f4434N) {
            if (this.f4458p == null) {
                this.f4458p = C4068a.m1118h(this.f4443a);
            }
            str = this.f4458p;
        }
        return str;
    }

    /* renamed from: n */
    public final boolean m1055n() {
        boolean z;
        synchronized (this.f4434N) {
            z = this.f4458p != null;
        }
        return z;
    }

    /* renamed from: d */
    public final void m1074d(String str) {
        synchronized (this.f4434N) {
            this.f4458p = str;
        }
    }

    /* renamed from: o */
    public final String m1054o() {
        String str;
        synchronized (this.f4435O) {
            if (this.f4459q == null) {
                this.f4459q = C4068a.m1128a(this.f4443a);
                if (this.f4459q == null || this.f4459q.equals("")) {
                    this.f4459q = this.f4445c;
                }
            }
            str = this.f4459q;
        }
        return str;
    }

    /* renamed from: e */
    public final void m1072e(String str) {
        synchronized (this.f4435O) {
            this.f4459q = str;
        }
    }

    /* renamed from: p */
    public final String m1053p() {
        String str;
        if (!m1092Q()) {
            return "";
        }
        synchronized (this.f4436P) {
            if (this.f4457o == null) {
                C4072d.m1041a(this.f4443a);
                this.f4457o = C4072d.m1039b(this.f4443a);
            }
            str = this.f4457o;
        }
        return str;
    }

    /* renamed from: q */
    public final String m1052q() {
        String str;
        if (!m1092Q()) {
            return "";
        }
        synchronized (this.f4437Q) {
            if (this.f4460r == null) {
                C4072d.m1041a(this.f4443a);
                this.f4460r = C4072d.m1033e(this.f4443a);
            }
            str = this.f4460r;
        }
        return str;
    }

    /* renamed from: r */
    public final String m1051r() {
        String str;
        if (!m1092Q()) {
            return "";
        }
        synchronized (this.f4438R) {
            if (this.f4461s == null) {
                C4072d.m1041a(this.f4443a);
                this.f4461s = C4072d.m1037c(this.f4443a);
            }
            str = this.f4461s;
        }
        return str;
    }

    /* renamed from: s */
    public final String m1050s() {
        String str;
        if (!m1092Q()) {
            return "";
        }
        synchronized (this.f4439S) {
            if (this.f4462t == null) {
                C4072d.m1041a(this.f4443a);
                this.f4462t = C4072d.m1035d(this.f4443a);
            }
            str = this.f4462t;
        }
        return str;
    }

    /* renamed from: t */
    public final long m1049t() {
        long j;
        synchronized (this.f4440T) {
            if (this.f4463u <= 0) {
                C4072d.m1041a(this.f4443a);
                this.f4463u = C4072d.m1034e();
            }
            j = this.f4463u;
        }
        return j;
    }

    /* renamed from: u */
    public final long m1048u() {
        long j;
        synchronized (this.f4440T) {
            if (this.f4464v <= 0) {
                C4072d.m1041a(this.f4443a);
                this.f4464v = C4072d.m1030g();
            }
            j = this.f4464v;
        }
        return j;
    }

    /* renamed from: v */
    public final long m1047v() {
        long j;
        synchronized (this.f4440T) {
            if (this.f4465w <= 0) {
                this.f4465w = C4072d.m1041a(this.f4443a).m1028i();
            }
            j = this.f4465w;
        }
        return j;
    }

    /* renamed from: w */
    public final synchronized String m1046w() {
        if (this.f4466x == null) {
            C4072d.m1041a(this.f4443a);
            this.f4466x = C4072d.m1036d();
        }
        return this.f4466x;
    }

    /* renamed from: x */
    public final String m1045x() {
        String str;
        synchronized (this.f4442V) {
            if (this.f4467y == null) {
                this.f4467y = C4072d.m1041a(this.f4443a).m1024m();
            }
            str = this.f4467y;
        }
        return str;
    }

    /* renamed from: y */
    public final synchronized Map<String, PlugInInfo> m1044y() {
        return this.f4468z;
    }

    /* renamed from: Q */
    private synchronized boolean m1092Q() {
        return this.f4422A;
    }

    /* renamed from: c */
    private synchronized void m1076c(boolean z) {
        this.f4422A = false;
    }

    /* renamed from: z */
    public final synchronized Map<String, PlugInInfo> m1043z() {
        HashMap hashMap;
        if (this.f4468z == null || this.f4468z.size() <= 0) {
            hashMap = null;
        } else {
            hashMap = new HashMap(this.f4468z.size());
            hashMap.putAll(this.f4468z);
        }
        return hashMap;
    }

    /* renamed from: a */
    public final synchronized boolean m1085a(String str, String str2, String str3) {
        boolean z = true;
        synchronized (this) {
            if (str == null || str2 == null || str3 == null) {
                z = false;
            } else {
                if (this.f4468z == null) {
                    this.f4468z = new HashMap();
                }
                this.f4468z.put(str, new PlugInInfo(str, str2, str3));
                C4073e.m1017a("add %s %s %s", str, str2, str3);
            }
        }
        return z;
    }

    /* renamed from: f */
    public final synchronized void m1070f(String str) {
        if (str != null) {
            if (this.f4468z != null) {
                this.f4468z.remove(str);
            }
        }
    }

    /* renamed from: A */
    public final String m1108A() {
        if (this.f4423B == null) {
            C4072d.m1041a(this.f4443a);
            this.f4423B = C4072d.m1026k();
        }
        return this.f4423B;
    }

    /* renamed from: g */
    public final void m1068g(String str) {
        this.f4423B = str;
    }

    /* renamed from: B */
    public final synchronized List<C4135p> m1107B() {
        return this.f4424C;
    }

    /* renamed from: a */
    public final synchronized void m1084a(List<C4135p> list) {
        this.f4424C = list;
    }

    /* renamed from: h */
    public final synchronized void m1066h(String str) {
        this.f4446d = str;
    }

    /* renamed from: C */
    public final synchronized String m1106C() {
        return this.f4446d;
    }

    /* renamed from: a */
    public final void m1083a(boolean z) {
        synchronized (this.f4441U) {
            this.f4425D = Boolean.valueOf(z);
        }
    }

    /* renamed from: D */
    public final boolean m1105D() {
        boolean booleanValue;
        synchronized (this.f4441U) {
            if (this.f4425D == null) {
                this.f4425D = Boolean.valueOf(C4080i.m972a(this.f4443a).m973a());
            }
            booleanValue = this.f4425D.booleanValue();
        }
        return booleanValue;
    }

    /* renamed from: E */
    public final long m1104E() {
        return this.f4426F;
    }

    /* renamed from: b */
    public final void m1079b(boolean z) {
        this.f4427G = z;
    }

    /* renamed from: F */
    public final boolean m1103F() {
        return this.f4427G;
    }

    /* renamed from: i */
    public final void m1064i(String str) {
        this.f4428H = str;
    }

    /* renamed from: G */
    public final String m1102G() {
        return this.f4428H;
    }

    /* renamed from: H */
    public final String m1101H() {
        return this.f4451i;
    }

    /* renamed from: j */
    public final synchronized void m1062j(String str) {
        this.f4445c = str;
    }

    /* renamed from: a */
    public final synchronized void m1090a(int i) {
        int i2 = this.f4429I;
        if (i2 != i) {
            this.f4429I = i;
            C4073e.m1017a("user scene tag %d changed to tag %d", Integer.valueOf(i2), Integer.valueOf(this.f4429I));
        }
    }

    /* renamed from: I */
    public final synchronized int m1100I() {
        return this.f4429I;
    }

    /* renamed from: J */
    public final synchronized int m1099J() {
        return this.f4430J;
    }

    /* renamed from: K */
    public final synchronized Map<String, String> m1098K() {
        return this.f4431K.size() <= 0 ? null : new HashMap(this.f4431K);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (r5.trim().length() > 0) goto L5;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized String m1060k(String str) {
        String remove;
        boolean z = false;
        synchronized (this) {
            if (str != null) {
            }
            z = true;
            if (z) {
                C4073e.m1013c("key should not be empty %s", str);
                remove = null;
            } else {
                remove = this.f4431K.remove(str);
            }
        }
        return remove;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (r5.trim().length() > 0) goto L5;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized String m1058l(String str) {
        String str2;
        boolean z = false;
        synchronized (this) {
            if (str != null) {
            }
            z = true;
            if (z) {
                C4073e.m1013c("key should not be empty %s", str);
                str2 = null;
            } else {
                str2 = this.f4431K.get(str);
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void m1086a(String str, String str2) {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            if (str != null) {
                if (str.trim().length() > 0) {
                    z = false;
                    if (!z) {
                        if (str2 == null || str2.trim().length() <= 0) {
                            z2 = true;
                        }
                        if (!z2) {
                            m1080b(str, str2);
                            this.f4431K.put(str, str2);
                        }
                    }
                    C4073e.m1013c("key&value should not be empty %s %s", str, str2);
                }
            }
            z = true;
            if (!z) {
            }
            C4073e.m1013c("key&value should not be empty %s %s", str, str2);
        }
    }

    /* renamed from: L */
    public final synchronized int m1097L() {
        return this.f4431K.size();
    }

    /* renamed from: M */
    public final synchronized Set<String> m1096M() {
        return this.f4431K.keySet();
    }

    /* renamed from: N */
    public final synchronized Map<String, String> m1095N() {
        return this.f4432L.size() <= 0 ? null : new HashMap(this.f4432L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (r5.trim().length() > 0) goto L5;
     */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized String m1056m(String str) {
        String str2;
        boolean z = false;
        synchronized (this) {
            if (str != null) {
            }
            z = true;
            if (z) {
                C4073e.m1013c("key should not be empty %s", str);
                str2 = null;
            } else {
                str2 = this.f4432L.get(str);
            }
        }
        return str2;
    }

    /* renamed from: O */
    public final synchronized int m1094O() {
        return this.f4432L.size();
    }

    /* renamed from: P */
    public final synchronized Set<String> m1093P() {
        return this.f4432L.keySet();
    }
}
