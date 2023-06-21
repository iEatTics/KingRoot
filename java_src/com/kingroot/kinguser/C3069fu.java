package com.kingroot.kinguser;

import java.util.Locale;
/* renamed from: com.kingroot.kinguser.fu */
/* loaded from: classes.dex */
public final class C3069fu {
    /* renamed from: e */
    public static String m3825e(byte[] bArr) {
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

    /* renamed from: ac */
    public static byte[] m3826ac(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = Integer.valueOf(str.substring(i * 2, (i * 2) + 2), 16).byteValue();
        }
        return bArr;
    }

    public static String format(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }
}
