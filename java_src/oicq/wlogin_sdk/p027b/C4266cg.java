package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.cg */
/* loaded from: classes.dex */
public class C4266cg extends C4232b {

    /* renamed from: a */
    int f5063a = 0;

    /* renamed from: i */
    int f5064i = 0;

    public C4266cg() {
        this.f5028h = 2;
    }

    /* renamed from: a */
    public byte[] m269a(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        this.f5063a = bArr.length + 6 + bArr2.length;
        byte[] bArr3 = new byte[this.f5063a];
        C4393util.int16_to_buf(bArr3, 0, this.f5064i);
        C4393util.int16_to_buf(bArr3, 2, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 4, bArr.length);
        int length = bArr.length + 4;
        C4393util.int16_to_buf(bArr3, length, bArr2.length);
        int i = length + 2;
        System.arraycopy(bArr2, 0, bArr3, i, bArr2.length);
        int length2 = i + bArr2.length;
        m321b(this.f5028h);
        m317c(bArr3, this.f5063a);
        m313e();
        return m322b();
    }
}
