package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public final class bpf {

    /* renamed from: a */
    public long f1911a;

    /* renamed from: b */
    public volatile long f1912b;

    /* renamed from: c */
    volatile long f1913c;

    /* renamed from: d */
    volatile long f1914d;

    /* renamed from: e */
    public boolean f1915e;

    /* renamed from: f */
    private long f1916f;

    /* renamed from: g */
    private String f1917g = "";

    /* renamed from: h */
    private String f1918h = "";

    /* renamed from: i */
    private List f1919i = new LinkedList();

    public bpf(String str) {
        this.f1911a = -1L;
        this.f1916f = 0L;
        this.f1912b = 0L;
        this.f1913c = 0L;
        this.f1914d = 0L;
        this.f1915e = false;
        this.f1915e = false;
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split = str.split("\\|");
                if (split == null || split.length == 0 || !split[0].equals("3.0") || split.length < 7) {
                    return;
                }
                try {
                    this.f1911a = Long.parseLong(split[1]);
                    this.f1912b = Long.parseLong(split[2]);
                    this.f1913c = Long.parseLong(split[3]);
                    this.f1914d = Long.parseLong(split[4]);
                    for (String str2 : split[5].split(";")) {
                        boz bozVar = new boz(this, str2);
                        if (!bozVar.f1861a) {
                            this.f1919i.clear();
                            return;
                        }
                        this.f1919i.add(bozVar);
                    }
                    if (split.length == 9) {
                        m5991a(split[7]);
                        m5989b(split[8]);
                    }
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    return;
                }
            } catch (Exception e2) {
                return;
            }
        }
        this.f1916f = m5983h();
        this.f1915e = true;
    }

    /* renamed from: h */
    private long m5983h() {
        long j;
        synchronized (this.f1919i) {
            j = 0;
            for (boz bozVar : this.f1919i) {
                j = (bozVar.f1865e - bozVar.f1864d) + j;
            }
        }
        return j;
    }

    /* renamed from: a */
    public final void m5991a(String str) {
        if (TextUtils.isEmpty(str) || str.equals("null")) {
            this.f1917g = "";
        } else {
            this.f1917g = str.replace("|", "");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
        return true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m5992a(boz bozVar) {
        if (bozVar.f1862b == -1) {
            synchronized (this.f1919i) {
                if (bozVar.f1863c == -1) {
                    if (this.f1919i.size() == 0) {
                        bozVar.f1862b = 0;
                        bozVar.f1867g = this.f1911a;
                        this.f1919i.add(bozVar);
                    }
                } else if (bozVar.f1863c < this.f1919i.size()) {
                    boz bozVar2 = null;
                    for (boz bozVar3 : this.f1919i) {
                        if (bozVar3.f1862b == bozVar.f1863c) {
                            if (bozVar3.f1866f >= bozVar3.f1867g) {
                                return false;
                            }
                            if (bozVar3.f1866f + bnz.m6131c() > bozVar.f1864d) {
                                return false;
                            }
                        } else if (bozVar3.f1867g > bozVar.f1864d && bozVar3.f1864d < bozVar.f1867g) {
                            return false;
                        } else {
                            bozVar3 = bozVar2;
                        }
                        bozVar2 = bozVar3;
                    }
                    if (bozVar2 == null) {
                        return false;
                    }
                    bozVar.f1862b = this.f1919i.size();
                    bozVar2.f1867g = bozVar.f1864d;
                    this.f1919i.add(bozVar);
                    return true;
                }
            }
        }
        return false;
    }

    public final boz agQ() {
        boz bozVar;
        boz bozVar2;
        synchronized (this.f1919i) {
            if (this.f1919i.size() == 0) {
                bozVar = new boz(this, 0L, 0L, 0L, -1L);
            } else {
                bozVar = (boz) this.f1919i.get(0);
                Iterator it = this.f1919i.iterator();
                while (true) {
                    bozVar2 = bozVar;
                    if (!it.hasNext()) {
                        bozVar = null;
                        break;
                    }
                    bozVar = (boz) it.next();
                    if (!bozVar.f1868h && bozVar.m6007cD(this.f1911a) > 0) {
                        break;
                    } else if (bozVar.m6007cD(this.f1911a) <= bozVar2.m6007cD(this.f1911a)) {
                        bozVar = bozVar2;
                    }
                }
                if (bozVar == null) {
                    long m6007cD = bozVar2.m6007cD(this.f1911a);
                    long j = bozVar2.f1866f;
                    if (m6007cD > (bnz.m6131c() << 1)) {
                        long j2 = j + (m6007cD / 2);
                        bozVar = new boz(this, j2, j2, j2, bozVar2.f1867g);
                        bozVar.f1863c = bozVar2.f1862b;
                    } else {
                        bozVar = null;
                    }
                }
            }
            if (bozVar != null) {
                bozVar.f1868h = true;
            }
        }
        return bozVar;
    }

    /* renamed from: b */
    public final String m5990b() {
        StringBuilder sb = new StringBuilder("3.0");
        sb.append("|");
        sb.append(this.f1911a);
        sb.append("|");
        sb.append(this.f1912b);
        sb.append("|");
        sb.append(this.f1913c);
        sb.append("|");
        sb.append(this.f1914d);
        sb.append("|");
        synchronized (this.f1919i) {
            for (boz bozVar : this.f1919i) {
                sb.append(bozVar.m6008a());
                sb.append(";");
            }
            if (this.f1919i.size() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        sb.append("|");
        sb.append("null");
        sb.append("|");
        if (TextUtils.isEmpty(this.f1917g)) {
            sb.append("null");
        } else {
            sb.append(this.f1917g);
        }
        sb.append("|");
        if (TextUtils.isEmpty(this.f1918h)) {
            sb.append("null");
        } else {
            sb.append(this.f1918h);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public final void m5989b(String str) {
        if (TextUtils.isEmpty(str) || str.equals("null")) {
            this.f1918h = "";
        } else {
            this.f1918h = str.replace("|", "");
        }
    }

    /* renamed from: c */
    public final String m5988c() {
        return this.f1918h;
    }

    /* renamed from: d */
    public final long m5987d() {
        return m5983h();
    }

    /* renamed from: e */
    public final boolean m5986e() {
        return this.f1911a > 0 && this.f1911a == m5983h();
    }

    /* renamed from: f */
    public final long m5985f() {
        long j;
        synchronized (this.f1919i) {
            j = 0;
            for (boz bozVar : this.f1919i) {
                j = (bozVar.f1866f - bozVar.f1864d) + j;
            }
        }
        return j;
    }

    /* renamed from: g */
    public final long m5984g() {
        return m5983h() - this.f1916f;
    }

    /* renamed from: ka */
    public final boz m5982ka(int i) {
        synchronized (this.f1919i) {
            try {
                boz bozVar = (boz) this.f1919i.get(i);
                if (bozVar != null) {
                    return bozVar;
                }
            } catch (Exception e) {
            }
            return null;
        }
    }

    public final String toString() {
        return m5990b();
    }
}
