package com.kingroot.kinguser;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public final class bmm {
    private static final char[] bBW = "0123456789abcdef".toCharArray();

    /* renamed from: e */
    public static String m6381e(byte[] bArr) {
        byte[] m6383Q = m6383Q(bArr);
        StringBuffer stringBuffer = new StringBuffer(m6383Q.length);
        for (byte b : m6383Q) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    /* renamed from: Q */
    private static byte[] m6383Q(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new String(bmu.m6308mp("4D4435")));
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: R */
    public static String m6382R(byte[] bArr) {
        byte[] m6380k = m6380k(bArr);
        StringBuilder sb = new StringBuilder(m6380k.length * 3);
        for (byte b : m6380k) {
            int i = b & 255;
            sb.append(bBW[i >> 4]);
            sb.append(bBW[i & 15]);
        }
        return sb.toString().toUpperCase();
    }

    /* renamed from: k */
    public static byte[] m6380k(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
