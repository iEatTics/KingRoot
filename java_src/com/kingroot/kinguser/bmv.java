package com.kingroot.kinguser;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public final class bmv {
    private static final String NAME = new String(bmu.m6308mp("414553"));

    /* renamed from: U */
    public static byte[] m6304U(byte[] bArr) {
        return bmm.m6381e(bArr).getBytes();
    }

    /* renamed from: a */
    public static byte[] m6303a(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, NAME);
        Cipher cipher = Cipher.getInstance(NAME);
        cipher.init(1, secretKeySpec);
        return cipher.doFinal(bArr2);
    }

    /* renamed from: b */
    public static byte[] m6302b(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, NAME);
        Cipher cipher = Cipher.getInstance(NAME);
        cipher.init(2, secretKeySpec);
        return cipher.doFinal(bArr2);
    }
}
