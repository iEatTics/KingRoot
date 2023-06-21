package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.IntField */
/* loaded from: classes.dex */
public class IntField extends NumberField {
    private int data;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IntField(int i, int i2) {
        super(i2);
        this.data = i;
    }

    public int get() {
        return this.data;
    }

    public void set(int i) {
        this.data = i;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public Number getNumber() {
        return Integer.valueOf(this.data);
    }
}
