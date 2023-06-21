package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.mo */
/* loaded from: classes.dex */
public class C3315mo {

    /* renamed from: vZ */
    private static final char[] f3140vZ = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: wa */
    public static final byte[] f3141wa = new byte[0];

    /* renamed from: t */
    public static String m3057t(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr[(i * 2) + 1] = f3140vZ[b & 15];
            cArr[(i * 2) + 0] = f3140vZ[((byte) (b >>> 4)) & 15];
        }
        return new String(cArr);
    }
}
