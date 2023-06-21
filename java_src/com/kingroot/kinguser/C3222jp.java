package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.jp */
/* loaded from: classes.dex */
public class C3222jp {

    /* renamed from: th */
    private static byte[] f2900th;

    /* renamed from: m */
    public static byte[] m3370m(byte[] bArr) {
        if (f2900th == null) {
            f2900th = C3220jn.m3382b("DFG#$%^#%$RGHR(&*M<><".getBytes());
        }
        return m3376a(bArr, f2900th);
    }

    /* renamed from: a */
    public static byte[] m3376a(byte[] bArr, byte[] bArr2) {
        return bArr.length == 0 ? bArr : m3375a(m3374a(m3373b(bArr, true), m3373b(bArr2, false)), false);
    }

    /* renamed from: n */
    public static byte[] m3369n(byte[] bArr) {
        if (f2900th == null) {
            f2900th = C3220jn.m3382b("DFG#$%^#%$RGHR(&*M<><".getBytes());
        }
        return m3372b(bArr, f2900th);
    }

    /* renamed from: b */
    public static byte[] m3372b(byte[] bArr, byte[] bArr2) {
        return bArr.length == 0 ? bArr : m3375a(m3371b(m3373b(bArr, false), m3373b(bArr2, false)), true);
    }

    /* renamed from: a */
    public static int[] m3374a(int[] iArr, int[] iArr2) {
        int length = iArr.length - 1;
        if (length >= 1) {
            if (iArr2.length < 4) {
                int[] iArr3 = new int[4];
                System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                iArr2 = iArr3;
            }
            int i = iArr[length];
            int i2 = iArr[0];
            int i3 = 0;
            int i4 = i;
            int i5 = (52 / (length + 1)) + 6;
            while (true) {
                int i6 = i5 - 1;
                if (i5 <= 0) {
                    break;
                }
                i3 -= 1640531527;
                int i7 = (i3 >>> 2) & 3;
                int i8 = i4;
                int i9 = 0;
                while (i9 < length) {
                    int i10 = iArr[i9 + 1];
                    i8 = (((i8 ^ iArr2[(i9 & 3) ^ i7]) + (i10 ^ i3)) ^ (((i8 >>> 5) ^ (i10 << 2)) + ((i10 >>> 3) ^ (i8 << 4)))) + iArr[i9];
                    iArr[i9] = i8;
                    i9++;
                }
                int i11 = iArr[0];
                i4 = (((iArr2[(i9 & 3) ^ i7] ^ i8) + (i11 ^ i3)) ^ (((i8 >>> 5) ^ (i11 << 2)) + ((i11 >>> 3) ^ (i8 << 4)))) + iArr[length];
                iArr[length] = i4;
                i5 = i6;
            }
        }
        return iArr;
    }

    /* renamed from: b */
    public static int[] m3371b(int[] iArr, int[] iArr2) {
        int length = iArr.length - 1;
        if (length >= 1) {
            if (iArr2.length < 4) {
                int[] iArr3 = new int[4];
                System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                iArr2 = iArr3;
            }
            int i = iArr[length];
            int i2 = ((52 / (length + 1)) + 6) * (-1640531527);
            int i3 = iArr[0];
            while (i2 != 0) {
                int i4 = (i2 >>> 2) & 3;
                int i5 = i3;
                int i6 = length;
                while (i6 > 0) {
                    int i7 = iArr[i6 - 1];
                    i5 = iArr[i6] - (((i5 ^ i2) + (i7 ^ iArr2[(i6 & 3) ^ i4])) ^ (((i7 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i7 << 4))));
                    iArr[i6] = i5;
                    i6--;
                }
                int i8 = iArr[length];
                int i9 = iArr[0] - (((iArr2[(i6 & 3) ^ i4] ^ i8) + (i5 ^ i2)) ^ (((i8 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i8 << 4))));
                iArr[0] = i9;
                i2 -= -1640531527;
                i3 = i9;
            }
        }
        return iArr;
    }

    /* renamed from: b */
    private static int[] m3373b(byte[] bArr, boolean z) {
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
    private static byte[] m3375a(int[] iArr, boolean z) {
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
            bArr[i2] = (byte) ((iArr[i2 >>> 2] >>> ((i2 & 3) << 3)) & 255);
        }
        return bArr;
    }
}
