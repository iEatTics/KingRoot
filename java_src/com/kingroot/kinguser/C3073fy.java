package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
/* renamed from: com.kingroot.kinguser.fy */
/* loaded from: classes.dex */
public class C3073fy {

    /* renamed from: qf */
    static char[] f2684qf = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public static boolean m3798a(String str, C3072fx c3072fx) {
        File file = new File(str);
        long length = file.length() - c3072fx.m3801j();
        if (length != Integer.valueOf(c3072fx.get("LEN")).intValue()) {
            return false;
        }
        return m3797i(m3799a(file, (int) length)).equals(c3072fx.get("MD5"));
    }

    /* renamed from: a */
    public static boolean m3800a(C3072fx c3072fx, C3072fx c3072fx2) {
        return (c3072fx == null || c3072fx2 == null || Integer.valueOf(c3072fx.get("BN")).intValue() > Integer.valueOf(c3072fx2.get("BN")).intValue()) ? false : true;
    }

    /* renamed from: a */
    static byte[] m3799a(File file, int i) {
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            int i2 = i;
            do {
                int read = fileInputStream.read(bArr, 0, Math.min(bArr.length, i2));
                if (read > 0) {
                    messageDigest.update(bArr, 0, read);
                    i2 -= read;
                }
                if (read == -1) {
                    break;
                }
            } while (i2 > 0);
            return messageDigest.digest();
        } finally {
            fileInputStream.close();
        }
    }

    /* renamed from: i */
    static String m3797i(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(f2684qf[(b >> 4) & 15]);
            sb.append(f2684qf[b & 15]);
        }
        return sb.toString();
    }
}
