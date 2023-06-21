package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bbv {
    private static final cce<bbv> sInstance = new cce<bbv>() { // from class: com.kingroot.kinguser.bbv.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: WT */
        public bbv create() {
            return new bbv();
        }
    };
    private volatile int bfK;
    private volatile int bfL;
    private volatile int bfM;
    private volatile boolean bfN;

    /* renamed from: WK */
    public static bbv m7771WK() {
        return sInstance.get();
    }

    private bbv() {
        this.bfK = 999;
        this.bfL = 999;
        this.bfM = 128;
    }

    /* renamed from: WL */
    public synchronized int m7770WL() {
        if (this.bfK == 999) {
            this.bfK = aks.m11143BP().getRootState();
        }
        return this.bfK;
    }

    /* renamed from: hT */
    public synchronized void m7761hT(int i) {
        this.bfK = i;
        aks.m11143BP().setRootState(this.bfK);
    }

    /* renamed from: WM */
    public synchronized int m7769WM() {
        if (this.bfL == 999) {
            this.bfL = aks.m11143BP().m11010ES();
        }
        return this.bfL;
    }

    /* renamed from: hU */
    public synchronized void m7760hU(int i) {
        this.bfL = i;
        aks.m11143BP().m10772eI(this.bfL);
    }

    /* renamed from: WN */
    public int m7768WN() {
        return this.bfM;
    }

    /* renamed from: hV */
    public void m7759hV(int i) {
        this.bfM = i;
    }

    /* renamed from: WO */
    public boolean m7767WO() {
        return this.bfN;
    }

    /* renamed from: dC */
    public void m7762dC(boolean z) {
        this.bfN = z;
    }

    /* renamed from: WP */
    public boolean m7766WP() {
        return bbu.m7775hP(m7770WL());
    }

    /* renamed from: WQ */
    public boolean m7765WQ() {
        return bbu.m7776hO(m7770WL());
    }

    /* renamed from: WR */
    public boolean m7764WR() {
        return bbu.m7773hR(m7770WL());
    }

    /* renamed from: WS */
    public boolean m7763WS() {
        return bbu.m7774hQ(m7770WL());
    }
}
