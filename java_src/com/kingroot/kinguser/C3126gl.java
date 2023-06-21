package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
/* renamed from: com.kingroot.kinguser.gl */
/* loaded from: classes.dex */
final class C3126gl {
    /* renamed from: c */
    public static String m3693c(File file) {
        FileInputStream fileInputStream;
        String str = "";
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, read);
                }
                str = m3694a(messageDigest.digest());
                C3141gx.m3645a(fileInputStream);
            } catch (Exception e) {
                C3141gx.m3645a(fileInputStream);
                return str;
            } catch (Throwable th) {
                th = th;
                C3141gx.m3645a(fileInputStream);
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        return str;
    }

    /* renamed from: a */
    public static String m3694a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append("0123456789abcdef".charAt((b >> 4) & 15)).append("0123456789abcdef".charAt(b & 15));
        }
        return sb.toString();
    }
}
