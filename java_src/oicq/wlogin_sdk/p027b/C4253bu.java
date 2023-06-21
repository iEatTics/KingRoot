package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bu */
/* loaded from: classes.dex */
public class C4253bu extends C4232b {

    /* renamed from: a */
    long f5046a = 0;

    public C4253bu() {
        this.f5028h = 387;
    }

    /* renamed from: a */
    public long m286a() {
        return this.f5046a;
    }

    /* renamed from: a */
    public byte[] m285a(long j) {
        byte[] bArr = new byte[8];
        C4393util.int64_to_buf(bArr, 0, j);
        m321b(this.f5028h);
        m317c(bArr, bArr.length);
        m313e();
        return m322b();
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 8) {
            return false;
        }
        this.f5046a = C4393util.buf_to_int64(this.f5027g, this.f5025e);
        return true;
    }
}
