package oicq.wlogin_sdk.p026a;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.a.f */
/* loaded from: classes.dex */
public class C4200f extends C4197c {
    public C4200f() {
        this.f4966b = 3;
    }

    /* renamed from: b */
    public byte[] m372b(byte[] bArr, byte[] bArr2) {
        byte[] a = m382a(bArr, bArr2);
        this.f4968d = bArr.length + 1 + 1 + a.length;
        byte[] bArr3 = new byte[this.f4968d];
        C4393util.int8_to_buf(bArr3, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 1, bArr.length);
        int length = bArr.length + 1;
        C4393util.int8_to_buf(bArr3, length, a.length);
        int i = length + 1;
        System.arraycopy(a, 0, bArr3, i, a.length);
        int length2 = a.length + i;
        return m384a(bArr3);
    }
}
