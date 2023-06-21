package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.ByteField */
/* loaded from: classes.dex */
public final class ByteField extends NumberField {
    private byte bDV;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteField(byte b, int i) {
        super(i);
        this.bDV = b;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public Number getNumber() {
        return Byte.valueOf(this.bDV);
    }

    public byte get() {
        return this.bDV;
    }

    public void set(byte b) {
        this.bDV = b;
    }
}
