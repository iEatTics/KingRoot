package com.kingroot.kinguser;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: com.kingroot.kinguser.jo */
/* loaded from: classes.dex */
public final class C3221jo {
    private static final String NAME = new String(C3309mi.m3075bs("414553"));

    /* renamed from: k */
    public static String m3378k(String str, String str2) {
        return C3309mi.m3073r(m3381a(m3379c(str.getBytes()), str2.getBytes()));
    }

    /* renamed from: l */
    public static String m3377l(String str, String str2) {
        return new String(m3380b(m3379c(str.getBytes()), C3309mi.m3075bs(str2)));
    }

    /* renamed from: c */
    public static byte[] m3379c(byte[] bArr) {
        return C3220jn.m3383a(bArr).getBytes();
    }

    /* renamed from: a */
    public static byte[] m3381a(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, NAME);
        Cipher cipher = Cipher.getInstance(NAME);
        cipher.init(1, secretKeySpec);
        return cipher.doFinal(bArr2);
    }

    /* renamed from: b */
    public static byte[] m3380b(byte[] bArr, byte[] bArr2) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, NAME);
        Cipher cipher = Cipher.getInstance(NAME);
        cipher.init(2, secretKeySpec);
        return cipher.doFinal(bArr2);
    }
}
