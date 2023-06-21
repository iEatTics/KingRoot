package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.Locale;
import java.util.StringTokenizer;
/* loaded from: classes.dex */
public final class aab {
    /* renamed from: dH */
    public static String m13016dH(String str) {
        return str == null ? "" : str;
    }

    /* renamed from: dI */
    public static byte[] m13015dI(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        char[] charArray = str.toCharArray();
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (m13018a(charArray[i2 + 1]) | (m13018a(charArray[i2]) << 4));
        }
        return bArr;
    }

    /* renamed from: a */
    private static byte m13018a(char c) {
        return (byte) "0123456789ABCDEF".indexOf(c);
    }

    /* renamed from: B */
    public static String m13021B(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase(Locale.getDefault()));
        }
        return stringBuffer.toString();
    }

    /* renamed from: dJ */
    public static byte[] m13014dJ(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    /* renamed from: w */
    public static String m13011w(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b : bArr) {
            m13017a(stringBuffer, b);
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    private static void m13017a(StringBuffer stringBuffer, byte b) {
        stringBuffer.append("0123456789ABCDEF".charAt((b >> 4) & 15)).append("0123456789ABCDEF".charAt(b & 15));
    }

    /* renamed from: dK */
    public static int m13013dK(String str) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: k */
    public static int m13012k(String str, int i) {
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            return i;
        }
    }

    /* renamed from: L */
    public static String[] m13020L(String str, String str2) {
        if (TextUtils.isEmpty(str) || str2 == null) {
            return null;
        }
        return m13019M(str, str2);
    }

    /* renamed from: M */
    private static String[] m13019M(String str, String str2) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        String[] strArr = new String[stringTokenizer.countTokens()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = stringTokenizer.nextToken();
        }
        return strArr;
    }
}
