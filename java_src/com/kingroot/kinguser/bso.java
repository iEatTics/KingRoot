package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bso {
    public int bLT = -1;
    public int bLU = -1;
    public bsp bLV;

    /* renamed from: gw */
    public int f2068gw;
    public int weight;

    public boolean ahH() {
        return this.bLV != null && this.bLV.bKb < ((int) (System.currentTimeMillis() / 1000));
    }

    public boolean ahX() {
        return (this.bLT == 0 || this.bLU == 0) ? false : true;
    }

    public String toString() {
        return "DbUnifiedData [phase=" + this.f2068gw + ", displayMaxTimes=" + this.bLT + ", clickMaxTimes=" + this.bLU + ", weight=" + this.weight + ", unifiedAdData=" + this.bLV + "]";
    }
}
