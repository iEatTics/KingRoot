package com.kingroot.kinguser;

import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
public class cgn {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2319lo;

    static {
        f2319lo = !cgn.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cgn$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC2806a {

        /* renamed from: Xc */
        public byte[] f2320Xc;

        /* renamed from: nF */
        public int f2321nF;

        AbstractC2806a() {
        }
    }

    public static byte[] decode(String str, int i) {
        return decode(str.getBytes(), i);
    }

    public static byte[] decode(byte[] bArr, int i) {
        return decode(bArr, 0, bArr.length, i);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        C2807b c2807b = new C2807b(i3, new byte[(i2 * 3) / 4]);
        if (!c2807b.m4328a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (c2807b.f2321nF == c2807b.f2320Xc.length) {
            return c2807b.f2320Xc;
        }
        byte[] bArr2 = new byte[c2807b.f2321nF];
        System.arraycopy(c2807b.f2320Xc, 0, bArr2, 0, c2807b.f2321nF);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cgn$b */
    /* loaded from: classes.dex */
    public static class C2807b extends AbstractC2806a {

        /* renamed from: Xd */
        private static final int[] f2322Xd = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: Xe */
        private static final int[] f2323Xe = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: Xf */
        private final int[] f2324Xf;
        private int state;
        private int value;

        public C2807b(int i, byte[] bArr) {
            this.f2320Xc = bArr;
            this.f2324Xf = (i & 8) == 0 ? f2322Xd : f2323Xe;
            this.state = 0;
            this.value = 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:55:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0114  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean m4328a(byte[] bArr, int i, int i2, boolean z) {
            if (this.state == 6) {
                return false;
            }
            int i3 = i2 + i;
            int i4 = this.state;
            int i5 = this.value;
            int i6 = 0;
            byte[] bArr2 = this.f2320Xc;
            int[] iArr = this.f2324Xf;
            int i7 = i4;
            int i8 = i;
            while (i8 < i3) {
                if (i7 == 0) {
                    while (i8 + 4 <= i3 && (i5 = (iArr[bArr[i8] & 255] << 18) | (iArr[bArr[i8 + 1] & 255] << 12) | (iArr[bArr[i8 + 2] & 255] << 6) | iArr[bArr[i8 + 3] & 255]) >= 0) {
                        bArr2[i6 + 2] = (byte) i5;
                        bArr2[i6 + 1] = (byte) (i5 >> 8);
                        bArr2[i6] = (byte) (i5 >> 16);
                        i6 += 3;
                        i8 += 4;
                    }
                    if (i8 >= i3) {
                        int i9 = i5;
                        if (z) {
                            this.state = i7;
                            this.value = i9;
                            this.f2321nF = i6;
                            return true;
                        }
                        switch (i7) {
                            case 1:
                                this.state = 6;
                                return false;
                            case 2:
                                bArr2[i6] = (byte) (i9 >> 4);
                                i6++;
                                break;
                            case 3:
                                int i10 = i6 + 1;
                                bArr2[i6] = (byte) (i9 >> 10);
                                i6 = i10 + 1;
                                bArr2[i10] = (byte) (i9 >> 2);
                                break;
                            case 4:
                                this.state = 6;
                                return false;
                        }
                        this.state = i7;
                        this.f2321nF = i6;
                        return true;
                    }
                }
                int i11 = i8 + 1;
                int i12 = iArr[bArr[i8] & 255];
                switch (i7) {
                    case 0:
                        if (i12 >= 0) {
                            i7++;
                            i5 = i12;
                            i8 = i11;
                            continue;
                        } else if (i12 != -1) {
                            this.state = 6;
                            return false;
                        }
                        break;
                    case 1:
                        if (i12 >= 0) {
                            i5 = (i5 << 6) | i12;
                            i7++;
                            i8 = i11;
                            continue;
                        } else if (i12 != -1) {
                            this.state = 6;
                            return false;
                        }
                        break;
                    case 2:
                        if (i12 >= 0) {
                            i5 = (i5 << 6) | i12;
                            i7++;
                            i8 = i11;
                            continue;
                        } else if (i12 == -2) {
                            bArr2[i6] = (byte) (i5 >> 4);
                            i7 = 4;
                            i6++;
                            i8 = i11;
                        } else if (i12 != -1) {
                            this.state = 6;
                            return false;
                        }
                        break;
                    case 3:
                        if (i12 >= 0) {
                            i5 = (i5 << 6) | i12;
                            bArr2[i6 + 2] = (byte) i5;
                            bArr2[i6 + 1] = (byte) (i5 >> 8);
                            bArr2[i6] = (byte) (i5 >> 16);
                            i6 += 3;
                            i7 = 0;
                            i8 = i11;
                            continue;
                        } else if (i12 == -2) {
                            bArr2[i6 + 1] = (byte) (i5 >> 2);
                            bArr2[i6] = (byte) (i5 >> 10);
                            i6 += 2;
                            i7 = 5;
                            i8 = i11;
                        } else if (i12 != -1) {
                            this.state = 6;
                            return false;
                        }
                        break;
                    case 4:
                        if (i12 == -2) {
                            i7++;
                            i8 = i11;
                            continue;
                        } else if (i12 != -1) {
                            this.state = 6;
                            return false;
                        }
                        break;
                    case 5:
                        if (i12 != -1) {
                            this.state = 6;
                            return false;
                        }
                        break;
                }
                i8 = i11;
            }
            int i92 = i5;
            if (z) {
            }
        }
    }

    public static String encodeToString(byte[] bArr, int i) {
        try {
            return new String(encode(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, bArr.length, i);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        C2808c c2808c = new C2808c(i3, null);
        int i4 = (i2 / 3) << 2;
        if (c2808c.f2330Xk) {
            if (i2 % 3 > 0) {
                i4 += 4;
            }
        } else {
            switch (i2 % 3) {
                case 1:
                    i4 += 2;
                    break;
                case 2:
                    i4 += 3;
                    break;
            }
        }
        if (c2808c.f2331Xl && i2 > 0) {
            i4 += (c2808c.f2332Xm ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        c2808c.f2320Xc = new byte[i4];
        c2808c.m4327a(bArr, i, i2, true);
        if (f2319lo || c2808c.f2321nF == i4) {
            return c2808c.f2320Xc;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cgn$c */
    /* loaded from: classes.dex */
    public static class C2808c extends AbstractC2806a {

        /* renamed from: Xg */
        private static final byte[] f2325Xg;

        /* renamed from: Xh */
        private static final byte[] f2326Xh;

        /* renamed from: lo */
        static final /* synthetic */ boolean f2327lo;

        /* renamed from: Xi */
        private final byte[] f2328Xi;

        /* renamed from: Xj */
        int f2329Xj;

        /* renamed from: Xk */
        public final boolean f2330Xk;

        /* renamed from: Xl */
        public final boolean f2331Xl;

        /* renamed from: Xm */
        public final boolean f2332Xm;

        /* renamed from: Xn */
        private final byte[] f2333Xn;
        private int count;

        static {
            f2327lo = !cgn.class.desiredAssertionStatus();
            f2325Xg = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
            f2326Xh = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        }

        public C2808c(int i, byte[] bArr) {
            this.f2320Xc = bArr;
            this.f2330Xk = (i & 1) == 0;
            this.f2331Xl = (i & 2) == 0;
            this.f2332Xm = (i & 4) != 0;
            this.f2333Xn = (i & 8) == 0 ? f2325Xg : f2326Xh;
            this.f2328Xi = new byte[2];
            this.f2329Xj = 0;
            this.count = this.f2331Xl ? 19 : -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public boolean m4327a(byte[] bArr, int i, int i2, boolean z) {
            int i3;
            int i4;
            int i5;
            int i6;
            byte b;
            int i7;
            byte b2;
            int i8;
            byte b3;
            int i9;
            int i10;
            byte[] bArr2 = this.f2333Xn;
            byte[] bArr3 = this.f2320Xc;
            int i11 = 0;
            int i12 = this.count;
            int i13 = i2 + i;
            switch (this.f2329Xj) {
                case 0:
                    i4 = -1;
                    i3 = i;
                    break;
                case 1:
                    if (i + 2 <= i13) {
                        int i14 = i + 1;
                        this.f2329Xj = 0;
                        i4 = ((this.f2328Xi[0] & 255) << 16) | ((bArr[i] & 255) << 8) | (bArr[i14] & 255);
                        i3 = i14 + 1;
                        break;
                    }
                    i4 = -1;
                    i3 = i;
                    break;
                case 2:
                    if (i + 1 <= i13) {
                        int i15 = ((this.f2328Xi[0] & 255) << 16) | ((this.f2328Xi[1] & 255) << 8);
                        i3 = i + 1;
                        this.f2329Xj = 0;
                        i4 = i15 | (bArr[i] & 255);
                        break;
                    }
                    i4 = -1;
                    i3 = i;
                    break;
                default:
                    i4 = -1;
                    i3 = i;
                    break;
            }
            if (i4 != -1) {
                bArr3[0] = bArr2[(i4 >> 18) & 63];
                bArr3[1] = bArr2[(i4 >> 12) & 63];
                bArr3[2] = bArr2[(i4 >> 6) & 63];
                int i16 = 4;
                bArr3[3] = bArr2[i4 & 63];
                int i17 = i12 - 1;
                if (i17 == 0) {
                    if (this.f2332Xm) {
                        i16 = 5;
                        bArr3[4] = 13;
                    }
                    i11 = i16 + 1;
                    bArr3[i16] = 10;
                    i5 = 19;
                } else {
                    i5 = i17;
                    i11 = 4;
                }
            } else {
                i5 = i12;
            }
            while (i3 + 3 <= i13) {
                int i18 = ((bArr[i3] & 255) << 16) | ((bArr[i3 + 1] & 255) << 8) | (bArr[i3 + 2] & 255);
                bArr3[i11] = bArr2[(i18 >> 18) & 63];
                bArr3[i11 + 1] = bArr2[(i18 >> 12) & 63];
                bArr3[i11 + 2] = bArr2[(i18 >> 6) & 63];
                bArr3[i11 + 3] = bArr2[i18 & 63];
                int i19 = i3 + 3;
                int i20 = i11 + 4;
                int i21 = i5 - 1;
                if (i21 == 0) {
                    if (this.f2332Xm) {
                        i10 = i20 + 1;
                        bArr3[i20] = 13;
                    } else {
                        i10 = i20;
                    }
                    i11 = i10 + 1;
                    bArr3[i10] = 10;
                    i3 = i19;
                    i5 = 19;
                } else {
                    i5 = i21;
                    i11 = i20;
                    i3 = i19;
                }
            }
            if (z) {
                if (i3 - this.f2329Xj == i13 - 1) {
                    if (this.f2329Xj > 0) {
                        i9 = 1;
                        b3 = this.f2328Xi[0];
                    } else {
                        b3 = bArr[i3];
                        i3++;
                        i9 = 0;
                    }
                    int i22 = (b3 & 255) << 4;
                    this.f2329Xj -= i9;
                    int i23 = i11 + 1;
                    bArr3[i11] = bArr2[(i22 >> 6) & 63];
                    int i24 = i23 + 1;
                    bArr3[i23] = bArr2[i22 & 63];
                    if (this.f2330Xk) {
                        int i25 = i24 + 1;
                        bArr3[i24] = 61;
                        i24 = i25 + 1;
                        bArr3[i25] = 61;
                    }
                    if (this.f2331Xl) {
                        if (this.f2332Xm) {
                            bArr3[i24] = 13;
                            i24++;
                        }
                        bArr3[i24] = 10;
                        i24++;
                    }
                    i11 = i24;
                } else if (i3 - this.f2329Xj == i13 - 2) {
                    if (this.f2329Xj > 1) {
                        i7 = 1;
                        b = this.f2328Xi[0];
                    } else {
                        b = bArr[i3];
                        i3++;
                        i7 = 0;
                    }
                    int i26 = (b & 255) << 10;
                    if (this.f2329Xj > 0) {
                        b2 = this.f2328Xi[i7];
                        i7++;
                    } else {
                        b2 = bArr[i3];
                        i3++;
                    }
                    int i27 = ((b2 & 255) << 2) | i26;
                    this.f2329Xj -= i7;
                    int i28 = i11 + 1;
                    bArr3[i11] = bArr2[(i27 >> 12) & 63];
                    int i29 = i28 + 1;
                    bArr3[i28] = bArr2[(i27 >> 6) & 63];
                    int i30 = i29 + 1;
                    bArr3[i29] = bArr2[i27 & 63];
                    if (this.f2330Xk) {
                        i8 = i30 + 1;
                        bArr3[i30] = 61;
                    } else {
                        i8 = i30;
                    }
                    if (this.f2331Xl) {
                        if (this.f2332Xm) {
                            bArr3[i8] = 13;
                            i8++;
                        }
                        bArr3[i8] = 10;
                        i8++;
                    }
                    i11 = i8;
                } else if (this.f2331Xl && i11 > 0 && i5 != 19) {
                    if (this.f2332Xm) {
                        i6 = i11 + 1;
                        bArr3[i11] = 13;
                    } else {
                        i6 = i11;
                    }
                    i11 = i6 + 1;
                    bArr3[i6] = 10;
                }
                if (!f2327lo && this.f2329Xj != 0) {
                    throw new AssertionError();
                }
                if (!f2327lo && i3 != i13) {
                    throw new AssertionError();
                }
            } else if (i3 == i13 - 1) {
                byte[] bArr4 = this.f2328Xi;
                int i31 = this.f2329Xj;
                this.f2329Xj = i31 + 1;
                bArr4[i31] = bArr[i3];
            } else if (i3 == i13 - 2) {
                byte[] bArr5 = this.f2328Xi;
                int i32 = this.f2329Xj;
                this.f2329Xj = i32 + 1;
                bArr5[i32] = bArr[i3];
                byte[] bArr6 = this.f2328Xi;
                int i33 = this.f2329Xj;
                this.f2329Xj = i33 + 1;
                bArr6[i33] = bArr[i3 + 1];
            }
            this.f2321nF = i11;
            this.count = i5;
            return true;
        }
    }

    private cgn() {
    }
}
