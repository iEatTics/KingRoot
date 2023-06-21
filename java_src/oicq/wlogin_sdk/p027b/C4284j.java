package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.j */
/* loaded from: classes.dex */
public class C4284j extends C4232b {

    /* renamed from: a */
    int f5084a = 6;

    public C4284j() {
        this.f5028h = 263;
    }

    /* renamed from: a */
    public byte[] m255a(int i, int i2, int i3, int i4) {
        byte[] bArr = new byte[this.f5084a];
        C4393util.int16_to_buf(bArr, 0, i);
        C4393util.int8_to_buf(bArr, 2, i2);
        C4393util.int16_to_buf(bArr, 3, i3);
        C4393util.int8_to_buf(bArr, 5, i4);
        m321b(this.f5028h);
        m317c(bArr, this.f5084a);
        m313e();
        return m322b();
    }
}
