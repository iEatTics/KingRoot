package com.kingroot.kinguser;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class cel {
    private static final char[] bOM = "0123456789abcdef".toCharArray();

    /* renamed from: C */
    public static byte[] m4772C(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: Y */
    public static String m4771Y(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 3);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append(bOM[i >> 4]);
            sb.append(bOM[i & 15]);
        }
        return sb.toString().toUpperCase();
    }

    /* renamed from: Z */
    public static String m4770Z(byte[] bArr) {
        return m4771Y(m4772C(bArr));
    }
}
