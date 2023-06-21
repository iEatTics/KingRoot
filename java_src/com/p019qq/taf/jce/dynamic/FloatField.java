package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.FloatField */
/* loaded from: classes.dex */
public class FloatField extends NumberField {
    private float bDX;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FloatField(float f, int i) {
        super(i);
        this.bDX = f;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public Number getNumber() {
        return Float.valueOf(this.bDX);
    }

    public void set(float f) {
        this.bDX = f;
    }

    public float get() {
        return this.bDX;
    }
}
