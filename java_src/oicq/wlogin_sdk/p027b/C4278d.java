package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.d */
/* loaded from: classes.dex */
public class C4278d extends C4232b {

    /* renamed from: a */
    int f5073a = 1;

    /* renamed from: i */
    int f5074i = 5;

    /* renamed from: j */
    int f5075j = 22;

    public C4278d() {
        this.f5028h = 256;
    }

    /* renamed from: a */
    public byte[] m260a(long j, long j2, int i, int i2) {
        byte[] bArr = new byte[this.f5075j];
        C4393util.int16_to_buf(bArr, 0, this.f5073a);
        C4393util.int32_to_buf(bArr, 2, this.f5074i);
        C4393util.int32_to_buf(bArr, 6, (int) j);
        C4393util.int32_to_buf(bArr, 10, (int) j2);
        C4393util.int32_to_buf(bArr, 14, i);
        C4393util.int32_to_buf(bArr, 18, i2);
        m321b(this.f5028h);
        m317c(bArr, this.f5075j);
        m313e();
        return m322b();
    }
}
