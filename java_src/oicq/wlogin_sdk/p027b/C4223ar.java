package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ar */
/* loaded from: classes.dex */
public class C4223ar extends C4232b {
    public C4223ar() {
        this.f5028h = 327;
    }

    /* renamed from: a */
    public byte[] m336a(long j, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        int d = m314d(bArr, 32);
        int d2 = m314d(bArr2, 32);
        byte[] bArr3 = new byte[d + 6 + 2 + d2];
        C4393util.int64_to_buf32(bArr3, 0, j);
        C4393util.int16_to_buf(bArr3, 4, d);
        System.arraycopy(bArr, 0, bArr3, 6, d);
        int i = d + 6;
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
