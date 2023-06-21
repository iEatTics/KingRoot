package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.ZeroField */
/* loaded from: classes.dex */
public final class ZeroField extends NumberField {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ZeroField(int i) {
        super(i);
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public Number getNumber() {
        return 0;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public byte byteValue() {
        return (byte) 0;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public double doubleValue() {
        return 0.0d;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public float floatValue() {
        return 0.0f;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public int intValue() {
        return 0;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public long longValue() {
        return 0L;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public short shortValue() {
        return (short) 0;
    }
}
