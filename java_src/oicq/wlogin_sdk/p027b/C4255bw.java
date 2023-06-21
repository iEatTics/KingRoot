package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bw */
/* loaded from: classes.dex */
public class C4255bw extends C4232b {
    public C4255bw() {
        this.f5028h = 389;
    }

    /* renamed from: a */
    public byte[] m283a(int i) {
        byte[] bArr = new byte[2];
        C4393util.int8_to_buf(bArr, 0, 1);
        C4393util.int8_to_buf(bArr, 1, i);
        m321b(this.f5028h);
        m317c(bArr, bArr.length);
        m313e();
        return m322b();
    }
}
