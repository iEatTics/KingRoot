package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ba */
/* loaded from: classes.dex */
public class C4233ba extends C4232b {
    public C4233ba() {
        this.f5028h = 358;
    }

    /* renamed from: a */
    public byte[] m312a(int i) {
        byte[] bArr = new byte[1];
        C4393util.int8_to_buf(bArr, 0, i);
        m321b(this.f5028h);
        m317c(bArr, bArr.length);
        m313e();
        return m322b();
    }
}
