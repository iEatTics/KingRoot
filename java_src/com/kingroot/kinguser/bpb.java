package com.kingroot.kinguser;

import com.kingroot.kinguser.bnv;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class bpb implements bob, bog, Runnable {
    private bph bGj;
    private bog bGk;
    private bpa bGl;
    public boz bGm;
    public bpg bGn;
    private boc bGr;

    /* renamed from: c */
    private boolean f1873c;

    /* renamed from: e */
    private long f1874e;

    /* renamed from: h */
    private Map f1875h;

    /* renamed from: q */
    private String f1878q;

    /* renamed from: r */
    private boolean f1879r;

    /* renamed from: i */
    private int f1876i = 0;

    /* renamed from: j */
    private String f1877j = "";
    private boolean bGo = false;
    private boolean bGp = false;
    private long bGq = 0;
    private Object bGs = new Object();
    private bpe bGt = new bpe();

    /* renamed from: com.kingroot.kinguser.bpb$a */
    /* loaded from: classes.dex */
    class C2548a implements bnv.InterfaceC2536a {
        public List bFl;
        private bnv bGu;

        /* renamed from: c */
        private String f1880c;

        /* renamed from: d */
        private long f1881d;

        /* renamed from: e */
        private int f1882e = 5;
        private CountDownLatch bGv = new CountDownLatch(1);

        public C2548a(bpb bpbVar, bnv bnvVar, String str, long j) {
            this.bGu = bnvVar;
            this.f1880c = str;
            this.f1881d = j;
        }

        /* renamed from: a */
        public final void m5998a() {
            this.bGu.m6146a(this.f1880c, this.f1881d, this.f1882e, this);
            try {
                this.bGv.await(this.f1882e, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
            }
        }
    }

    public bpb(bph bphVar, boolean z, long j, bog bogVar, bpa bpaVar, Map map, boolean z2) {
        this.f1873c = true;
        this.f1874e = -1L;
        this.f1875h = null;
        this.f1879r = true;
        this.bGj = bphVar;
        this.f1873c = z;
        this.f1874e = j;
        this.bGt.f1886a = z;
        this.bGk = bogVar;
        this.bGl = bpaVar;
        this.f1875h = map;
        this.f1879r = z2;
    }

    @Override // com.kingroot.kinguser.bog
    /* renamed from: a */
    public final boolean mo5951a() {
        if (this.bGo || this.bGk == null) {
            return true;
        }
        return this.bGk.mo5951a();
    }

    /* renamed from: b */
    public final int m6006b() {
        return this.f1876i;
    }

    @Override // com.kingroot.kinguser.bob
    /* renamed from: b */
    public final boolean mo6005b(byte[] bArr, int i, boolean z) {
        boolean z2;
        int i2;
        if (this.bGl != null) {
            if (this.bGm.f1866f + i >= this.bGm.f1867g) {
                i2 = (int) (this.bGm.f1867g - this.bGm.f1866f);
                z2 = false;
            } else {
                z2 = true;
                i2 = i;
            }
            boolean mo5906a = this.bGl.mo5906a(this, this.bGm.f1866f, bArr, i2, z) & z2;
            this.bGq += i2;
            return mo5906a;
        }
        return true;
    }

    /* renamed from: c */
    public final String m6004c() {
        return this.f1877j;
    }

    /* renamed from: d */
    public final void m6003d() {
        try {
            this.bGo = true;
            if (this.bGr != null) {
                this.bGr.agx();
            }
            synchronized (this.bGs) {
                this.bGs.notifyAll();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: e */
    public final boolean m6002e() {
        return this.bGp;
    }

    /* renamed from: f */
    public final String m6001f() {
        return this.bGt != null ? this.bGt.m5994a() : "";
    }

    /* renamed from: g */
    public final String m6000g() {
        return this.bGt != null ? this.bGt.toString() : "";
    }

    /* renamed from: h */
    public final String m5999h() {
        StringBuilder sb = new StringBuilder();
        sb.append(new StringBuilder().append(this.f1873c ? 0 : 1).toString()).append(",");
        sb.append(",");
        sb.append(",");
        sb.append(this.f1878q).append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(",");
        sb.append(new StringBuilder().append(this.f1876i).toString()).append(",");
        sb.append(",");
        sb.append(",");
        sb.append(";");
        return sb.toString();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @Override // java.lang.Runnable
    public final void run() {
        /*
            Method dump skipped, instructions count: 1860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bpb.run():void");
    }
}
