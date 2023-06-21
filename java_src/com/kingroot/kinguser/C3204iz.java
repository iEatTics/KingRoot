package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.iz */
/* loaded from: classes.dex */
public class C3204iz {
    /* renamed from: j */
    public static int m3445j(byte[] bArr) {
        if (bArr.length != 4) {
            return 0;
        }
        return (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16) | ((bArr[3] & 255) << 24);
    }
}
