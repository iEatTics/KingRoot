package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bgo {
    private static final char[] boT = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final byte[] boU = new byte[0];
    private static final char[] boV = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] boW = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: M */
    public static String m7097M(byte[] bArr) {
        return new String(m7096N(bArr));
    }

    /* renamed from: N */
    public static char[] m7096N(byte[] bArr) {
        return m7094d(bArr, true);
    }

    /* renamed from: d */
    public static char[] m7094d(byte[] bArr, boolean z) {
        return m7095a(bArr, z ? boV : boW);
    }

    /* renamed from: a */
    protected static char[] m7095a(byte[] bArr, char[] cArr) {
        int i = 0;
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr2[i] = cArr[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr2[i3] = cArr[bArr[i2] & 15];
        }
        return cArr2;
    }
}
