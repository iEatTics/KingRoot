package com.kingroot.kinguser;

import java.util.Locale;
/* loaded from: classes.dex */
public final class bzd {
    /* renamed from: B */
    public static String m5145B(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length);
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                stringBuffer.append(0);
            }
            stringBuffer.append(hexString.toUpperCase(Locale.US));
        }
        return stringBuffer.toString();
    }

    /* renamed from: dJ */
    public static byte[] m5144dJ(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }
}
