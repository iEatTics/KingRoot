package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class bpe {

    /* renamed from: a */
    public boolean f1886a;

    /* renamed from: b */
    public long f1887b;

    /* renamed from: c */
    public long f1888c;

    /* renamed from: d */
    public int f1889d = 0;

    /* renamed from: e */
    private List f1890e = new ArrayList();

    /* renamed from: com.kingroot.kinguser.bpe$a */
    /* loaded from: classes.dex */
    public static class C2550a {

        /* renamed from: a */
        public boolean f1891a;
        public long bEH;
        private int bGx;

        /* renamed from: c */
        public long f1893c;

        /* renamed from: d */
        public long f1894d;

        /* renamed from: e */
        public int f1895e;

        /* renamed from: t */
        private int f1909t;

        /* renamed from: u */
        private int f1910u;

        /* renamed from: b */
        public String f1892b = "";

        /* renamed from: f */
        public String f1896f = "";

        /* renamed from: g */
        public String f1897g = "";

        /* renamed from: h */
        public long f1898h = -1;

        /* renamed from: i */
        public String f1899i = "";

        /* renamed from: j */
        public String f1900j = "";

        /* renamed from: k */
        public String f1901k = "";

        /* renamed from: l */
        public String f1902l = "";

        /* renamed from: m */
        public String f1903m = "";

        /* renamed from: n */
        public int f1904n = -1;

        /* renamed from: o */
        public int f1905o = -1;

        /* renamed from: p */
        public String f1906p = "";

        /* renamed from: r */
        public String f1907r = "";

        /* renamed from: s */
        public String f1908s = "";

        public C2550a(int i, bpg bpgVar) {
            this.f1909t = i;
            this.f1910u = bpgVar.f1921c;
            this.bGx = bpgVar.bGA.ordinal();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f1909t);
            sb.append(",").append(this.f1910u);
            sb.append(",").append(this.bGx);
            sb.append(",").append(this.f1891a ? 1 : 0);
            sb.append(",").append(bok.m6066b(this.f1892b));
            sb.append(",").append(this.f1893c);
            sb.append(",").append(this.f1894d);
            sb.append(",").append(this.f1895e);
            sb.append(",").append(bok.m6066b(this.f1896f));
            sb.append(",").append(this.f1897g);
            sb.append(",").append(this.f1898h);
            sb.append(",").append(bok.m6066b(this.f1899i));
            sb.append(",").append(this.f1900j);
            sb.append(",").append(bok.m6066b("[" + this.f1901k + "]"));
            sb.append(",").append(bok.m6066b(this.f1902l));
            sb.append(",").append(bok.m6066b("[" + this.f1903m + "]"));
            sb.append(",").append(this.f1904n);
            sb.append(",").append(this.f1905o);
            sb.append(",").append(bok.m6066b(this.f1906p));
            sb.append(",").append(this.bEH);
            sb.append(",").append(this.f1907r);
            sb.append(",").append(this.f1908s);
            return sb.toString();
        }
    }

    /* renamed from: a */
    public final String m5994a() {
        StringBuilder sb = new StringBuilder();
        for (C2550a c2550a : this.f1890e) {
            sb.append(c2550a);
            sb.append(";");
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final void m5993a(C2550a c2550a) {
        if (this.f1890e.size() < 20) {
            this.f1890e.add(c2550a);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new StringBuilder().append(this.f1886a ? 0 : 1).toString()).append(",");
        sb.append(this.f1887b).append(",");
        sb.append(this.f1888c).append(",");
        sb.append(this.f1889d).append(";");
        return sb.toString();
    }
}
