package com.kingroot.kinguser;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
class aai implements aag {
    private static final String NAME = C3971zq.get("a1");

    /* renamed from: Xy */
    private static aai f1236Xy = null;

    private aai() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: pK */
    public static aai m12998pK() {
        if (f1236Xy == null) {
            f1236Xy = new aai();
        }
        return f1236Xy;
    }

    @Override // com.kingroot.kinguser.aag
    /* renamed from: N */
    public String mo12985N(String str, String str2) {
        return aab.m13011w(encrypt(m12999G(str.getBytes()), str2.getBytes()));
    }

    @Override // com.kingroot.kinguser.aag
    /* renamed from: O */
    public String mo12984O(String str, String str2) {
        return new String(decrypt(m12999G(str.getBytes()), aab.m13014dJ(str2)));
    }

    @Override // com.kingroot.kinguser.aag
    public byte[] encrypt(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, NAME);
        Cipher cipher = Cipher.getInstance(NAME);
        cipher.init(1, secretKeySpec);
        return cipher.doFinal(bArr2);
    }

    @Override // com.kingroot.kinguser.aag
    public byte[] decrypt(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, NAME);
        Cipher cipher = Cipher.getInstance(NAME);
        cipher.init(2, secretKeySpec);
        return cipher.doFinal(bArr2);
    }

    /* renamed from: G */
    public static byte[] m12999G(byte[] bArr) {
        return aah.m13005E(bArr).getBytes();
    }
}
