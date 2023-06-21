package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.af */
/* loaded from: classes.dex */
public class C4211af extends C4232b {

    /* renamed from: a */
    int f5003a = 0;

    /* renamed from: i */
    int f5004i = 0;

    public C4211af() {
        this.f5028h = 295;
    }

    /* renamed from: a */
    public byte[] m360a(byte[] bArr, byte[] bArr2) {
        this.f5003a = bArr.length + 4 + 2 + bArr2.length;
        byte[] bArr3 = new byte[this.f5003a];
        C4393util.int16_to_buf(bArr3, 0, this.f5004i);
        C4393util.int16_to_buf(bArr3, 2, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 4, bArr.length);
        int length = bArr.length + 4;
        C4393util.int16_to_buf(bArr3, length, bArr2.length);
        int i = length + 2;
        System.arraycopy(bArr2, 0, bArr3, i, bArr2.length);
        int length2 = i + bArr2.length;
        m321b(this.f5028h);
        m317c(bArr3, bArr3.length);
        m313e();
        return m322b();
    }
}
