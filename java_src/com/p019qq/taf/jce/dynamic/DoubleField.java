package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.DoubleField */
/* loaded from: classes.dex */
public class DoubleField extends NumberField {
    private double bDW;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DoubleField(double d, int i) {
        super(i);
        this.bDW = d;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public Number getNumber() {
        return Double.valueOf(this.bDW);
    }

    public double get() {
        return this.bDW;
    }

    public void set(double d) {
        this.bDW = d;
    }
}
