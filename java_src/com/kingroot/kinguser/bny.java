package com.kingroot.kinguser;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
/* loaded from: classes.dex */
public final class bny {

    /* renamed from: a */
    private static byte[] f1788a = {Byte.MIN_VALUE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private long[] bFc = new long[4];
    private long[] bFd = new long[2];

    /* renamed from: d */
    private byte[] f1789d = new byte[64];

    /* renamed from: e */
    private byte[] f1790e = new byte[16];

    public bny() {
        m6144a();
    }

    /* renamed from: a */
    private long m6143a(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        long j8 = ((j2 & j3) | (((-1) ^ j2) & j4)) + j5 + j7 + j;
        return ((((int) j8) >>> ((int) (32 - j6))) | (((int) j8) << ((int) j6))) + j2;
    }

    /* renamed from: a */
    private void m6144a() {
        this.bFd[0] = 0;
        this.bFd[1] = 0;
        this.bFc[0] = 1732584193;
        this.bFc[1] = 4023233417L;
        this.bFc[2] = 2562383102L;
        this.bFc[3] = 271733878;
    }

    /* renamed from: a */
    private void m6141a(byte[] bArr) {
        long j = this.bFc[0];
        long j2 = this.bFc[1];
        long j3 = this.bFc[2];
        long j4 = this.bFc[3];
        long[] jArr = new long[16];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = i;
            if (i3 >= 64) {
                long m6143a = m6143a(j, j2, j3, j4, jArr[0], 7L, 3614090360L);
                long m6143a2 = m6143a(j4, m6143a, j2, j3, jArr[1], 12L, 3905402710L);
                long m6143a3 = m6143a(j3, m6143a2, m6143a, j2, jArr[2], 17L, 606105819L);
                long m6143a4 = m6143a(j2, m6143a3, m6143a2, m6143a, jArr[3], 22L, 3250441966L);
                long m6143a5 = m6143a(m6143a, m6143a4, m6143a3, m6143a2, jArr[4], 7L, 4118548399L);
                long m6143a6 = m6143a(m6143a2, m6143a5, m6143a4, m6143a3, jArr[5], 12L, 1200080426L);
                long m6143a7 = m6143a(m6143a3, m6143a6, m6143a5, m6143a4, jArr[6], 17L, 2821735955L);
                long m6143a8 = m6143a(m6143a4, m6143a7, m6143a6, m6143a5, jArr[7], 22L, 4249261313L);
                long m6143a9 = m6143a(m6143a5, m6143a8, m6143a7, m6143a6, jArr[8], 7L, 1770035416L);
                long m6143a10 = m6143a(m6143a6, m6143a9, m6143a8, m6143a7, jArr[9], 12L, 2336552879L);
                long m6143a11 = m6143a(m6143a7, m6143a10, m6143a9, m6143a8, jArr[10], 17L, 4294925233L);
                long m6143a12 = m6143a(m6143a8, m6143a11, m6143a10, m6143a9, jArr[11], 22L, 2304563134L);
                long m6143a13 = m6143a(m6143a9, m6143a12, m6143a11, m6143a10, jArr[12], 7L, 1804603682L);
                long m6143a14 = m6143a(m6143a10, m6143a13, m6143a12, m6143a11, jArr[13], 12L, 4254626195L);
                long m6143a15 = m6143a(m6143a11, m6143a14, m6143a13, m6143a12, jArr[14], 17L, 2792965006L);
                long m6143a16 = m6143a(m6143a12, m6143a15, m6143a14, m6143a13, jArr[15], 22L, 1236535329L);
                long m6137b = m6137b(m6143a13, m6143a16, m6143a15, m6143a14, jArr[1], 5L, 4129170786L);
                long m6137b2 = m6137b(m6143a14, m6137b, m6143a16, m6143a15, jArr[6], 9L, 3225465664L);
                long m6137b3 = m6137b(m6143a15, m6137b2, m6137b, m6143a16, jArr[11], 14L, 643717713L);
                long m6137b4 = m6137b(m6143a16, m6137b3, m6137b2, m6137b, jArr[0], 20L, 3921069994L);
                long m6137b5 = m6137b(m6137b, m6137b4, m6137b3, m6137b2, jArr[5], 5L, 3593408605L);
                long m6137b6 = m6137b(m6137b2, m6137b5, m6137b4, m6137b3, jArr[10], 9L, 38016083L);
                long m6137b7 = m6137b(m6137b3, m6137b6, m6137b5, m6137b4, jArr[15], 14L, 3634488961L);
                long m6137b8 = m6137b(m6137b4, m6137b7, m6137b6, m6137b5, jArr[4], 20L, 3889429448L);
                long m6137b9 = m6137b(m6137b5, m6137b8, m6137b7, m6137b6, jArr[9], 5L, 568446438L);
                long m6137b10 = m6137b(m6137b6, m6137b9, m6137b8, m6137b7, jArr[14], 9L, 3275163606L);
                long m6137b11 = m6137b(m6137b7, m6137b10, m6137b9, m6137b8, jArr[3], 14L, 4107603335L);
                long m6137b12 = m6137b(m6137b8, m6137b11, m6137b10, m6137b9, jArr[8], 20L, 1163531501L);
                long m6137b13 = m6137b(m6137b9, m6137b12, m6137b11, m6137b10, jArr[13], 5L, 2850285829L);
                long m6137b14 = m6137b(m6137b10, m6137b13, m6137b12, m6137b11, jArr[2], 9L, 4243563512L);
                long m6137b15 = m6137b(m6137b11, m6137b14, m6137b13, m6137b12, jArr[7], 14L, 1735328473L);
                long m6137b16 = m6137b(m6137b12, m6137b15, m6137b14, m6137b13, jArr[12], 20L, 2368359562L);
                long m6136c = m6136c(m6137b13, m6137b16, m6137b15, m6137b14, jArr[5], 4L, 4294588738L);
                long m6136c2 = m6136c(m6137b14, m6136c, m6137b16, m6137b15, jArr[8], 11L, 2272392833L);
                long m6136c3 = m6136c(m6137b15, m6136c2, m6136c, m6137b16, jArr[11], 16L, 1839030562L);
                long m6136c4 = m6136c(m6137b16, m6136c3, m6136c2, m6136c, jArr[14], 23L, 4259657740L);
                long m6136c5 = m6136c(m6136c, m6136c4, m6136c3, m6136c2, jArr[1], 4L, 2763975236L);
                long m6136c6 = m6136c(m6136c2, m6136c5, m6136c4, m6136c3, jArr[4], 11L, 1272893353L);
                long m6136c7 = m6136c(m6136c3, m6136c6, m6136c5, m6136c4, jArr[7], 16L, 4139469664L);
                long m6136c8 = m6136c(m6136c4, m6136c7, m6136c6, m6136c5, jArr[10], 23L, 3200236656L);
                long m6136c9 = m6136c(m6136c5, m6136c8, m6136c7, m6136c6, jArr[13], 4L, 681279174L);
                long m6136c10 = m6136c(m6136c6, m6136c9, m6136c8, m6136c7, jArr[0], 11L, 3936430074L);
                long m6136c11 = m6136c(m6136c7, m6136c10, m6136c9, m6136c8, jArr[3], 16L, 3572445317L);
                long m6136c12 = m6136c(m6136c8, m6136c11, m6136c10, m6136c9, jArr[6], 23L, 76029189L);
                long m6136c13 = m6136c(m6136c9, m6136c12, m6136c11, m6136c10, jArr[9], 4L, 3654602809L);
                long m6136c14 = m6136c(m6136c10, m6136c13, m6136c12, m6136c11, jArr[12], 11L, 3873151461L);
                long m6136c15 = m6136c(m6136c11, m6136c14, m6136c13, m6136c12, jArr[15], 16L, 530742520L);
                long m6136c16 = m6136c(m6136c12, m6136c15, m6136c14, m6136c13, jArr[2], 23L, 3299628645L);
                long m6134d = m6134d(m6136c13, m6136c16, m6136c15, m6136c14, jArr[0], 6L, 4096336452L);
                long m6134d2 = m6134d(m6136c14, m6134d, m6136c16, m6136c15, jArr[7], 10L, 1126891415L);
                long m6134d3 = m6134d(m6136c15, m6134d2, m6134d, m6136c16, jArr[14], 15L, 2878612391L);
                long m6134d4 = m6134d(m6136c16, m6134d3, m6134d2, m6134d, jArr[5], 21L, 4237533241L);
                long m6134d5 = m6134d(m6134d, m6134d4, m6134d3, m6134d2, jArr[12], 6L, 1700485571L);
                long m6134d6 = m6134d(m6134d2, m6134d5, m6134d4, m6134d3, jArr[3], 10L, 2399980690L);
                long m6134d7 = m6134d(m6134d3, m6134d6, m6134d5, m6134d4, jArr[10], 15L, 4293915773L);
                long m6134d8 = m6134d(m6134d4, m6134d7, m6134d6, m6134d5, jArr[1], 21L, 2240044497L);
                long m6134d9 = m6134d(m6134d5, m6134d8, m6134d7, m6134d6, jArr[8], 6L, 1873313359L);
                long m6134d10 = m6134d(m6134d6, m6134d9, m6134d8, m6134d7, jArr[15], 10L, 4264355552L);
                long m6134d11 = m6134d(m6134d7, m6134d10, m6134d9, m6134d8, jArr[6], 15L, 2734768916L);
                long m6134d12 = m6134d(m6134d8, m6134d11, m6134d10, m6134d9, jArr[13], 21L, 1309151649L);
                long m6134d13 = m6134d(m6134d9, m6134d12, m6134d11, m6134d10, jArr[4], 6L, 4149444226L);
                long m6134d14 = m6134d(m6134d10, m6134d13, m6134d12, m6134d11, jArr[11], 10L, 3174756917L);
                long m6134d15 = m6134d(m6134d11, m6134d14, m6134d13, m6134d12, jArr[2], 15L, 718787259L);
                long m6134d16 = m6134d(m6134d12, m6134d15, m6134d14, m6134d13, jArr[9], 21L, 3951481745L);
                long[] jArr2 = this.bFc;
                jArr2[0] = jArr2[0] + m6134d13;
                long[] jArr3 = this.bFc;
                jArr3[1] = m6134d16 + jArr3[1];
                long[] jArr4 = this.bFc;
                jArr4[2] = jArr4[2] + m6134d15;
                long[] jArr5 = this.bFc;
                jArr5[3] = jArr5[3] + m6134d14;
                return;
            }
            int i5 = bArr[i3];
            long j5 = i5 < 0 ? i5 & 255 : i5;
            int i6 = bArr[i3 + 1];
            long j6 = ((i6 < 0 ? i6 & 255 : i6) << 8) | j5;
            int i7 = bArr[i3 + 2];
            long j7 = j6 | ((i7 < 0 ? i7 & 255 : i7) << 16);
            int i8 = bArr[i3 + 3];
            if (i8 < 0) {
                i8 &= 255;
            }
            jArr[i4] = (i8 << 24) | j7;
            i = i4 + 1;
            i2 = i3 + 4;
        }
    }

    /* renamed from: a */
    private void m6140a(byte[] bArr, int i) {
        int i2;
        int i3;
        byte[] bArr2 = new byte[64];
        int i4 = ((int) (this.bFd[0] >>> 3)) & 63;
        long[] jArr = this.bFd;
        long j = jArr[0] + (i << 3);
        jArr[0] = j;
        if (j < (i << 3)) {
            long[] jArr2 = this.bFd;
            jArr2[1] = jArr2[1] + 1;
        }
        long[] jArr3 = this.bFd;
        jArr3[1] = jArr3[1] + (i >>> 29);
        int i5 = 64 - i4;
        if (i >= i5) {
            byte[] bArr3 = this.f1789d;
            for (int i6 = 0; i6 < i5; i6++) {
                bArr3[i4 + i6] = bArr[0 + i6];
            }
            m6141a(this.f1789d);
            i3 = i5;
            while (i3 + 63 < i) {
                for (int i7 = 0; i7 < 64; i7++) {
                    bArr2[0 + i7] = bArr[i3 + i7];
                }
                m6141a(bArr2);
                i3 += 64;
            }
            i2 = 0;
        } else {
            i2 = i4;
            i3 = 0;
        }
        byte[] bArr4 = this.f1789d;
        int i8 = i - i3;
        for (int i9 = 0; i9 < i8; i9++) {
            bArr4[i2 + i9] = bArr[i3 + i9];
        }
    }

    /* renamed from: a */
    private static void m6139a(byte[] bArr, long[] jArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 4) {
            bArr[i3] = (byte) (jArr[i2] & 255);
            bArr[i3 + 1] = (byte) ((jArr[i2] >>> 8) & 255);
            bArr[i3 + 2] = (byte) ((jArr[i2] >>> 16) & 255);
            bArr[i3 + 3] = (byte) ((jArr[i2] >>> 24) & 255);
            i2++;
        }
    }

    /* renamed from: a */
    private boolean m6142a(InputStream inputStream, long j) {
        int i;
        int i2;
        byte[] bArr = new byte[64];
        int i3 = ((int) (this.bFd[0] >>> 3)) & 63;
        long[] jArr = this.bFd;
        long j2 = jArr[0] + (j << 3);
        jArr[0] = j2;
        if (j2 < (j << 3)) {
            long[] jArr2 = this.bFd;
            jArr2[1] = jArr2[1] + 1;
        }
        long[] jArr3 = this.bFd;
        jArr3[1] = jArr3[1] + (j >>> 29);
        int i4 = 64 - i3;
        if (j >= i4) {
            byte[] bArr2 = new byte[i4];
            try {
                inputStream.read(bArr2, 0, i4);
                byte[] bArr3 = this.f1789d;
                for (int i5 = 0; i5 < i4; i5++) {
                    bArr3[i3 + i5] = bArr2[0 + i5];
                }
                m6141a(this.f1789d);
                i2 = i4;
                while (i2 + 63 < j) {
                    try {
                        inputStream.read(bArr);
                        m6141a(bArr);
                        i2 += 64;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return false;
                    }
                }
                i = 0;
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        } else {
            i = i3;
            i2 = 0;
        }
        byte[] bArr4 = new byte[(int) (j - i2)];
        try {
            inputStream.read(bArr4);
            byte[] bArr5 = this.f1789d;
            int length = bArr4.length;
            for (int i6 = 0; i6 < length; i6++) {
                bArr5[i + i6] = bArr4[0 + i6];
            }
            return true;
        } catch (Exception e3) {
            e3.printStackTrace();
            return false;
        }
    }

    /* renamed from: al */
    public static String m6138al(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes("ISO8859_1");
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        bny bnyVar = new bny();
        bnyVar.m6144a();
        bnyVar.m6142a(new ByteArrayInputStream(bytes), bytes.length);
        byte[] bArr = new byte[8];
        m6139a(bArr, bnyVar.bFd, 8);
        int i = ((int) (bnyVar.bFd[0] >>> 3)) & 63;
        bnyVar.m6140a(f1788a, i < 56 ? 56 - i : 120 - i);
        bnyVar.m6140a(bArr, 8);
        m6139a(bnyVar.f1790e, bnyVar.bFc, 16);
        byte[] bArr2 = bnyVar.f1790e;
        String str2 = "";
        for (int i2 = 0; i2 < 16; i2++) {
            StringBuilder append = new StringBuilder().append(str2);
            byte b = bArr2[i2];
            char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
            str2 = append.append(new String(new char[]{cArr[(b >>> 4) & 15], cArr[b & 15]})).toString();
        }
        return str2;
    }

    /* renamed from: b */
    private long m6137b(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        long j8 = ((j2 & j4) | (((-1) ^ j4) & j3)) + j5 + j7 + j;
        return ((((int) j8) >>> ((int) (32 - j6))) | (((int) j8) << ((int) j6))) + j2;
    }

    /* renamed from: c */
    private long m6136c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        long j8 = ((j2 ^ j3) ^ j4) + j5 + j7 + j;
        return ((((int) j8) >>> ((int) (32 - j6))) | (((int) j8) << ((int) j6))) + j2;
    }

    /* renamed from: c */
    public static String m6135c(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[1024];
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int read = fileInputStream.read(bArr, 0, 1024);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            fileInputStream.close();
            byte[] digest = messageDigest.digest();
            char[] cArr2 = new char[32];
            int i = 0;
            for (int i2 = 0; i2 < 16; i2++) {
                byte b = digest[i2];
                int i3 = i + 1;
                cArr2[i] = cArr[(b >>> 4) & 15];
                i = i3 + 1;
                cArr2[i3] = cArr[b & 15];
            }
            return new String(cArr2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    private long m6134d(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        long j8 = ((((-1) ^ j4) | j2) ^ j3) + j5 + j7 + j;
        return ((((int) j8) >>> ((int) (32 - j6))) | (((int) j8) << ((int) j6))) + j2;
    }
}
