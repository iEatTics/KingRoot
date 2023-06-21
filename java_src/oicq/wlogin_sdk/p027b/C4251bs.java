package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bs */
/* loaded from: classes.dex */
public class C4251bs extends C4232b {

    /* renamed from: a */
    int f5041a = 22;

    /* renamed from: i */
    int f5042i = 1;

    /* renamed from: j */
    int f5043j = 1536;

    public C4251bs() {
        this.f5028h = 24;
    }

    /* renamed from: a */
    public byte[] m289a(long j, int i, long j2, int i2) {
        byte[] bArr = new byte[this.f5041a];
        C4393util.int16_to_buf(bArr, 0, this.f5042i);
        C4393util.int32_to_buf(bArr, 2, this.f5043j);
        C4393util.int32_to_buf(bArr, 6, (int) j);
        C4393util.int32_to_buf(bArr, 10, i);
        C4393util.int32_to_buf(bArr, 14, (int) j2);
        C4393util.int16_to_buf(bArr, 18, i2);
        C4393util.int16_to_buf(bArr, 20, 0);
        m321b(this.f5028h);
        m317c(bArr, this.f5041a);
        m313e();
        return m322b();
    }
}
