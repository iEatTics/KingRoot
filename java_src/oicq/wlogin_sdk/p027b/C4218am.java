package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.am */
/* loaded from: classes.dex */
public class C4218am extends C4232b {

    /* renamed from: a */
    int f5010a = 0;

    /* renamed from: i */
    int f5011i = 0;

    public C4218am() {
        this.f5028h = 322;
    }

    /* renamed from: a */
    public byte[] m345a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        int d = m314d(bArr, 32);
        this.f5011i = d + 4;
        byte[] bArr2 = new byte[this.f5011i];
        C4393util.int16_to_buf(bArr2, 0, this.f5010a);
        C4393util.int16_to_buf(bArr2, 2, d);
        System.arraycopy(bArr, 0, bArr2, 4, d);
        int i = d + 4;
        m321b(this.f5028h);
        m317c(bArr2, bArr2.length);
        m313e();
        return m322b();
    }
}
