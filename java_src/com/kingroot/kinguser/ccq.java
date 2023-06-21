package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class ccq {
    private static final char[] bXi = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static final byte[] f2247a = new byte[0];

    /* renamed from: a */
    public static String m4954a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr[(i * 2) + 1] = bXi[b & 15];
            cArr[(i * 2) + 0] = bXi[((byte) (b >>> 4)) & 15];
        }
        return new String(cArr);
    }
}
