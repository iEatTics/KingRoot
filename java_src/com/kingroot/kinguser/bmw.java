package com.kingroot.kinguser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bmw {
    private static bmw bCy = null;

    private bmw() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static bmw agb() {
        if (bCy == null) {
            bCy = new bmw();
        }
        return bCy;
    }

    /* renamed from: a */
    public static byte[] m6301a(byte[] bArr, byte[] bArr2) {
        byte[] m6380k;
        if (bArr2.length > 0) {
            int[] m6299b = m6299b(bArr2, true);
            m6380k = bmm.m6380k(bArr);
            return m6300a(bmu.m6328b(m6299b, m6299b(m6380k, false)), false);
        }
        return bArr2;
    }

    /* renamed from: b */
    public static byte[] m6298b(byte[] bArr, byte[] bArr2) {
        byte[] m6380k;
        if (bArr2.length > 0) {
            int[] m6299b = m6299b(bArr2, false);
            m6380k = bmm.m6380k(bArr);
            return m6300a(bmu.m6332a(m6299b, m6299b(m6380k, false)), true);
        }
        return bArr2;
    }

    /* renamed from: b */
    private static int[] m6299b(byte[] bArr, boolean z) {
        int[] iArr;
        int length = (bArr.length & 3) == 0 ? bArr.length >>> 2 : (bArr.length >>> 2) + 1;
        if (z) {
            iArr = new int[length + 1];
            iArr[length] = bArr.length;
        } else {
            iArr = new int[length];
        }
        int length2 = bArr.length;
        for (int i = 0; i < length2; i++) {
            int i2 = i >>> 2;
            iArr[i2] = iArr[i2] | ((bArr[i] & 255) << ((i & 3) << 3));
        }
        return iArr;
    }

    /* renamed from: a */
    private static byte[] m6300a(int[] iArr, boolean z) {
        int i;
        int length = iArr.length << 2;
        if (z) {
            i = iArr[iArr.length - 1];
            if (i > length) {
                return null;
            }
        } else {
            i = length;
        }
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (iArr[i2 >>> 2] >>> ((i2 & 3) << 3));
        }
        return bArr;
    }
}
