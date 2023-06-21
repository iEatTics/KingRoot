package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public class agw {
    static char[] ank = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: a */
    public static boolean m11888a(String str, agv agvVar) {
        File file = new File(str);
        long length = file.length() - agvVar.m11890wj();
        if (length != Integer.valueOf(agvVar.get("LEN")).intValue()) {
            return false;
        }
        return m11889J(m11887b(file, (int) length)).equals(agvVar.get("MD5"));
    }

    /* renamed from: b */
    static byte[] m11887b(File file, int i) {
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

    /* renamed from: J */
    static String m11889J(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(ank[(b >> 4) & 15]);
            sb.append(ank[b & 15]);
        }
        return sb.toString();
    }
}
