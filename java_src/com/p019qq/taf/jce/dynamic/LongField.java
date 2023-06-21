package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.LongField */
/* loaded from: classes.dex */
public class LongField extends NumberField {
    private long bEa;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LongField(long j, int i) {
        super(i);
        this.bEa = j;
    }

    @Override // com.p019qq.taf.jce.dynamic.NumberField
    public Number getNumber() {
        return Long.valueOf(this.bEa);
    }

    public long get() {
        return this.bEa;
    }

    public void set(long j) {
        this.bEa = j;
    }
}
