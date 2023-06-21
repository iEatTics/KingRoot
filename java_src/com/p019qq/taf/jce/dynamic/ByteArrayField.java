package com.p019qq.taf.jce.dynamic;
/* renamed from: com.qq.taf.jce.dynamic.ByteArrayField */
/* loaded from: classes.dex */
public class ByteArrayField extends JceField {
    private byte[] data;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteArrayField(byte[] bArr, int i) {
        super(i);
        this.data = bArr;
    }

    public byte[] get() {
        return this.data;
    }

    public void set(byte[] bArr) {
        this.data = bArr;
    }
}
