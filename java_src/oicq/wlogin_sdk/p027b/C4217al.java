package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.al */
/* loaded from: classes.dex */
public class C4217al extends C4232b {

    /* renamed from: a */
    int f5009a = 1;

    public C4217al() {
        this.f5028h = 321;
    }

    /* renamed from: b */
    public byte[] m346b(byte[] bArr, int i, byte[] bArr2) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        int length = bArr.length + 4 + 2 + 2 + bArr2.length;
        byte[] bArr3 = new byte[length];
        C4393util.int16_to_buf(bArr3, 0, this.f5009a);
        C4393util.int16_to_buf(bArr3, 2, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 4, bArr.length);
        int length2 = bArr.length + 4;
        C4393util.int16_to_buf(bArr3, length2, i);
        int i2 = length2 + 2;
        C4393util.int16_to_buf(bArr3, i2, bArr2.length);
        int i3 = i2 + 2;
        System.arraycopy(bArr2, 0, bArr3, i3, bArr2.length);
        int length3 = i3 + bArr2.length;
        m321b(this.f5028h);
        m317c(bArr3, length);
        m313e();
        return m322b();
    }
}
