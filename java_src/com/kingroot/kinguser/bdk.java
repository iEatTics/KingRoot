package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class bdk {
    private static final char[] ank = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public static boolean m7542a(String str, bdj bdjVar) {
        if (bdjVar == null) {
            return false;
        }
        File file = new File(str);
        long length = file.length() - bdjVar.m7544wj();
        if (length == Integer.valueOf(bdjVar.get("LEN")).intValue()) {
            return m7543J(m7541b(file, (int) length)).equals(bdjVar.get("MD5"));
        }
        return false;
    }

    /* renamed from: b */
    private static byte[] m7541b(File file, int i) {
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
            C3945za.m1340c(fileInputStream);
        }
    }

    /* renamed from: J */
    private static String m7543J(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(ank[(b >> 4) & 15]);
            sb.append(ank[b & 15]);
        }
        return sb.toString();
    }
}
