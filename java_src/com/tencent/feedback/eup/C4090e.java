package com.tencent.feedback.eup;

import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.PlugInInfo;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.tencent.feedback.eup.e */
/* loaded from: classes.dex */
public class C4090e implements Serializable {

    /* renamed from: F */
    private String f4545F;

    /* renamed from: G */
    private byte[] f4546G;

    /* renamed from: H */
    private Map<String, PlugInInfo> f4547H;

    /* renamed from: I */
    private String f4548I;

    /* renamed from: J */
    private boolean f4549J;

    /* renamed from: K */
    private boolean f4550K;

    /* renamed from: M */
    private String f4552M;

    /* renamed from: k */
    private String f4571k;

    /* renamed from: l */
    private String f4572l;

    /* renamed from: m */
    private String f4573m;

    /* renamed from: n */
    private String f4574n;

    /* renamed from: o */
    private long f4575o;

    /* renamed from: p */
    private String f4576p;

    /* renamed from: q */
    private int f4577q;

    /* renamed from: r */
    private byte[] f4578r;

    /* renamed from: s */
    private byte[] f4579s;

    /* renamed from: t */
    private String f4580t;

    /* renamed from: u */
    private String f4581u;

    /* renamed from: v */
    private String f4582v;

    /* renamed from: w */
    private String f4583w;

    /* renamed from: e */
    private long f4565e = -1;

    /* renamed from: f */
    private byte f4566f = 0;

    /* renamed from: g */
    private boolean f4567g = false;

    /* renamed from: h */
    private boolean f4568h = false;

    /* renamed from: i */
    private int f4569i = 0;

    /* renamed from: j */
    private String f4570j = "";

    /* renamed from: x */
    private long f4584x = -1;

    /* renamed from: y */
    private long f4585y = -1;

    /* renamed from: z */
    private long f4586z = -1;

    /* renamed from: A */
    private long f4540A = -1;

    /* renamed from: B */
    private long f4541B = -1;

    /* renamed from: C */
    private long f4542C = -1;

    /* renamed from: D */
    private long f4543D = -1;

    /* renamed from: E */
    private long f4544E = -1;

    /* renamed from: L */
    private String f4551L = null;

    /* renamed from: N */
    private String f4553N = "";

    /* renamed from: O */
    private String f4554O = "";

    /* renamed from: P */
    private String f4555P = "unknown";

    /* renamed from: Q */
    private String f4556Q = "";

    /* renamed from: R */
    private String f4557R = "";

    /* renamed from: S */
    private String f4558S = "";

    /* renamed from: a */
    public int f4561a = -1;

    /* renamed from: b */
    public int f4562b = -1;

    /* renamed from: c */
    public Map<String, String> f4563c = null;

    /* renamed from: d */
    public Map<String, String> f4564d = null;

    /* renamed from: T */
    private final Map<String, String> f4559T = new HashMap();

    /* renamed from: U */
    private long f4560U = -1;

    public C4090e() {
        try {
            this.f4548I = UUID.randomUUID().toString();
        } catch (Throwable th) {
            if (!C4073e.m1016a(th) && !C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            this.f4548I = "unknown";
        }
    }

    /* renamed from: a */
    public final long m889a() {
        return this.f4565e;
    }

    /* renamed from: a */
    public final void m885a(long j) {
        this.f4565e = j;
    }

    /* renamed from: b */
    public final boolean m880b() {
        return this.f4566f == 0;
    }

    /* renamed from: c */
    public final boolean m873c() {
        return this.f4567g;
    }

    /* renamed from: a */
    public final void m882a(boolean z) {
        this.f4567g = true;
    }

    /* renamed from: d */
    public final boolean m866d() {
        return this.f4566f == 2;
    }

    /* renamed from: e */
    public final String m861e() {
        return this.f4571k;
    }

    /* renamed from: a */
    public final void m884a(String str) {
        this.f4571k = str;
    }

    /* renamed from: f */
    public final String m858f() {
        return this.f4572l;
    }

    /* renamed from: b */
    public final void m877b(String str) {
        this.f4572l = str;
    }

    /* renamed from: g */
    public final String m855g() {
        return this.f4573m;
    }

    /* renamed from: c */
    public final void m870c(String str) {
        this.f4573m = str;
    }

    /* renamed from: h */
    public final String m852h() {
        return this.f4574n;
    }

    /* renamed from: d */
    public final void m863d(String str) {
        this.f4574n = str;
    }

    /* renamed from: i */
    public final long m849i() {
        return this.f4575o;
    }

    /* renamed from: b */
    public final void m878b(long j) {
        this.f4575o = j;
    }

    /* renamed from: a */
    public final void m887a(float f) {
    }

    /* renamed from: j */
    public final int m846j() {
        return this.f4569i;
    }

    /* renamed from: a */
    public final void m886a(int i) {
        this.f4569i = i;
    }

    /* renamed from: k */
    public final String m843k() {
        return this.f4570j;
    }

    /* renamed from: e */
    public final void m859e(String str) {
        this.f4570j = str;
    }

    /* renamed from: l */
    public final String m840l() {
        return this.f4576p;
    }

    /* renamed from: f */
    public final void m856f(String str) {
        this.f4576p = str;
    }

    /* renamed from: m */
    public final int m838m() {
        return this.f4577q;
    }

    /* renamed from: b */
    public final void m879b(int i) {
        this.f4577q = i;
    }

    /* renamed from: n */
    public final byte[] m836n() {
        return this.f4578r;
    }

    /* renamed from: a */
    public final void m881a(byte[] bArr) {
        this.f4578r = bArr;
    }

    /* renamed from: o */
    public final byte[] m834o() {
        return this.f4579s;
    }

    /* renamed from: b */
    public final void m874b(byte[] bArr) {
        this.f4579s = bArr;
    }

    /* renamed from: p */
    public final String m832p() {
        return this.f4580t;
    }

    /* renamed from: g */
    public final void m853g(String str) {
        this.f4580t = str;
    }

    /* renamed from: q */
    public final String m830q() {
        return this.f4581u;
    }

    /* renamed from: h */
    public final void m850h(String str) {
        this.f4581u = str;
    }

    /* renamed from: r */
    public final String m828r() {
        return this.f4582v;
    }

    /* renamed from: i */
    public final void m847i(String str) {
        this.f4582v = str;
    }

    /* renamed from: s */
    public final String m826s() {
        return this.f4583w;
    }

    /* renamed from: j */
    public final void m844j(String str) {
        this.f4583w = str;
    }

    /* renamed from: t */
    public final String m824t() {
        return this.f4545F;
    }

    /* renamed from: k */
    public final void m841k(String str) {
        this.f4545F = str;
    }

    /* renamed from: u */
    public final byte[] m822u() {
        return this.f4546G;
    }

    /* renamed from: c */
    public final void m867c(byte[] bArr) {
        this.f4546G = bArr;
    }

    /* renamed from: v */
    public final Map<String, PlugInInfo> m821v() {
        return this.f4547H;
    }

    /* renamed from: a */
    public final void m883a(Map<String, PlugInInfo> map) {
        this.f4547H = map;
    }

    /* renamed from: w */
    public final String m820w() {
        return this.f4548I;
    }

    /* renamed from: l */
    public final void m839l(String str) {
        this.f4548I = str;
    }

    /* renamed from: x */
    public final boolean m819x() {
        return this.f4549J;
    }

    /* renamed from: b */
    public final void m875b(boolean z) {
        this.f4549J = true;
    }

    /* renamed from: y */
    public final boolean m818y() {
        return this.f4566f == 3;
    }

    /* renamed from: z */
    public final String m817z() {
        return this.f4552M;
    }

    /* renamed from: m */
    public final void m837m(String str) {
        this.f4552M = str;
    }

    /* renamed from: A */
    public final String m913A() {
        return this.f4553N;
    }

    /* renamed from: n */
    public final void m835n(String str) {
        this.f4553N = str;
    }

    /* renamed from: B */
    public final String m912B() {
        return this.f4554O;
    }

    /* renamed from: o */
    public final void m833o(String str) {
        this.f4554O = str;
    }

    /* renamed from: C */
    public final String m911C() {
        return this.f4555P;
    }

    /* renamed from: p */
    public final void m831p(String str) {
        this.f4555P = str;
    }

    /* renamed from: D */
    public final Map<String, String> m910D() {
        return this.f4559T;
    }

    /* renamed from: E */
    public final String m909E() {
        return this.f4556Q;
    }

    /* renamed from: q */
    public final void m829q(String str) {
        this.f4556Q = str;
    }

    /* renamed from: c */
    public final void m868c(boolean z) {
        this.f4550K = z;
    }

    /* renamed from: F */
    public final boolean m908F() {
        return this.f4550K;
    }

    /* renamed from: r */
    public final void m827r(String str) {
        this.f4551L = str;
    }

    /* renamed from: G */
    public final String m907G() {
        return this.f4551L;
    }

    /* renamed from: H */
    public final boolean m906H() {
        return this.f4568h;
    }

    /* renamed from: d */
    public final void m862d(boolean z) {
        this.f4568h = true;
    }

    /* renamed from: I */
    public final long m905I() {
        return this.f4584x;
    }

    /* renamed from: c */
    public final void m871c(long j) {
        this.f4584x = j;
    }

    /* renamed from: J */
    public final long m904J() {
        return this.f4585y;
    }

    /* renamed from: d */
    public final void m864d(long j) {
        this.f4585y = j;
    }

    /* renamed from: K */
    public final long m903K() {
        return this.f4586z;
    }

    /* renamed from: e */
    public final void m860e(long j) {
        this.f4586z = j;
    }

    /* renamed from: L */
    public final long m902L() {
        return this.f4540A;
    }

    /* renamed from: f */
    public final void m857f(long j) {
        this.f4540A = j;
    }

    /* renamed from: M */
    public final long m901M() {
        return this.f4541B;
    }

    /* renamed from: g */
    public final void m854g(long j) {
        this.f4541B = j;
    }

    /* renamed from: N */
    public final long m900N() {
        return this.f4542C;
    }

    /* renamed from: h */
    public final void m851h(long j) {
        this.f4542C = j;
    }

    /* renamed from: O */
    public final long m899O() {
        return this.f4543D;
    }

    /* renamed from: i */
    public final void m848i(long j) {
        this.f4543D = j;
    }

    /* renamed from: P */
    public final long m898P() {
        return this.f4544E;
    }

    /* renamed from: j */
    public final void m845j(long j) {
        this.f4544E = j;
    }

    /* renamed from: Q */
    public final String m897Q() {
        return this.f4557R;
    }

    /* renamed from: s */
    public final void m825s(String str) {
        this.f4557R = str;
    }

    /* renamed from: R */
    public final String m896R() {
        return this.f4558S;
    }

    /* renamed from: t */
    public final void m823t(String str) {
        this.f4558S = str;
    }

    /* renamed from: S */
    public final byte m895S() {
        return this.f4566f;
    }

    /* renamed from: a */
    public final void m888a(byte b) {
        this.f4566f = b;
    }

    /* renamed from: T */
    public final long m894T() {
        return this.f4560U;
    }

    /* renamed from: k */
    public final void m842k(long j) {
        this.f4560U = j;
    }

    /* renamed from: U */
    public final int m893U() {
        return this.f4561a;
    }

    /* renamed from: c */
    public final void m872c(int i) {
        this.f4561a = i;
    }

    /* renamed from: V */
    public final int m892V() {
        return this.f4562b;
    }

    /* renamed from: d */
    public final void m865d(int i) {
        this.f4562b = i;
    }

    /* renamed from: W */
    public final Map<String, String> m891W() {
        return this.f4563c;
    }

    /* renamed from: b */
    public final void m876b(Map<String, String> map) {
        this.f4563c = map;
    }

    /* renamed from: X */
    public final Map<String, String> m890X() {
        return this.f4564d;
    }

    /* renamed from: c */
    public final void m869c(Map<String, String> map) {
        this.f4564d = map;
    }
}
