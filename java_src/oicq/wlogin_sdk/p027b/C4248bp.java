package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bp */
/* loaded from: classes.dex */
public class C4248bp extends C4232b {

    /* renamed from: a */
    int f5038a = 0;

    public C4248bp() {
        this.f5028h = 380;
    }

    /* renamed from: a */
    public byte[] m294a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5038a = bArr.length + 2;
        byte[] bArr2 = new byte[this.f5038a];
        C4393util.int16_to_buf(bArr2, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr2, 2, bArr.length);
        int length = bArr.length + 2;
        m321b(this.f5028h);
        m317c(bArr2, this.f5038a);
        m313e();
        return m322b();
    }
}
