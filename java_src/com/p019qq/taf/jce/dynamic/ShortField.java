package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.ShortField */
/* loaded from: classes.dex */
public final class ShortField extends NumberField {
    private short bEd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShortField(short s, int i) {
        super(i);
        this.bEd = s;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public Number getNumber() {
        return Short.valueOf(this.bEd);
    }

    public short get() {
        return this.bEd;
    }

    public void set(short s) {
        this.bEd = s;
    }
}
