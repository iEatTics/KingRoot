package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.as */
/* loaded from: classes.dex */
public class C4224as extends C4232b {
    public C4224as() {
        this.f5028h = 328;
    }

    /* renamed from: a */
    public byte[] m335a(byte[] bArr, long j, long j2, long j3, byte[] bArr2, byte[] bArr3) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (bArr3 == null) {
            bArr3 = new byte[0];
        }
        int d = m314d(bArr, 32);
        int d2 = m314d(bArr2, 32);
        int d3 = m314d(bArr3, 32);
        byte[] bArr4 = new byte[d + 2 + 4 + 4 + 4 + 2 + d2 + 2 + d3];
        C4393util.int16_to_buf(bArr4, 0, d);
        System.arraycopy(bArr, 0, bArr4, 2, d);
        int i = d + 2;
        C4393util.int64_to_buf32(bArr4, i, j);
        int i2 = i + 4;
        C4393util.int64_to_buf32(bArr4, i2, j2);
        int i3 = i2 + 4;
        C4393util.int64_to_buf32(bArr4, i3, j3);
        int i4 = i3 + 4;
        C4393util.int16_to_buf(bArr4, i4, d2);
        int i5 = i4 + 2;
        System.arraycopy(bArr2, 0, bArr4, i5, d2);
        int i6 = i5 + d2;
        C4393util.int16_to_buf(bArr4, i6, d3);
        int i7 = i6 + 2;
        System.arraycopy(bArr3, 0, bArr4, i7, d3);
        int i8 = i7 + d3;
        m321b(this.f5028h);
        m317c(bArr4, bArr4.length);
        m313e();
        return m322b();
    }
}
