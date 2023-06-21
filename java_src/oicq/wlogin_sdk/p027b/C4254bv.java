package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.MD5;
/* renamed from: oicq.wlogin_sdk.b.bv */
/* loaded from: classes.dex */
public class C4254bv extends C4232b {

    /* renamed from: a */
    byte[] f5047a = new byte[0];

    public C4254bv() {
        this.f5028h = 388;
    }

    /* renamed from: a */
    public byte[] m284a(long j, String str) {
        byte[] mD5Byte = MD5.toMD5Byte(str);
        int length = mD5Byte.length;
        byte[] bArr = new byte[length + 8];
        System.arraycopy(mD5Byte, 0, bArr, 0, length);
        int i = 0 + length;
        C4393util.int64_to_buf(bArr, i, j);
        int i2 = i + 8;
        byte[] mD5Byte2 = MD5.toMD5Byte(bArr);
        m321b(this.f5028h);
        m317c(mD5Byte2, mD5Byte2.length);
        m313e();
        return m322b();
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 16) {
            return false;
        }
        this.f5047a = new byte[16];
        System.arraycopy(this.f5027g, this.f5025e, this.f5047a, 0, 16);
        return true;
    }
}
