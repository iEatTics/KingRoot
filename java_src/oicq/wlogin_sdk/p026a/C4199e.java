package oicq.wlogin_sdk.p026a;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.a.e */
/* loaded from: classes.dex */
public class C4199e extends C4197c {
    public C4199e() {
        this.f4966b = 7;
    }

    /* renamed from: a */
    public byte[] m373a(int i, byte[] bArr, long j) {
        this.f4968d = bArr.length + 2 + 4;
        byte[] bArr2 = new byte[this.f4968d];
        C4393util.int8_to_buf(bArr2, 0, i);
        C4393util.int8_to_buf(bArr2, 1, bArr.length);
        System.arraycopy(bArr, 0, bArr2, 2, bArr.length);
        int length = bArr.length + 2;
        C4393util.int64_to_buf32(bArr2, length, j);
        int i2 = length + 4;
        return m384a(bArr2);
    }
}
