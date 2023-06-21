package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.c */
/* loaded from: classes.dex */
public class C4259c extends C4232b {

    /* renamed from: a */
    int f5051a = 4;

    /* renamed from: i */
    int f5052i = 14;

    /* renamed from: j */
    int f5053j = 1;

    /* renamed from: k */
    int f5054k = 20;

    /* renamed from: l */
    byte[] f5055l = new byte[2];

    public C4259c() {
        this.f5028h = 1;
    }

    /* renamed from: a */
    public byte[] m279a(long j, byte[] bArr) {
        byte[] bArr2 = new byte[this.f5054k];
        C4393util.int16_to_buf(bArr2, 0, this.f5053j);
        C4393util.int32_to_buf(bArr2, 2, C4393util.get_rand_32());
        C4393util.int32_to_buf(bArr2, 6, (int) j);
        C4393util.int64_to_buf32(bArr2, 10, C4393util.get_server_cur_time());
        System.arraycopy(bArr, 0, bArr2, 14, bArr.length);
        int length = bArr.length + 14;
        C4393util.int16_to_buf(bArr2, length, 0);
        int i = length + 2;
        m321b(this.f5028h);
        m317c(bArr2, this.f5054k);
        m313e();
        return m322b();
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        return this.f5026f >= 20;
    }
}
