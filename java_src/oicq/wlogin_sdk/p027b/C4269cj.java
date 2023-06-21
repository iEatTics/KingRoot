package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.cj */
/* loaded from: classes.dex */
public class C4269cj extends C4232b {
    public C4269cj() {
        this.f5028h = 514;
    }

    /* renamed from: a */
    public byte[] m265a(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            bArr = new byte[16];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        int d = m314d(bArr, 16);
        int d2 = m314d(bArr2, 32);
        byte[] bArr3 = new byte[d + 2 + 2 + d2];
        C4393util.int16_to_buf(bArr3, 0, d);
        System.arraycopy(bArr, 0, bArr3, 2, d);
        int i = d + 2;
        C4393util.int16_to_buf(bArr3, i, d2);
        int i2 = i + 2;
        System.arraycopy(bArr2, 0, bArr3, i2, d2);
        int i3 = i2 + d2;
        m321b(this.f5028h);
        m317c(bArr3, bArr3.length);
        m313e();
        return m322b();
    }
}
