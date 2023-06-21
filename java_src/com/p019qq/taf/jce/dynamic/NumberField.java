package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.NumberField */
/* loaded from: classes.dex */
public abstract class NumberField extends JceField {
    public abstract Number getNumber();

    /* JADX INFO: Access modifiers changed from: package-private */
    public NumberField(int i) {
        super(i);
    }

    public byte byteValue() {
        return getNumber().byteValue();
    }

    public double doubleValue() {
        return getNumber().doubleValue();
    }

    public float floatValue() {
        return getNumber().floatValue();
    }

    public int intValue() {
        return getNumber().intValue();
    }

    public long longValue() {
        return getNumber().longValue();
    }

    public short shortValue() {
        return getNumber().shortValue();
    }
}
