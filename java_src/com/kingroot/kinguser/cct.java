package com.kingroot.kinguser;

import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class cct {

    /* renamed from: a */
    private static final byte[] f2252a;

    /* renamed from: b */
    private static final byte[] f2253b;

    /* renamed from: a */
    public static boolean m4897a(int i, int i2) {
        return i == i2;
    }

    /* renamed from: a */
    public static boolean m4896a(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    /* renamed from: a */
    public static byte[] m4895a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.position()];
        System.arraycopy(byteBuffer.array(), 0, bArr, 0, bArr.length);
        return bArr;
    }

    static {
        byte[] bArr = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
        byte[] bArr2 = new byte[256];
        byte[] bArr3 = new byte[256];
        for (int i = 0; i < 256; i++) {
            bArr2[i] = bArr[i >>> 4];
            bArr3[i] = bArr[i & 15];
        }
        f2252a = bArr2;
        f2253b = bArr3;
    }
}
