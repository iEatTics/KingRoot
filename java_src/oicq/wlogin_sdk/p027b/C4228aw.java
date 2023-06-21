package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.aw */
/* loaded from: classes.dex */
public class C4228aw extends C4232b {
    public C4228aw() {
        this.f5028h = 340;
    }

    /* renamed from: a */
    public byte[] m327a(int i) {
        byte[] bArr = new byte[4];
        C4393util.int32_to_buf(bArr, 0, i);
        m321b(this.f5028h);
        m317c(bArr, bArr.length);
        m313e();
        return m322b();
    }
}
