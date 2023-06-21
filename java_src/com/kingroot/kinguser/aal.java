package com.kingroot.kinguser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aal implements aag {
    private static final cce<aal> sInstance = new cce<aal>() { // from class: com.kingroot.kinguser.aal.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: pO */
        public aal create() {
            return new aal();
        }
    };

    private aal() {
    }

    /* renamed from: pN */
    public static aal m12981pN() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.aag
    public byte[] encrypt(byte[] bArr, byte[] bArr2) {
        if (bArr2.length <= 0) {
            return bArr2;
        }
        return m12983b(C0613b.m12977f(m12982c(bArr2, true), m12982c(C0614c.m12975G(bArr), false)), false);
    }

    @Override // com.kingroot.kinguser.aag
    /* renamed from: N */
    public String mo12985N(String str, String str2) {
        return aab.m13011w(encrypt(m12986G(str.getBytes()), str2.getBytes()));
    }

    @Override // com.kingroot.kinguser.aag
    public byte[] decrypt(byte[] bArr, byte[] bArr2) {
        if (bArr2.length <= 0) {
            return bArr2;
        }
        return m12983b(C0612a.m12979d(m12982c(bArr2, false), m12982c(C0614c.m12975G(bArr), false)), true);
    }

    @Override // com.kingroot.kinguser.aag
    /* renamed from: O */
    public String mo12984O(String str, String str2) {
        return new String(decrypt(m12986G(str.getBytes()), aab.m13014dJ(str2)));
    }

    /* renamed from: G */
    public static byte[] m12986G(byte[] bArr) {
        return aah.m13005E(bArr).getBytes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aal$b */
    /* loaded from: classes.dex */
    public static class C0613b {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: f */
        public static int[] m12977f(int[] iArr, int[] iArr2) {
            int length = iArr.length;
            if (length > 1) {
                if (iArr2.length < 4) {
                    int[] iArr3 = new int[4];
                    System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                    iArr2 = iArr3;
                }
                int i = (52 / length) + 6;
                int i2 = iArr[length - 1];
                int length2 = 909933759 + i + iArr2.length + ((1744502010 - i) - iArr2.length);
                int i3 = i2;
                int i4 = 0;
                do {
                    i4 += length2;
                    int i5 = (i4 >>> 2) & 3;
                    int i6 = i3;
                    int i7 = 0;
                    while (i7 < length - 1) {
                        int i8 = iArr[i7 + 1];
                        i6 = (((i6 ^ iArr2[(i7 & 3) ^ i5]) + (i8 ^ i4)) ^ (((i6 >>> 5) ^ (i8 << 2)) + ((i8 >>> 3) ^ (i6 << 4)))) + iArr[i7];
                        iArr[i7] = i6;
                        i7++;
                    }
                    int i9 = iArr[0];
                    int i10 = length - 1;
                    i3 = (((iArr2[(i7 & 3) ^ i5] ^ i6) + (i9 ^ i4)) ^ (((i6 >>> 5) ^ (i9 << 2)) + ((i9 >>> 3) ^ (i6 << 4)))) + iArr[i10];
                    iArr[i10] = i3;
                    i--;
                } while (i > 0);
                return iArr;
            }
            return iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aal$a */
    /* loaded from: classes.dex */
    public static class C0612a {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public static int[] m12979d(int[] iArr, int[] iArr2) {
            int length = iArr.length;
            if (length > 1) {
                if (iArr2.length < 4) {
                    int[] iArr3 = new int[4];
                    System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                    iArr2 = iArr3;
                }
                int i = (52 / length) + 6;
                int length2 = 909933759 + i + iArr2.length + ((1744502010 - i) - iArr2.length);
                int i2 = i * length2;
                int i3 = iArr[0];
                do {
                    int i4 = (i2 >>> 2) & 3;
                    int i5 = i3;
                    int i6 = length - 1;
                    while (i6 > 0) {
                        int i7 = iArr[i6 - 1];
                        i5 = iArr[i6] - (((i5 ^ i2) + (i7 ^ iArr2[(i6 & 3) ^ i4])) ^ (((i7 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i7 << 4))));
                        iArr[i6] = i5;
                        i6--;
                    }
                    int i8 = iArr[length - 1];
                    i3 = iArr[0] - (((iArr2[(i6 & 3) ^ i4] ^ i8) + (i5 ^ i2)) ^ (((i8 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i8 << 4))));
                    iArr[0] = i3;
                    i2 -= length2;
                } while (i2 != 0);
                return iArr;
            }
            return iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aal$c */
    /* loaded from: classes.dex */
    public static class C0614c {
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: G */
        public static byte[] m12975G(byte[] bArr) {
            return aah.m13005E(bArr).getBytes();
        }
    }

    /* renamed from: c */
    private static int[] m12982c(byte[] bArr, boolean z) {
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

    /* renamed from: b */
    private static byte[] m12983b(int[] iArr, boolean z) {
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
