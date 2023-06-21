package com.kingroot.kinguser;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class bhh {
    public String encode(String str) {
        try {
            return bgo.m7097M(new C2279a().encrypt(str.getBytes("utf-8"), "ILOVESEANYULEI".getBytes()));
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: com.kingroot.kinguser.bhh$a */
    /* loaded from: classes.dex */
    class C2279a {
        C2279a() {
        }

        /* renamed from: b */
        private void m7005b(byte[] bArr, int[] iArr) {
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

        /* renamed from: b */
        private void m7004b(int[] iArr, int i, byte[] bArr) {
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

        /* renamed from: O */
        private byte[] m7006O(byte[] bArr) {
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

        public byte[] encrypt(byte[] bArr, byte[] bArr2) {
            byte[] m7006O = m7006O(bArr2);
            if (bArr != null && m7006O != null && bArr.length != 0) {
                int length = bArr.length % 4 == 0 ? (bArr.length >>> 2) + 1 : (bArr.length >>> 2) + 2;
                int[] iArr = new int[length];
                m7005b(bArr, iArr);
                iArr[length - 1] = bArr.length;
                int length2 = m7006O.length % 4 == 0 ? m7006O.length >>> 2 : (m7006O.length >>> 2) + 1;
                if (length2 < 4) {
                    length2 = 4;
                }
                int[] iArr2 = new int[length2];
                for (int i = 0; i < length2; i++) {
                    iArr2[i] = 0;
                }
                m7005b(m7006O, iArr2);
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
                        m7004b(iArr, iArr.length, bArr3);
                        return bArr3;
                    }
                }
            } else {
                return bArr;
            }
        }
    }
}
