package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.av */
/* loaded from: classes.dex */
public class C4227av extends C4232b {
    public C4227av() {
        this.f5028h = 339;
    }

    /* renamed from: a */
    public byte[] m328a(int i) {
        byte[] bArr = new byte[2];
        C4393util.int16_to_buf(bArr, 0, i);
        m321b(this.f5028h);
        m317c(bArr, bArr.length);
        m313e();
        return m322b();
    }
}
