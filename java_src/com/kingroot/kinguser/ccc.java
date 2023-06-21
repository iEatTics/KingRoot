package com.kingroot.kinguser;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class ccc {
    /* renamed from: a */
    public static byte[] m4971a() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            int[] iArr = {-36, -46, -45, -77, -22, -10, 47, -77, -72, -69, -32, 25, 21, -21, -6, -75, -71, 31, -39, -49, -49};
            for (int i = 0; i < "http://pmir.3g.qq.com".length(); i++) {
                stringBuffer.append((char) ("http://pmir.3g.qq.com".charAt(i) + iArr[i]));
            }
            return stringBuffer.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    private static void m4965c(byte[] bArr, int[] iArr) {
        int i = 0;
        int length = bArr.length >> 2;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            iArr[i2] = bArr[i] & 255;
            int i4 = i3 + 1;
            iArr[i2] = iArr[i2] | ((bArr[i3] & 255) << 8);
            int i5 = i4 + 1;
            iArr[i2] = iArr[i2] | ((bArr[i4] & 255) << 16);
            i = i5 + 1;
            iArr[i2] = ((bArr[i5] & 255) << 24) | iArr[i2];
            i2++;
        }
        if (i < bArr.length) {
            int i6 = i + 1;
            iArr[i2] = bArr[i] & 255;
            int i7 = 8;
            while (i6 < bArr.length) {
                iArr[i2] = iArr[i2] | ((bArr[i6] & 255) << i7);
                i6++;
                i7 += 8;
            }
        }
    }

    /* renamed from: c */
    private static void m4964c(int[] iArr, int i, byte[] bArr) {
        int length = bArr.length >> 2;
        if (length > i) {
            length = i;
        }
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i2 + 1;
            bArr[i2] = (byte) (iArr[i3] & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) ((iArr[i3] >>> 8) & 255);
            int i6 = i5 + 1;
            bArr[i5] = (byte) ((iArr[i3] >>> 16) & 255);
            bArr[i6] = (byte) ((iArr[i3] >>> 24) & 255);
            i3++;
            i2 = i6 + 1;
        }
        if (i > length && i2 < bArr.length) {
            bArr[i2] = (byte) (iArr[i3] & 255);
            int i7 = 8;
            for (int i8 = i2 + 1; i7 <= 24 && i8 < bArr.length; i8++) {
                bArr[i8] = (byte) ((iArr[i3] >>> i7) & 255);
                i7 += 8;
            }
        }
    }

    /* renamed from: a */
    public static byte[] m4970a(byte[] bArr) {
        if (bArr != null && bArr.length > 16) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                return null;
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public static byte[] m4969a(byte[] bArr, byte[] bArr2) {
        byte[] m4970a = m4970a(bArr2);
        if (bArr != null && m4970a != null && bArr.length != 0) {
            int length = bArr.length % 4 == 0 ? (bArr.length >>> 2) + 1 : (bArr.length >>> 2) + 2;
            int[] iArr = new int[length];
            m4965c(bArr, iArr);
            iArr[length - 1] = bArr.length;
            int length2 = m4970a.length % 4 == 0 ? m4970a.length >>> 2 : (m4970a.length >>> 2) + 1;
            if (length2 < 4) {
                length2 = 4;
            }
            int[] iArr2 = new int[length2];
            for (int i = 0; i < length2; i++) {
                iArr2[i] = 0;
            }
            m4965c(m4970a, iArr2);
            int length3 = iArr.length - 1;
            int i2 = iArr[length3];
            int i3 = iArr[0];
            int i4 = (52 / (length3 + 1)) + 6;
            int i5 = 0;
            int i6 = i2;
            while (true) {
                int i7 = i4 - 1;
                if (i4 > 0) {
                    i5 -= 1640531527;
                    int i8 = (i5 >>> 2) & 3;
                    int i9 = 0;
                    while (i9 < length3) {
                        int i10 = iArr[i9 + 1];
                        i6 = (((i6 ^ iArr2[(i9 & 3) ^ i8]) + (i10 ^ i5)) ^ (((i6 >>> 5) ^ (i10 << 2)) + ((i10 >>> 3) ^ (i6 << 4)))) + iArr[i9];
                        iArr[i9] = i6;
                        i9++;
                    }
                    int i11 = iArr[0];
                    i6 = iArr[length3] + (((iArr2[(i9 & 3) ^ i8] ^ i6) + (i11 ^ i5)) ^ (((i6 >>> 5) ^ (i11 << 2)) + ((i11 >>> 3) ^ (i6 << 4))));
                    iArr[length3] = i6;
                    i4 = i7;
                } else {
                    byte[] bArr3 = new byte[iArr.length << 2];
                    m4964c(iArr, iArr.length, bArr3);
                    return bArr3;
                }
            }
        } else {
            return bArr;
        }
    }

    /* renamed from: b */
    public static byte[] m4968b(byte[] bArr) {
        return m4969a(bArr, m4971a());
    }

    /* renamed from: b */
    public static byte[] m4967b(byte[] bArr, byte[] bArr2) {
        byte[] m4970a = m4970a(bArr2);
        if (bArr != null && m4970a != null && bArr.length != 0) {
            if (bArr.length % 4 != 0 || bArr.length < 8) {
                return null;
            }
            int[] iArr = new int[bArr.length >>> 2];
            m4965c(bArr, iArr);
            int length = m4970a.length % 4 == 0 ? m4970a.length >>> 2 : (m4970a.length >>> 2) + 1;
            if (length < 4) {
                length = 4;
            }
            int[] iArr2 = new int[length];
            for (int i = 0; i < length; i++) {
                iArr2[i] = 0;
            }
            m4965c(m4970a, iArr2);
            int length2 = iArr.length - 1;
            int i2 = iArr[length2];
            int i3 = ((52 / (length2 + 1)) + 6) * (-1640531527);
            int i4 = iArr[0];
            while (i3 != 0) {
                int i5 = (i3 >>> 2) & 3;
                int i6 = i4;
                int i7 = length2;
                while (i7 > 0) {
                    int i8 = iArr[i7 - 1];
                    i6 = iArr[i7] - (((i6 ^ i3) + (i8 ^ iArr2[(i7 & 3) ^ i5])) ^ (((i8 >>> 5) ^ (i6 << 2)) + ((i6 >>> 3) ^ (i8 << 4))));
                    iArr[i7] = i6;
                    i7--;
                }
                int i9 = iArr[length2];
                int i10 = iArr[0] - (((iArr2[(i7 & 3) ^ i5] ^ i9) + (i6 ^ i3)) ^ (((i9 >>> 5) ^ (i6 << 2)) + ((i6 >>> 3) ^ (i9 << 4))));
                iArr[0] = i10;
                i3 -= -1640531527;
                i4 = i10;
            }
            int i11 = iArr[iArr.length - 1];
            if (i11 < 0 || i11 > ((iArr.length - 1) << 2)) {
                return null;
            }
            byte[] bArr3 = new byte[i11];
            m4964c(iArr, iArr.length - 1, bArr3);
            return bArr3;
        }
        return bArr;
    }

    /* renamed from: c */
    public static byte[] m4966c(byte[] bArr) {
        return m4967b(bArr, m4971a());
    }
}
