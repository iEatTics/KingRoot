package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.u */
/* loaded from: classes.dex */
public class C4295u extends C4232b {

    /* renamed from: a */
    int f5088a = 0;

    /* renamed from: i */
    int f5089i = 0;

    public C4295u() {
        this.f5028h = 278;
    }

    /* renamed from: a */
    public byte[] m249a(int i, int i2, long[] jArr) {
        if (jArr == null) {
            jArr = new long[0];
        }
        this.f5088a = (jArr.length * 4) + 10;
        byte[] bArr = new byte[this.f5088a];
        C4393util.int8_to_buf(bArr, 0, this.f5089i);
        C4393util.int32_to_buf(bArr, 1, i);
        C4393util.int32_to_buf(bArr, 5, i2);
        C4393util.int8_to_buf(bArr, 9, jArr.length);
        int i3 = 10;
        for (long j : jArr) {
            C4393util.int32_to_buf(bArr, i3, (int) j);
            i3 += 4;
        }
        m321b(this.f5028h);
        m317c(bArr, this.f5088a);
        m313e();
        return m322b();
    }
}
