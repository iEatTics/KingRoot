package com.kingroot.kinguser;
/* loaded from: classes.dex */
class aad implements aaf {

    /* renamed from: Xo */
    private static aad f1226Xo = null;

    private aad() {
    }

    /* renamed from: pJ */
    public static aad m13008pJ() {
        if (f1226Xo == null) {
            f1226Xo = new aad();
        }
        return f1226Xo;
    }

    @Override // com.kingroot.kinguser.aaf
    /* renamed from: C */
    public byte[] mo12989C(byte[] bArr) {
        return aac.encode(bArr, 0);
    }

    @Override // com.kingroot.kinguser.aaf
    /* renamed from: D */
    public byte[] mo12988D(byte[] bArr) {
        return aac.decode(bArr, 0);
    }
}
