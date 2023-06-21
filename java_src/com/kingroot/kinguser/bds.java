package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bds {
    public static final byte[] bjP = {0, 0, 0, 32};
    public static final byte[] bjQ = {0, 0, 0, 0};
    public static final byte[] bjR = {-1, -2};

    /* renamed from: L */
    public static int m7504L(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (bArr[i2] & 255);
        }
        return i;
    }

    /* renamed from: g */
    public static int m7501g(byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = i; i3 < i + 4; i3++) {
            i2 = (i2 << 8) | (bArr[i3] & 255);
        }
        return i2;
    }

    /* renamed from: iq */
    public static byte[] m7500iq(int i) {
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < 4; i2++) {
            bArr[i2] = (byte) (i >>> (24 - (i2 * 8)));
        }
        return bArr;
    }

    /* renamed from: e */
    public static String m7503e(byte[] bArr, int i, int i2) {
        String str;
        if (i2 == 4 && bArr[i + 3] == 32 && bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 0) {
            return null;
        }
        try {
            str = new String(bArr, i, i2);
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }

    /* renamed from: e */
    public static boolean m7502e(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr2.length > bArr.length) {
            return false;
        }
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
