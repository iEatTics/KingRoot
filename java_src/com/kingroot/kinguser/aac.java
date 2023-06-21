package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class aac {

    /* renamed from: lo */
    static final /* synthetic */ boolean f1211lo;

    static {
        f1211lo = !aac.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aac$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0606a {

        /* renamed from: Xc */
        public byte[] f1212Xc;

        /* renamed from: nF */
        public int f1213nF;

        AbstractC0606a() {
        }
    }

    public static byte[] decode(byte[] bArr, int i) {
        return decode(bArr, 0, bArr.length, i);
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        C0607b c0607b = new C0607b(i3, new byte[(i2 * 3) / 4]);
        if (!c0607b.m13010a(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (c0607b.f1213nF == c0607b.f1212Xc.length) {
            return c0607b.f1212Xc;
        }
        byte[] bArr2 = new byte[c0607b.f1213nF];
        System.arraycopy(c0607b.f1212Xc, 0, bArr2, 0, c0607b.f1213nF);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aac$b */
    /* loaded from: classes.dex */
    public static class C0607b extends AbstractC0606a {

        /* renamed from: Xd */
        private static final int[] f1214Xd = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: Xe */
        private static final int[] f1215Xe = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* renamed from: Xf */
        private final int[] f1216Xf;
        private int state;
        private int value;

        public C0607b(int i, byte[] bArr) {
            this.f1212Xc = bArr;
            this.f1216Xf = (i & 8) == 0 ? f1214Xd : f1215Xe;
            this.state = 0;
            this.value = 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
            if (r14 != false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
            r10.state = r3;
            r10.value = r2;
            r10.f1213nF = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0105, code lost:
            switch(r3) {
                case 0: goto L21;
                case 1: goto L23;
                case 2: goto L25;
                case 3: goto L26;
                case 4: goto L27;
                default: goto L21;
            };
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0108, code lost:
            r10.state = r3;
            r10.f1213nF = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x010f, code lost:
            r10.state = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x0115, code lost:
            r5[r0] = (byte) (r2 >> 4);
            r0 = r0 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x011e, code lost:
            r1 = r0 + 1;
            r5[r0] = (byte) (r2 >> 10);
            r0 = r1 + 1;
            r5[r1] = (byte) (r2 >> 2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x012d, code lost:
            r10.state = 6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:?, code lost:
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:?, code lost:
            return true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:?, code lost:
            return false;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean m13010a(byte[] bArr, int i, int i2, boolean z) {
            int i3;
            int i4;
            if (this.state == 6) {
                return false;
            }
            int i5 = i2 + i;
            int i6 = this.state;
            int i7 = this.value;
            int i8 = 0;
            byte[] bArr2 = this.f1212Xc;
            int[] iArr = this.f1216Xf;
            int i9 = i;
            while (true) {
                if (i9 < i5) {
                    if (i6 == 0) {
                        while (i9 + 4 <= i5 && (i7 = (iArr[bArr[i9] & 255] << 18) | (iArr[bArr[i9 + 1] & 255] << 12) | (iArr[bArr[i9 + 2] & 255] << 6) | iArr[bArr[i9 + 3] & 255]) >= 0) {
                            bArr2[i8 + 2] = (byte) i7;
                            bArr2[i8 + 1] = (byte) (i7 >> 8);
                            bArr2[i8] = (byte) (i7 >> 16);
                            i8 += 3;
                            i9 += 4;
                        }
                        if (i9 >= i5) {
                            i3 = i7;
                        }
                    }
                    int i10 = i9 + 1;
                    int i11 = iArr[bArr[i9] & 255];
                    switch (i6) {
                        case 0:
                            if (i11 >= 0) {
                                i4 = i6 + 1;
                                i7 = i11;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.state = 6;
                                return false;
                            }
                            break;
                        case 1:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                i4 = i6 + 1;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.state = 6;
                                return false;
                            }
                            break;
                        case 2:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                i4 = i6 + 1;
                                continue;
                            } else if (i11 == -2) {
                                bArr2[i8] = (byte) (i7 >> 4);
                                i4 = 4;
                                i8++;
                            } else if (i11 != -1) {
                                this.state = 6;
                                return false;
                            }
                            i6 = i4;
                            i9 = i10;
                            break;
                        case 3:
                            if (i11 >= 0) {
                                i7 = (i7 << 6) | i11;
                                bArr2[i8 + 2] = (byte) i7;
                                bArr2[i8 + 1] = (byte) (i7 >> 8);
                                bArr2[i8] = (byte) (i7 >> 16);
                                i8 += 3;
                                i4 = 0;
                                continue;
                            } else if (i11 == -2) {
                                bArr2[i8 + 1] = (byte) (i7 >> 2);
                                bArr2[i8] = (byte) (i7 >> 10);
                                i8 += 2;
                                i4 = 5;
                            } else if (i11 != -1) {
                                this.state = 6;
                                return false;
                            }
                            i6 = i4;
                            i9 = i10;
                            break;
                        case 4:
                            if (i11 == -2) {
                                i4 = i6 + 1;
                                continue;
                                i6 = i4;
                                i9 = i10;
                            } else if (i11 != -1) {
                                this.state = 6;
                                return false;
                            }
                            break;
                        case 5:
                            if (i11 != -1) {
                                this.state = 6;
                                return false;
                            }
                            break;
                    }
                    i4 = i6;
                    i6 = i4;
                    i9 = i10;
                } else {
                    i3 = i7;
                }
            }
        }
    }

    public static byte[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, bArr.length, i);
    }

    public static byte[] encode(byte[] bArr, int i, int i2, int i3) {
        C0608c c0608c = new C0608c(i3, null);
        int i4 = (i2 / 3) * 4;
        if (c0608c.f1222Xk) {
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
        if (c0608c.f1223Xl && i2 > 0) {
            i4 += (c0608c.f1224Xm ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        c0608c.f1212Xc = new byte[i4];
        c0608c.m13009a(bArr, i, i2, true);
        if (f1211lo || c0608c.f1213nF == i4) {
            return c0608c.f1212Xc;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aac$c */
    /* loaded from: classes.dex */
    public static class C0608c extends AbstractC0606a {

        /* renamed from: Xg */
        private static final byte[] f1217Xg;

        /* renamed from: Xh */
        private static final byte[] f1218Xh;

        /* renamed from: lo */
        static final /* synthetic */ boolean f1219lo;

        /* renamed from: Xi */
        private final byte[] f1220Xi;

        /* renamed from: Xj */
        int f1221Xj;

        /* renamed from: Xk */
        public final boolean f1222Xk;

        /* renamed from: Xl */
        public final boolean f1223Xl;

        /* renamed from: Xm */
        public final boolean f1224Xm;

        /* renamed from: Xn */
        private final byte[] f1225Xn;
        private int count;

        static {
            f1219lo = !aac.class.desiredAssertionStatus();
            f1217Xg = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
            f1218Xh = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        }

        public C0608c(int i, byte[] bArr) {
            this.f1212Xc = bArr;
            this.f1222Xk = (i & 1) == 0;
            this.f1223Xl = (i & 2) == 0;
            this.f1224Xm = (i & 4) != 0;
            this.f1225Xn = (i & 8) == 0 ? f1217Xg : f1218Xh;
            this.f1220Xi = new byte[2];
            this.f1221Xj = 0;
            this.count = this.f1223Xl ? 19 : -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public boolean m13009a(byte[] bArr, int i, int i2, boolean z) {
            int i3;
            int i4;
            byte b;
            int i5;
            byte b2;
            int i6;
            byte b3;
            int i7;
            int i8;
            int i9;
            int i10;
            byte[] bArr2 = this.f1225Xn;
            byte[] bArr3 = this.f1212Xc;
            int i11 = 0;
            int i12 = this.count;
            int i13 = i2 + i;
            int i14 = -1;
            switch (this.f1221Xj) {
                case 0:
                    i3 = i;
                    break;
                case 1:
                    if (i + 2 <= i13) {
                        int i15 = i + 1;
                        i14 = ((this.f1220Xi[0] & 255) << 16) | ((bArr[i] & 255) << 8) | (bArr[i15] & 255);
                        this.f1221Xj = 0;
                        i3 = i15 + 1;
                        break;
                    }
                    i3 = i;
                    break;
                case 2:
                    if (i + 1 <= i13) {
                        i3 = i + 1;
                        i14 = ((this.f1220Xi[0] & 255) << 16) | ((this.f1220Xi[1] & 255) << 8) | (bArr[i] & 255);
                        this.f1221Xj = 0;
                        break;
                    }
                    i3 = i;
                    break;
                default:
                    i3 = i;
                    break;
            }
            if (i14 != -1) {
                bArr3[0] = bArr2[(i14 >> 18) & 63];
                bArr3[1] = bArr2[(i14 >> 12) & 63];
                bArr3[2] = bArr2[(i14 >> 6) & 63];
                i11 = 4;
                bArr3[3] = bArr2[i14 & 63];
                i12--;
                if (i12 == 0) {
                    if (this.f1224Xm) {
                        i10 = 5;
                        bArr3[4] = 13;
                    } else {
                        i10 = 4;
                    }
                    i11 = i10 + 1;
                    bArr3[i10] = 10;
                    i12 = 19;
                }
            }
            while (true) {
                int i16 = i12;
                int i17 = i11;
                if (i3 + 3 <= i13) {
                    int i18 = ((bArr[i3] & 255) << 16) | ((bArr[i3 + 1] & 255) << 8) | (bArr[i3 + 2] & 255);
                    bArr3[i17] = bArr2[(i18 >> 18) & 63];
                    bArr3[i17 + 1] = bArr2[(i18 >> 12) & 63];
                    bArr3[i17 + 2] = bArr2[(i18 >> 6) & 63];
                    bArr3[i17 + 3] = bArr2[i18 & 63];
                    i3 += 3;
                    i11 = i17 + 4;
                    i12 = i16 - 1;
                    if (i12 == 0) {
                        if (this.f1224Xm) {
                            i9 = i11 + 1;
                            bArr3[i11] = 13;
                        } else {
                            i9 = i11;
                        }
                        i11 = i9 + 1;
                        bArr3[i9] = 10;
                        i12 = 19;
                    }
                } else {
                    if (z) {
                        if (i3 - this.f1221Xj == i13 - 1) {
                            if (this.f1221Xj > 0) {
                                i8 = 1;
                                b3 = this.f1220Xi[0];
                                i7 = i3;
                            } else {
                                b3 = bArr[i3];
                                i7 = i3 + 1;
                                i8 = 0;
                            }
                            int i19 = (b3 & 255) << 4;
                            this.f1221Xj -= i8;
                            int i20 = i17 + 1;
                            bArr3[i17] = bArr2[(i19 >> 6) & 63];
                            int i21 = i20 + 1;
                            bArr3[i20] = bArr2[i19 & 63];
                            if (this.f1222Xk) {
                                int i22 = i21 + 1;
                                bArr3[i21] = 61;
                                i21 = i22 + 1;
                                bArr3[i22] = 61;
                            }
                            if (this.f1223Xl) {
                                if (this.f1224Xm) {
                                    bArr3[i21] = 13;
                                    i21++;
                                }
                                bArr3[i21] = 10;
                                i21++;
                            }
                            i3 = i7;
                            i17 = i21;
                        } else if (i3 - this.f1221Xj == i13 - 2) {
                            if (this.f1221Xj > 1) {
                                i5 = 1;
                                b = this.f1220Xi[0];
                            } else {
                                b = bArr[i3];
                                i3++;
                                i5 = 0;
                            }
                            int i23 = (b & 255) << 10;
                            if (this.f1221Xj > 0) {
                                b2 = this.f1220Xi[i5];
                                i5++;
                            } else {
                                b2 = bArr[i3];
                                i3++;
                            }
                            int i24 = ((b2 & 255) << 2) | i23;
                            this.f1221Xj -= i5;
                            int i25 = i17 + 1;
                            bArr3[i17] = bArr2[(i24 >> 12) & 63];
                            int i26 = i25 + 1;
                            bArr3[i25] = bArr2[(i24 >> 6) & 63];
                            int i27 = i26 + 1;
                            bArr3[i26] = bArr2[i24 & 63];
                            if (this.f1222Xk) {
                                i6 = i27 + 1;
                                bArr3[i27] = 61;
                            } else {
                                i6 = i27;
                            }
                            if (this.f1223Xl) {
                                if (this.f1224Xm) {
                                    bArr3[i6] = 13;
                                    i6++;
                                }
                                bArr3[i6] = 10;
                                i6++;
                            }
                            i17 = i6;
                        } else if (this.f1223Xl && i17 > 0 && i16 != 19) {
                            if (this.f1224Xm) {
                                i4 = i17 + 1;
                                bArr3[i17] = 13;
                            } else {
                                i4 = i17;
                            }
                            i17 = i4 + 1;
                            bArr3[i4] = 10;
                        }
                        if (!f1219lo && this.f1221Xj != 0) {
                            throw new AssertionError();
                        }
                        if (!f1219lo && i3 != i13) {
                            throw new AssertionError();
                        }
                    } else if (i3 == i13 - 1) {
                        byte[] bArr4 = this.f1220Xi;
                        int i28 = this.f1221Xj;
                        this.f1221Xj = i28 + 1;
                        bArr4[i28] = bArr[i3];
                    } else if (i3 == i13 - 2) {
                        byte[] bArr5 = this.f1220Xi;
                        int i29 = this.f1221Xj;
                        this.f1221Xj = i29 + 1;
                        bArr5[i29] = bArr[i3];
                        byte[] bArr6 = this.f1220Xi;
                        int i30 = this.f1221Xj;
                        this.f1221Xj = i30 + 1;
                        bArr6[i30] = bArr[i3 + 1];
                    }
                    this.f1213nF = i17;
                    this.count = i16;
                    return true;
                }
            }
        }
    }

    private aac() {
    }
}
