package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class aaa {
    /* renamed from: bY */
    public static byte[] m13022bY(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    /* renamed from: A */
    public static int m13023A(byte[] bArr) {
        if (bArr.length != 4) {
            return 0;
        }
        return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 24);
    }
}
