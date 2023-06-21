package com.kingroot.kinguser;

import java.util.Locale;
/* renamed from: com.kingroot.kinguser.mi */
/* loaded from: classes.dex */
public final class C3309mi {
    /* renamed from: br */
    public static String m3076br(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: q */
    public static String m3074q(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString.toUpperCase(Locale.US));
        }
        return sb.toString();
    }

    /* renamed from: bs */
    public static byte[] m3075bs(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    /* renamed from: r */
    public static String m3073r(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            m3077a(sb, b);
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m3077a(StringBuilder sb, byte b) {
        sb.append("0123456789ABCDEF".charAt((b >> 4) & 15)).append("0123456789ABCDEF".charAt(b & 15));
    }
}
