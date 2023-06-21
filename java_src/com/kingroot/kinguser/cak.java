package com.kingroot.kinguser;

import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
public class cak {

    /* renamed from: a */
    static final /* synthetic */ boolean f2217a;

    static {
        f2217a = !cak.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cak$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC2691a {

        /* renamed from: a */
        public byte[] f2218a;

        /* renamed from: b */
        public int f2219b;

        AbstractC2691a() {
        }
    }

    /* renamed from: a */
    public static byte[] m5063a(String str, int i) {
        return m5062a(str.getBytes(), i);
    }

    /* renamed from: a */
    public static byte[] m5062a(byte[] bArr, int i) {
        return m5061b(bArr, 0, bArr.length, i);
    }

    /* renamed from: b */
    public static byte[] m5061b(byte[] bArr, int i, int i2, int i3) {
        C2692b c2692b = new C2692b(i3, new byte[(i2 * 3) / 4]);
        if (!c2692b.m5057b(bArr, i, i2, true)) {
            throw new IllegalArgumentException("bad base-64");
        }
        if (c2692b.f2219b == c2692b.f2218a.length) {
            return c2692b.f2218a;
        }
        byte[] bArr2 = new byte[c2692b.f2219b];
        System.arraycopy(c2692b.f2218a, 0, bArr2, 0, c2692b.f2219b);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cak$b */
    /* loaded from: classes.dex */
    public static class C2692b extends AbstractC2691a {
        private static final int[] bWt = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private static final int[] bWu = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        private final int[] bWv;

        /* renamed from: e */
        private int f2220e;

        /* renamed from: f */
        private int f2221f;

        public C2692b(int i, byte[] bArr) {
            this.f2218a = bArr;
            this.bWv = (i & 8) == 0 ? bWt : bWu;
            this.f2220e = 0;
            this.f2221f = 0;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
            if (r14 != false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
            r10.f2220e = r3;
            r10.f2221f = r2;
            r10.f2219b = r0;
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
            r10.f2220e = r3;
            r10.f2219b = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x010f, code lost:
            r10.f2220e = 6;
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
            r10.f2220e = 6;
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
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean m5057b(byte[] bArr, int i, int i2, boolean z) {
            int i3;
            int i4;
            if (this.f2220e == 6) {
                return false;
            }
            int i5 = i2 + i;
            int i6 = this.f2220e;
            int i7 = this.f2221f;
            int i8 = 0;
            byte[] bArr2 = this.f2218a;
            int[] iArr = this.bWv;
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
                                this.f2220e = 6;
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
                                this.f2220e = 6;
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
                                this.f2220e = 6;
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
                                this.f2220e = 6;
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
                                this.f2220e = 6;
                                return false;
                            }
                            break;
                        case 5:
                            if (i11 != -1) {
                                this.f2220e = 6;
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

    /* renamed from: h */
    public static String m5059h(byte[] bArr, int i) {
        try {
            return new String(m5058i(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: i */
    public static byte[] m5058i(byte[] bArr, int i) {
        return m5060c(bArr, 0, bArr.length, i);
    }

    /* renamed from: c */
    public static byte[] m5060c(byte[] bArr, int i, int i2, int i3) {
        C2693c c2693c = new C2693c(i3, null);
        int i4 = (i2 / 3) * 4;
        if (c2693c.f2226d) {
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
        if (c2693c.f2227e && i2 > 0) {
            i4 += (c2693c.f2228f ? 2 : 1) * (((i2 - 1) / 57) + 1);
        }
        c2693c.f2218a = new byte[i4];
        c2693c.m5056b(bArr, i, i2, true);
        if (f2217a || c2693c.f2219b == i4) {
            return c2693c.f2218a;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.cak$c */
    /* loaded from: classes.dex */
    public static class C2693c extends AbstractC2691a {

        /* renamed from: g */
        static final /* synthetic */ boolean f2222g;

        /* renamed from: h */
        private static final byte[] f2223h;

        /* renamed from: i */
        private static final byte[] f2224i;

        /* renamed from: c */
        int f2225c;

        /* renamed from: d */
        public final boolean f2226d;

        /* renamed from: e */
        public final boolean f2227e;

        /* renamed from: f */
        public final boolean f2228f;

        /* renamed from: j */
        private final byte[] f2229j;

        /* renamed from: k */
        private int f2230k;

        /* renamed from: l */
        private final byte[] f2231l;

        static {
            f2222g = !cak.class.desiredAssertionStatus();
            f2223h = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
            f2224i = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        }

        public C2693c(int i, byte[] bArr) {
            this.f2218a = bArr;
            this.f2226d = (i & 1) == 0;
            this.f2227e = (i & 2) == 0;
            this.f2228f = (i & 4) != 0;
            this.f2231l = (i & 8) == 0 ? f2223h : f2224i;
            this.f2229j = new byte[2];
            this.f2225c = 0;
            this.f2230k = this.f2227e ? 19 : -1;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: b */
        public boolean m5056b(byte[] bArr, int i, int i2, boolean z) {
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
            byte[] bArr2 = this.f2231l;
            byte[] bArr3 = this.f2218a;
            int i11 = 0;
            int i12 = this.f2230k;
            int i13 = i2 + i;
            int i14 = -1;
            switch (this.f2225c) {
                case 0:
                    i3 = i;
                    break;
                case 1:
                    if (i + 2 <= i13) {
                        int i15 = i + 1;
                        i14 = ((this.f2229j[0] & 255) << 16) | ((bArr[i] & 255) << 8) | (bArr[i15] & 255);
                        this.f2225c = 0;
                        i3 = i15 + 1;
                        break;
                    }
                    i3 = i;
                    break;
                case 2:
                    if (i + 1 <= i13) {
                        i3 = i + 1;
                        i14 = ((this.f2229j[0] & 255) << 16) | ((this.f2229j[1] & 255) << 8) | (bArr[i] & 255);
                        this.f2225c = 0;
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
                    if (this.f2228f) {
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
                        if (this.f2228f) {
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
                        if (i3 - this.f2225c == i13 - 1) {
                            if (this.f2225c > 0) {
                                i8 = 1;
                                b3 = this.f2229j[0];
                                i7 = i3;
                            } else {
                                b3 = bArr[i3];
                                i7 = i3 + 1;
                                i8 = 0;
                            }
                            int i19 = (b3 & 255) << 4;
                            this.f2225c -= i8;
                            int i20 = i17 + 1;
                            bArr3[i17] = bArr2[(i19 >> 6) & 63];
                            int i21 = i20 + 1;
                            bArr3[i20] = bArr2[i19 & 63];
                            if (this.f2226d) {
                                int i22 = i21 + 1;
                                bArr3[i21] = 61;
                                i21 = i22 + 1;
                                bArr3[i22] = 61;
                            }
                            if (this.f2227e) {
                                if (this.f2228f) {
                                    bArr3[i21] = 13;
                                    i21++;
                                }
                                bArr3[i21] = 10;
                                i21++;
                            }
                            i3 = i7;
                            i17 = i21;
                        } else if (i3 - this.f2225c == i13 - 2) {
                            if (this.f2225c > 1) {
                                i5 = 1;
                                b = this.f2229j[0];
                            } else {
                                b = bArr[i3];
                                i3++;
                                i5 = 0;
                            }
                            int i23 = (b & 255) << 10;
                            if (this.f2225c > 0) {
                                b2 = this.f2229j[i5];
                                i5++;
                            } else {
                                b2 = bArr[i3];
                                i3++;
                            }
                            int i24 = ((b2 & 255) << 2) | i23;
                            this.f2225c -= i5;
                            int i25 = i17 + 1;
                            bArr3[i17] = bArr2[(i24 >> 12) & 63];
                            int i26 = i25 + 1;
                            bArr3[i25] = bArr2[(i24 >> 6) & 63];
                            int i27 = i26 + 1;
                            bArr3[i26] = bArr2[i24 & 63];
                            if (this.f2226d) {
                                i6 = i27 + 1;
                                bArr3[i27] = 61;
                            } else {
                                i6 = i27;
                            }
                            if (this.f2227e) {
                                if (this.f2228f) {
                                    bArr3[i6] = 13;
                                    i6++;
                                }
                                bArr3[i6] = 10;
                                i6++;
                            }
                            i17 = i6;
                        } else if (this.f2227e && i17 > 0 && i16 != 19) {
                            if (this.f2228f) {
                                i4 = i17 + 1;
                                bArr3[i17] = 13;
                            } else {
                                i4 = i17;
                            }
                            i17 = i4 + 1;
                            bArr3[i4] = 10;
                        }
                        if (!f2222g && this.f2225c != 0) {
                            throw new AssertionError();
                        }
                        if (!f2222g && i3 != i13) {
                            throw new AssertionError();
                        }
                    } else if (i3 == i13 - 1) {
                        byte[] bArr4 = this.f2229j;
                        int i28 = this.f2225c;
                        this.f2225c = i28 + 1;
                        bArr4[i28] = bArr[i3];
                    } else if (i3 == i13 - 2) {
                        byte[] bArr5 = this.f2229j;
                        int i29 = this.f2225c;
                        this.f2225c = i29 + 1;
                        bArr5[i29] = bArr[i3];
                        byte[] bArr6 = this.f2229j;
                        int i30 = this.f2225c;
                        this.f2225c = i30 + 1;
                        bArr6[i30] = bArr[i3 + 1];
                    }
                    this.f2219b = i17;
                    this.f2230k = i16;
                    return true;
                }
            }
        }
    }

    private cak() {
    }
}
