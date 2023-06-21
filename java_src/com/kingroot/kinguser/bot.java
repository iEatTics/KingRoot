package com.kingroot.kinguser;

import android.os.SystemClock;
import android.text.TextUtils;
import com.kingroot.kinguser.boe;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;
/* loaded from: classes.dex */
public final class bot implements boe.InterfaceC2540a, boo, box {
    private static bot bFJ = null;
    private Vector bFK = new Vector();
    private bow bFL = new bow(this);
    private bnv bFM;

    private bot() {
        boe.m6092a(this);
    }

    /* renamed from: a */
    private static void m6053a(bpi bpiVar, int i) {
        if (bpiVar == null) {
            return;
        }
        try {
            if (bnz.f1795e) {
                HashMap hashMap = new HashMap();
                hashMap.put("B1", bpiVar.f1952n);
                hashMap.put("B2", bok.m6064d());
                hashMap.put("B3", bok.m6063e());
                hashMap.put("B4", new StringBuilder().append(bok.m6062f()).toString());
                if (!TextUtils.isEmpty(bnz.f1791a)) {
                    hashMap.put("B5", bnz.f1791a);
                }
                hashMap.put("B6", boi.m6075b());
                if (!TextUtils.isEmpty(bpiVar.f1942c)) {
                    hashMap.put("B7", bpiVar.f1942c);
                }
                if (!TextUtils.isEmpty(bpiVar.f1943d)) {
                    hashMap.put("B8", bpiVar.f1943d);
                }
                if (!TextUtils.isEmpty(bnz.f1792b)) {
                    hashMap.put("B9", bnz.f1792b);
                }
                if (!TextUtils.isEmpty(bnz.f1793c)) {
                    hashMap.put("B10", bnz.f1793c);
                }
                hashMap.put("C11", new StringBuilder().append(boh.m6083b()).toString());
                hashMap.put("C12", new StringBuilder().append(boh.m6085a()).toString());
                hashMap.put("C13", bpiVar.mo5956KI());
                hashMap.put("B14", new StringBuilder().append(bpiVar.m5930c()).toString());
                hashMap.put("B15", new StringBuilder().append(bpiVar.f1949j).toString());
                long currentTimeMillis = System.currentTimeMillis();
                hashMap.put("C16", new StringBuilder().append(bpiVar.bHa).toString());
                hashMap.put("C17", new StringBuilder().append(currentTimeMillis).toString());
                hashMap.put("B18", new StringBuilder().append(bpiVar.f1936a).toString());
                hashMap.put("B19", bpiVar.f1941b);
                hashMap.put("C20", bok.m6066b(bpiVar.agX()));
                int mo5952KN = bpiVar.mo5952KN();
                if (i == 0) {
                    mo5952KN = 0;
                }
                hashMap.put("B21", new StringBuilder().append(mo5952KN).toString());
                hashMap.put("B22", new StringBuilder().append(i).toString());
                hashMap.put("B23", bpiVar.m5910p());
                if (!TextUtils.isEmpty(bpiVar.f1961z)) {
                    hashMap.put("B24", bpiVar.f1961z);
                }
                hashMap.put("B25", new StringBuilder().append(boe.m6088f()).toString());
                hashMap.put("C26", bpiVar.m5912m());
                hashMap.put("C27", new StringBuilder().append(bpiVar.f1927A).toString());
                hashMap.put("B28", new StringBuilder().append(bpiVar.agU() ? 1 : 0).toString());
                hashMap.put("B85", new StringBuilder().append(bpiVar.agZ().ordinal()).toString());
                hashMap.put("B33", new StringBuilder().append(bpiVar.m5914k()).toString());
                hashMap.put("B34", new StringBuilder().append(bpiVar.agY()).toString());
                hashMap.put("C37", bpiVar.afq());
                if (i != 0) {
                    bpiVar.f1957v = SystemClock.elapsedRealtime();
                }
                long j = -1;
                if (bpiVar.f1956u > 0 && bpiVar.f1957v > bpiVar.f1956u) {
                    j = bpiVar.f1957v - bpiVar.f1956u;
                }
                hashMap.put("B38", new StringBuilder().append(j).toString());
                hashMap.put("B41", new StringBuilder().append(bpiVar.mo5958KG()).toString());
                hashMap.put("B44", new StringBuilder().append(bpiVar.bGW).toString());
                hashMap.put("B45", new StringBuilder().append(bpiVar.bGX.getAndSet(0L)).toString());
                if (bpiVar.f1959x) {
                    hashMap.put("B46", "1");
                }
                if (i == 0 && bpiVar.m5923f() > 1000) {
                    hashMap.put("C48", new StringBuilder().append(bpiVar.m5923f()).toString());
                }
                hashMap.put("B66", new StringBuilder().append(bpiVar.m5921g()).toString());
                if (bpiVar.m5917i() > 1000) {
                    hashMap.put("C72", new StringBuilder().append(bpiVar.m5917i()).toString());
                }
                if (bpiVar.m5919h()) {
                    hashMap.put("C74", "1");
                }
                if (i == 0 && bpiVar.f1928B > 0) {
                    hashMap.put("B77", new StringBuilder().append(bpiVar.f1928B).toString());
                }
                hashMap.put("C78", bpiVar.m5911o());
                hashMap.put("C79", bpiVar.m5913l());
                if (!TextUtils.isEmpty(bpiVar.f1960y)) {
                    hashMap.put("C80", bpiVar.f1960y);
                }
                if (!TextUtils.isEmpty(bpiVar.bHt)) {
                    hashMap.put("C82", bpiVar.bHt);
                    hashMap.put("B83", new StringBuilder().append(bpiVar.f1931F).toString());
                }
                if (!TextUtils.isEmpty(bpiVar.f1930D)) {
                    hashMap.put("C86", bpiVar.f1930D);
                }
                if (i == 2 && bpiVar.ahb()) {
                    hashMap.put("B87", "1");
                }
                boj.m6073b(bpiVar.aha() ? "HLDownTiny" : "B_DLSDK_Result", i == 0, 0L, 0L, hashMap, true);
            }
        } finally {
        }
    }

    public static synchronized bot agK() {
        bot botVar;
        synchronized (bot.class) {
            if (bFJ == null) {
                bFJ = new bot();
            }
            botVar = bFJ;
        }
        return botVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000f A[Catch: all -> 0x0027, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0009, B:7:0x000f, B:9:0x001b, B:12:0x0022), top: B:19:0x0003 }] */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m6038j() {
        synchronized (this.bFK) {
            Iterator it = this.bFK.iterator();
            while (it.hasNext()) {
                bpi bpiVar = (bpi) it.next();
                if (bpiVar.isRunning() || bpiVar.agG()) {
                    return true;
                }
                while (it.hasNext()) {
                }
            }
            return false;
        }
    }

    @Override // com.kingroot.kinguser.boe.InterfaceC2540a
    /* renamed from: a */
    public final void mo6055a(int i, String str) {
        List<bom> m6048d = m6048d();
        if (m6048d == null || m6048d.size() <= 0) {
            return;
        }
        for (bom bomVar : m6048d) {
            ((bpi) bomVar).m5949a(i, str);
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: a */
    public final void mo6054a(bom bomVar) {
        if (m6038j()) {
            this.bFL.m6022a();
        } else {
            this.bFL.m6021b();
        }
    }

    public final List agL() {
        LinkedList linkedList = new LinkedList();
        synchronized (this.bFK) {
            linkedList.addAll(this.bFK);
        }
        return linkedList;
    }

    public final bnv agM() {
        return this.bFM;
    }

    /* renamed from: b */
    public final void m6052b() {
        if (this.bFL != null) {
            this.bFL.m6020c();
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: b */
    public final void mo6051b(bom bomVar) {
    }

    /* renamed from: b */
    public final void m6050b(bom bomVar, boolean z) {
        if (bomVar == null) {
            return;
        }
        ((bpi) bomVar).m5940a(z);
        synchronized (this.bFK) {
            this.bFK.remove(bomVar);
        }
        m6053a((bpi) bomVar, 3);
        if (m6038j()) {
            this.bFL.m6022a();
        } else {
            this.bFL.m6021b();
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: c */
    public final void mo6049c(bom bomVar) {
    }

    /* renamed from: d */
    public final List m6048d() {
        LinkedList linkedList = new LinkedList();
        synchronized (this.bFK) {
            Iterator it = this.bFK.iterator();
            while (it.hasNext()) {
                bpi bpiVar = (bpi) it.next();
                if (bpiVar.isRunning()) {
                    linkedList.add(bpiVar);
                }
            }
        }
        return linkedList;
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: d */
    public final void mo6047d(bom bomVar) {
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: e */
    public final void mo6046e(bom bomVar) {
        if (m6038j()) {
            this.bFL.m6022a();
        } else {
            this.bFL.m6021b();
        }
    }

    @Override // com.kingroot.kinguser.box
    /* renamed from: e */
    public final boolean mo5925e() {
        List m6048d = m6048d();
        boolean z = false;
        int size = m6048d.size();
        Iterator it = m6048d.iterator();
        while (true) {
            boolean z2 = z;
            if (!it.hasNext()) {
                return z2;
            }
            bpi bpiVar = (bpi) ((bom) it.next());
            bpiVar.m5950a(size);
            z = bpiVar.mo5925e() ? true : z2;
        }
    }

    /* renamed from: f */
    public final long m6045f() {
        long j = 0;
        synchronized (this.bFK) {
            Iterator it = this.bFK.iterator();
            while (it.hasNext()) {
                bpi bpiVar = (bpi) it.next();
                j = bpiVar.isRunning() ? bpiVar.m5915j() + j : j;
            }
        }
        return j;
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: f */
    public final void mo6044f(bom bomVar) {
        if (m6038j()) {
            this.bFL.m6022a();
        } else {
            this.bFL.m6021b();
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: g */
    public final void mo6042g(bom bomVar) {
        if (m6038j()) {
            this.bFL.m6022a();
        } else {
            this.bFL.m6021b();
        }
    }

    /* renamed from: g */
    public final boolean m6043g() {
        return m6045f() > 4194304;
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: h */
    public final void mo6040h(bom bomVar) {
    }

    /* renamed from: h */
    public final boolean m6041h() {
        return m6045f() < 2097152;
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: i */
    public final void mo6039i(bom bomVar) {
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: j */
    public final void mo6037j(bom bomVar) {
        m6053a((bpi) bomVar, 2);
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: k */
    public final void mo6036k(bom bomVar) {
        m6053a((bpi) bomVar, 1);
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: l */
    public final void mo6035l(bom bomVar) {
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: m */
    public final void mo6034m(bom bomVar) {
        m6053a((bpi) bomVar, 0);
    }

    /* renamed from: p */
    public final void m6033p(bom bomVar) {
        String str;
        if (bomVar == null || !(bomVar instanceof bpi)) {
            str = "param task not illegal.";
        } else {
            bpi bpiVar = (bpi) bomVar;
            synchronized (this) {
                if (bok.m6069a(bpiVar.f1948i)) {
                    bpiVar.f1948i = "";
                }
                if (bnz.m6122mL(bpiVar.f1948i)) {
                    Iterator it = agL().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            str = "";
                            break;
                        }
                        bom bomVar2 = (bom) it.next();
                        if (bpiVar.f1947h.equalsIgnoreCase(bomVar2.agD())) {
                            if (bpiVar.f1948i.equalsIgnoreCase(((bpi) bomVar2).m5927d() ? bomVar2.agE() : bomVar2.mo5954KK())) {
                                str = "Can not add new task, another task exists with the same path:" + bpiVar.f1947h + "/" + bpiVar.f1948i;
                                break;
                            }
                        }
                    }
                    if (!"".equals(str)) {
                    }
                } else {
                    str = "";
                }
                synchronized (this.bFK) {
                    this.bFK.add(bpiVar);
                }
                try {
                    bpiVar.m5933b();
                } catch (bnx e) {
                    str = e.getLocalizedMessage();
                    synchronized (this.bFK) {
                        this.bFK.remove(bpiVar);
                    }
                }
            }
        }
        if (!"".equals(str)) {
            throw new bnx(str);
        }
    }
}
