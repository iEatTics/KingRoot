package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bk */
/* loaded from: classes.dex */
public class C4243bk extends C4232b {

    /* renamed from: a */
    int f5034a = 0;

    public C4243bk() {
        this.f5028h = 375;
    }

    /* renamed from: a */
    public byte[] m304a(long j, String str) {
        byte[] bArr = new byte[0];
        if (str != null) {
            bArr = str.getBytes();
        }
        this.f5034a = bArr.length + 7;
        byte[] bArr2 = new byte[this.f5034a];
        C4393util.int8_to_buf(bArr2, 0, 1);
        C4393util.int64_to_buf32(bArr2, 1, j);
        C4393util.int16_to_buf(bArr2, 5, bArr.length);
        System.arraycopy(bArr, 0, bArr2, 7, bArr.length);
        int length = bArr.length + 7;
        m321b(this.f5028h);
        m317c(bArr2, this.f5034a);
        m313e();
        return m322b();
    }
}
