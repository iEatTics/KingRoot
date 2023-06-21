package com.kingroot.kinguser;

import android.net.Uri;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class cdf {
    /* renamed from: a */
    public static final String m4854a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static byte[] m4855a(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        char[] charArray = str.toCharArray();
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (m4853b(charArray[i2 + 1]) | (m4853b(charArray[i2]) << 4));
        }
        return bArr;
    }

    /* renamed from: b */
    private static byte m4853b(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String m4852b(String str) {
        String str2;
        String decode;
        int lastIndexOf;
        if (0 == 0 && (decode = Uri.decode(str)) != null) {
            int indexOf = decode.indexOf(63);
            if (indexOf > 0) {
                decode = decode.substring(0, indexOf);
            }
            if (!decode.endsWith("/") && (lastIndexOf = decode.lastIndexOf(47) + 1) > 0) {
                str2 = decode.substring(lastIndexOf);
                return str2 != null ? "downloadfile" : str2;
            }
        }
        str2 = null;
        if (str2 != null) {
        }
    }

    /* renamed from: b */
    public static byte[] m4851b(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
