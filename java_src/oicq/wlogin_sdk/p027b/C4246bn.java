package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bn */
/* loaded from: classes.dex */
public class C4246bn extends C4232b {
    public C4246bn() {
        this.f5028h = 378;
    }

    /* renamed from: a */
    public byte[] m297a(long j) {
        byte[] bArr = new byte[4];
        C4393util.int64_to_buf32(bArr, 0, j);
        m321b(this.f5028h);
        m317c(bArr, 4);
        m313e();
        return m322b();
    }
}
