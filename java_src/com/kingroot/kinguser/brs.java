package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class brs {
    private static brs bKO;
    private bsd bKL;
    private bsb bKM;
    private bsg bKN;

    private brs() {
        bth.m5539i("DbMgr()");
        bsf bsfVar = new bsf(bre.ahy().getApplicationContext());
        this.bKL = new bsd(bsfVar);
        this.bKM = new bsb(bsfVar);
        this.bKN = new bsg();
    }

    public static brs ahJ() {
        if (bKO == null) {
            synchronized (brs.class) {
                if (bKO == null) {
                    bKO = new brs();
                }
            }
        }
        return bKO;
    }

    public bsd ahK() {
        return this.bKL;
    }

    public bsb ahL() {
        return this.bKM;
    }

    public bsg ahM() {
        return this.bKN;
    }
}
