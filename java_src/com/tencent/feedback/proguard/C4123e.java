package com.tencent.feedback.proguard;
/* renamed from: com.tencent.feedback.proguard.e */
/* loaded from: classes.dex */
public final class C4123e {

    /* renamed from: a */
    private static final char[] f4722a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static String m712a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr[(i * 2) + 1] = f4722a[b & 15];
            cArr[i * 2] = f4722a[((byte) (b >>> 4)) & 15];
        }
        return new String(cArr);
    }
}
