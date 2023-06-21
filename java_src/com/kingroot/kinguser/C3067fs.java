package com.kingroot.kinguser;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.kingroot.kinguser.fs */
/* loaded from: classes.dex */
public class C3067fs {

    /* renamed from: pZ */
    private static final char[] f2674pZ = "0123456789abcdef".toCharArray();

    /* renamed from: b */
    public static String m3831b(String str) {
        return C3069fu.m3825e(m3832a(str.getBytes()));
    }

    /* renamed from: a */
    private static byte[] m3832a(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new String(C3069fu.m3826ac("4D4435")));
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: g */
    public static String m3829g(byte[] bArr) {
        return m3828h(m3830c(bArr));
    }

    /* renamed from: c */
    public static byte[] m3830c(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: h */
    public static String m3828h(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 3);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append(f2674pZ[i >> 4]);
            sb.append(f2674pZ[i & 15]);
        }
        return sb.toString().toUpperCase();
    }
}
