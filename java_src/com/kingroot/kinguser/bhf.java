package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bhf {
    private String bpN = "";
    private String bpO = "";
    private long bpP = -1;
    private String bpQ = "";
    private String bpR = "";
    private String bpS = "";
    private long bpT = -1;
    private String bpU = "";
    private String bpV = "";
    private int bpW = -1;
    private String bpX = "";
    private String bpY = "";
    private int bpZ = -1;
    private String bqa = "";
    private int bqb = -1;
    private int bqc = -1;
    private final List<String> bqd = new ArrayList();
    private int bqe = -1;
    private final List<String> bqf = new ArrayList();

    /* renamed from: com.kingroot.kinguser.bhf$a */
    /* loaded from: classes.dex */
    public class C2278a {
        public final String bqg;
        public final String bqh;
        public final long bqi;
        public final String bqj;
        public final String bqk;
        public final String bql;
        public final long bqm;
        public final String bqn;
        public final String bqo;
        public final int bqp;
        public final String bqq;
        public final String bqr;
        public final int bqs;
        public final String bqt;
        public final int bqu;
        public final int bqv;
        public final List<String> bqw;
        public final int bqx;
        public final List<String> bqy;

        public C2278a() {
            this.bqg = bhf.this.bpN;
            this.bqh = bhf.this.bpO;
            this.bqi = bhf.this.bpP;
            this.bqj = bhf.this.bpQ;
            this.bqk = bhf.this.bpR;
            this.bql = bhf.this.bpS;
            this.bqm = bhf.this.bpT;
            this.bqn = bhf.this.bpU;
            this.bqo = bhf.this.bpV;
            this.bqp = bhf.this.bpW;
            this.bqq = bhf.this.bpX;
            this.bqr = bhf.this.bpY;
            this.bqs = bhf.this.bpZ;
            this.bqt = bhf.this.bqa;
            this.bqu = bhf.this.bqb;
            this.bqv = bhf.this.bqc;
            this.bqw = Collections.unmodifiableList(bhf.this.bqd);
            this.bqx = bhf.this.bqe;
            this.bqy = Collections.unmodifiableList(bhf.this.bqf);
        }
    }

    /* renamed from: lu */
    public bhf m7019lu(String str) {
        this.bpN = aab.m13016dH(str);
        return this;
    }

    /* renamed from: lv */
    public bhf m7018lv(String str) {
        this.bpO = aab.m13016dH(str);
        return this;
    }

    /* renamed from: cz */
    public bhf m7038cz(long j) {
        this.bpP = j;
        return this;
    }

    /* renamed from: lw */
    public bhf m7017lw(String str) {
        this.bpQ = aab.m13016dH(str);
        return this;
    }

    /* renamed from: lx */
    public bhf m7016lx(String str) {
        this.bpR = aab.m13016dH(str);
        return this;
    }

    /* renamed from: ly */
    public bhf m7015ly(String str) {
        this.bpS = aab.m13016dH(str);
        return this;
    }

    /* renamed from: cA */
    public bhf m7041cA(long j) {
        this.bpT = j;
        return this;
    }

    /* renamed from: lz */
    public bhf m7014lz(String str) {
        this.bpU = aab.m13016dH(str);
        return this;
    }

    /* renamed from: lA */
    public bhf m7024lA(String str) {
        this.bpX = aab.m13016dH(str);
        return this;
    }

    /* renamed from: lB */
    public bhf m7023lB(String str) {
        this.bpY = aab.m13016dH(str);
        return this;
    }

    /* renamed from: iL */
    public bhf m7031iL(int i) {
        this.bpZ = i;
        return this;
    }

    /* renamed from: iM */
    public bhf m7030iM(int i) {
        this.bqe = i;
        return this;
    }

    /* renamed from: bU */
    public bhf m7043bU(List<String> list) {
        this.bqf.addAll(list);
        return this;
    }

    /* renamed from: lC */
    private List<String> m7022lC(String str) {
        return TextUtils.isEmpty(str) ? new ArrayList() : Arrays.asList(str.split("\\+"));
    }

    public String toString() {
        return aco();
    }

    public String aco() {
        String[] acp = acp();
        if (acp.length == 0) {
            return "";
        }
        if (acp.length == 1) {
            return acp[0];
        }
        StringBuilder sb = new StringBuilder(1000);
        sb.append(acp[0]);
        for (int i = 1; i < acp.length; i++) {
            sb.append(",").append(acp[i]);
        }
        return sb.toString();
    }

    /* renamed from: lD */
    private String m7021lD(String str) {
        return m7039cN(aab.m13016dH(str));
    }

    /* renamed from: iN */
    private String m7029iN(int i) {
        return i < 0 ? "" : Integer.toString(i);
    }

    /* renamed from: cB */
    private String m7040cB(long j) {
        return j < 0 ? "" : Long.toString(j);
    }

    public String[] acp() {
        return new String[]{m7021lD(this.bpN), m7021lD(this.bpO), m7040cB(this.bpP), m7021lD(this.bpQ), m7021lD(this.bpR), m7021lD(this.bpS), m7040cB(this.bpT), m7021lD(this.bpU), m7021lD(this.bpV), m7029iN(this.bpW), m7021lD(this.bpX), m7021lD(this.bpY), m7029iN(this.bpZ), m7021lD(this.bqa), m7029iN(this.bqb), m7029iN(this.bqc), m7045a(this.bqd, "+", true), m7029iN(this.bqe), m7045a(this.bqf, "+", true)};
    }

    /* renamed from: lE */
    public boolean m7020lE(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String[] split = str.split(",", 20);
        if (split.length < 19) {
            return false;
        }
        try {
            long parseLong = TextUtils.isEmpty(split[2]) ? -1L : Long.parseLong(split[2]);
            long parseLong2 = TextUtils.isEmpty(split[6]) ? -1L : Long.parseLong(split[6]);
            int parseInt = TextUtils.isEmpty(split[9]) ? -1 : Integer.parseInt(split[9]);
            int parseInt2 = TextUtils.isEmpty(split[12]) ? -1 : Integer.parseInt(split[12]);
            int parseInt3 = TextUtils.isEmpty(split[14]) ? -1 : Integer.parseInt(split[14]);
            int parseInt4 = TextUtils.isEmpty(split[15]) ? -1 : Integer.parseInt(split[15]);
            int parseInt5 = TextUtils.isEmpty(split[17]) ? -1 : Integer.parseInt(split[17]);
            this.bpN = split[0];
            this.bpO = split[1];
            this.bpP = parseLong;
            this.bpQ = split[3];
            this.bpR = split[4];
            this.bpS = split[5];
            this.bpT = parseLong2;
            this.bpU = split[7];
            this.bpV = split[8];
            this.bpW = parseInt;
            this.bpX = split[10];
            this.bpY = split[11];
            this.bpZ = parseInt2;
            this.bqa = split[13];
            this.bqb = parseInt3;
            this.bqc = parseInt4;
            this.bqd.clear();
            this.bqd.addAll(m7022lC(split[16]));
            this.bqe = parseInt5;
            this.bqf.clear();
            this.bqf.addAll(m7022lC(split[18]));
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public C2278a acq() {
        return new C2278a();
    }

    /* renamed from: j */
    private static String m7027j(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str3)) {
            return str3.replace(str, str2);
        }
        return str3;
    }

    /* renamed from: cN */
    private static String m7039cN(String str) {
        return m7027j("+", "%2B", m7027j("\n", "%0A", m7027j("|", "%7C", m7027j(";", "%3B", m7027j(",", "%2C", str)))));
    }

    /* renamed from: a */
    public static String m7045a(List<String> list, String str, boolean z) {
        if (C3942yy.m1351d(list)) {
            return "";
        }
        StringBuilder sb = new StringBuilder(1000);
        Iterator<String> it = list.iterator();
        String m13016dH = aab.m13016dH(it.next());
        if (z) {
            m13016dH = m7039cN(m13016dH);
        }
        sb.append(m13016dH);
        while (it.hasNext()) {
            String m13016dH2 = aab.m13016dH(it.next());
            if (z) {
                m13016dH2 = m7039cN(m13016dH2);
            }
            sb.append(str).append(m13016dH2);
        }
        return sb.toString();
    }
}
