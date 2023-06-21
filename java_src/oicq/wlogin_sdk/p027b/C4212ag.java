package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ag */
/* loaded from: classes.dex */
public class C4212ag extends C4232b {

    /* renamed from: a */
    int f5005a = 0;

    public C4212ag() {
        this.f5028h = 296;
    }

    /* renamed from: a */
    public byte[] m359a(int i, int i2, int i3, int i4, byte[] bArr, byte[] bArr2, byte[] bArr3) {
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
        int d2 = m314d(bArr2, 16);
        int d3 = m314d(bArr3, 16);
        this.f5005a = d + 11 + 2 + d2 + 2 + d3;
        byte[] bArr4 = new byte[this.f5005a];
        C4393util.int16_to_buf(bArr4, 0, 0);
        C4393util.int8_to_buf(bArr4, 2, i);
        C4393util.int8_to_buf(bArr4, 3, i2);
        C4393util.int8_to_buf(bArr4, 4, i3);
        C4393util.int32_to_buf(bArr4, 5, i4);
        C4393util.int16_to_buf(bArr4, 9, d);
        System.arraycopy(bArr, 0, bArr4, 11, d);
        int i5 = d + 11;
        C4393util.int16_to_buf(bArr4, i5, d2);
        int i6 = i5 + 2;
        System.arraycopy(bArr2, 0, bArr4, i6, d2);
        int i7 = i6 + d2;
        C4393util.int16_to_buf(bArr4, i7, d3);
        int i8 = i7 + 2;
        System.arraycopy(bArr3, 0, bArr4, i8, d3);
        int i9 = i8 + d3;
        m321b(this.f5028h);
        m317c(bArr4, this.f5005a);
        m313e();
        return m322b();
    }
}
