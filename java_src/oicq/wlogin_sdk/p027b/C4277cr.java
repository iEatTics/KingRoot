package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.cr */
/* loaded from: classes.dex */
public class C4277cr extends C4232b {

    /* renamed from: a */
    int f5072a = 0;

    public C4277cr() {
        this.f5028h = 8;
    }

    /* renamed from: a */
    public byte[] m261a(int i, int i2, int i3) {
        this.f5072a = 8;
        byte[] bArr = new byte[this.f5072a];
        C4393util.int16_to_buf(bArr, 0, i);
        C4393util.int32_to_buf(bArr, 2, i2);
        C4393util.int16_to_buf(bArr, 6, i3);
        m321b(this.f5028h);
        m317c(bArr, this.f5072a);
        m313e();
        return m322b();
    }
}
