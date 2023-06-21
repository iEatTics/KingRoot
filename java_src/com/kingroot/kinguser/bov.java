package com.kingroot.kinguser;

import java.util.LinkedList;
/* loaded from: classes.dex */
public final class bov {

    /* renamed from: a */
    private volatile long f1849a = 0;
    private volatile LinkedList byZ = new LinkedList();

    /* renamed from: c */
    private Object f1850c = new Object();

    /* renamed from: com.kingroot.kinguser.bov$a */
    /* loaded from: classes.dex */
    public static class C2544a {

        /* renamed from: a */
        public int f1851a;

        /* renamed from: b */
        public long f1852b;

        /* renamed from: c */
        public byte[] f1853c;

        /* renamed from: d */
        public long f1854d;

        public C2544a(int i, long j, byte[] bArr, long j2) {
            this.f1851a = -1;
            this.f1851a = i;
            this.f1852b = j;
            this.f1853c = bArr;
            this.f1854d = j2;
        }
    }

    /* renamed from: a */
    public final long m6025a() {
        return this.f1849a;
    }

    /* renamed from: a */
    public final void m6024a(int i, long j, byte[] bArr, long j2) {
        synchronized (this.f1850c) {
            LinkedList linkedList = this.byZ;
            byte[] bArr2 = new byte[(int) j2];
            System.arraycopy(bArr, 0, bArr2, 0, (int) j2);
            linkedList.addLast(new C2544a(i, j, bArr2, j2));
            this.f1849a += j2;
        }
    }

    public final C2544a agN() {
        C2544a c2544a;
        synchronized (this.f1850c) {
            if (this.byZ.size() > 0) {
                c2544a = (C2544a) this.byZ.removeFirst();
                this.f1849a -= c2544a.f1854d;
            } else {
                c2544a = null;
            }
        }
        return c2544a;
    }

    /* renamed from: c */
    public final void m6023c() {
        synchronized (this.f1850c) {
            do {
            } while (agN() != null);
        }
    }
}
