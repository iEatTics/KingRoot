package oicq.wlogin_sdk.p026a;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.a.g */
/* loaded from: classes.dex */
public class C4201g extends C4197c {
    public C4201g() {
        this.f4966b = 4;
    }

    /* renamed from: b */
    public byte[] m371b(byte[] bArr, byte[] bArr2) {
        this.f4968d = bArr.length + 1;
        byte[] bArr3 = new byte[this.f4968d];
        C4393util.int8_to_buf(bArr3, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 1, bArr.length);
        int length = bArr.length + 1;
        return m384a(bArr3);
    }
}
