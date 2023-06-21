package com.kingroot.kinguser;
/* loaded from: classes.dex */
public abstract class brl implements Comparable<brl> {
    public int bKb;
    String bKc;
    private final int bKa = -1;
    public int bKd = -1;
    public int bKe = -1;
    protected int mState = 2;
    public int bKf = 0;
    public long bKg = 0;

    public abstract void ahF();

    /* renamed from: kd */
    public abstract void mo5640kd(int i);

    public abstract void onClick();

    public int getState() {
        return this.mState;
    }

    public boolean ahG() {
        return (this.bKe == 0 || this.bKd == 0 || ahH()) ? false : true;
    }

    private boolean ahH() {
        return this.bKb < ((int) (System.currentTimeMillis() / 1000));
    }

    public void ahI() {
        this.bKb = ((int) (System.currentTimeMillis() / 1000)) - 5;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(brl brlVar) {
        if (this.bKf < brlVar.bKf) {
            return -1;
        }
        if (this.bKf > brlVar.bKf) {
            return 1;
        }
        return 0;
    }
}
