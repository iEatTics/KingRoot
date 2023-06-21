package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class bna {
    private static final char[] bCH = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: t */
    public static String m6289t(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr[(i * 2) + 1] = bCH[b & 15];
            cArr[i * 2] = bCH[((byte) (b >>> 4)) & 15];
        }
        return new String(cArr);
    }
}
