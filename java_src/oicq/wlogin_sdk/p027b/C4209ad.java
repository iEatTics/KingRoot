package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ad */
/* loaded from: classes.dex */
public class C4209ad extends C4232b {

    /* renamed from: a */
    int f5000a = 0;

    /* renamed from: i */
    int f5001i = 0;

    public C4209ad() {
        this.f5028h = 293;
    }

    /* renamed from: a */
    public byte[] m363a() {
        byte[] bArr = new byte[this.f5000a];
        System.arraycopy(this.f5027g, this.f5025e + 2, bArr, 0, bArr.length);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 2) {
            return false;
        }
        this.f5000a = C4393util.buf_to_int16(this.f5027g, this.f5025e);
        if (this.f5026f < this.f5000a + 2 + 2) {
            return false;
        }
        this.f5001i = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + this.f5000a);
        return true;
    }

    /* renamed from: g */
    public byte[] m362g() {
        byte[] bArr = new byte[this.f5001i];
        System.arraycopy(this.f5027g, this.f5025e + 2 + this.f5000a + 2, bArr, 0, bArr.length);
        return bArr;
    }
}
