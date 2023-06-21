package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class aah {
    /* renamed from: cO */
    public static String m13002cO(String str) {
        return aab.m13021B(m13004F(str.getBytes()));
    }

    /* renamed from: E */
    public static String m13005E(byte[] bArr) {
        return aab.m13021B(m13004F(bArr));
    }

    /* renamed from: F */
    private static byte[] m13004F(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new String(aab.m13014dJ("4D4435")));
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    /* renamed from: G */
    public static byte[] m13003G(byte[] bArr) {
        return m13005E(bArr).getBytes();
    }

    /* renamed from: h */
    public static boolean m13001h(String str, File file) {
        String m13000w;
        if (TextUtils.isEmpty(str) || file == null || (m13000w = m13000w(file)) == null) {
            return false;
        }
        return m13000w.equalsIgnoreCase(str);
    }

    /* renamed from: w */
    public static String m13000w(File file) {
        FileInputStream fileInputStream;
        Throwable th;
        String str = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[8192];
            try {
                fileInputStream = new FileInputStream(file);
                while (true) {
                    try {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        messageDigest.update(bArr, 0, read);
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            throw new RuntimeException("Unable to process file for MD5" + th);
                        } finally {
                            C3945za.m1340c(fileInputStream);
                        }
                    }
                }
                str = String.format("%32s", new BigInteger(1, messageDigest.digest()).toString(16)).replace(' ', '0');
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
            }
        } catch (NoSuchAlgorithmException e) {
        }
        return str;
    }
}
