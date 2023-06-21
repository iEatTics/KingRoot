package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ae */
/* loaded from: classes.dex */
public class C4210ae extends C4232b {

    /* renamed from: a */
    int f5002a = 0;

    public C4210ae() {
        this.f5028h = 294;
    }

    /* renamed from: a */
    public byte[] m361a() {
        byte[] bArr = new byte[this.f5002a];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 2, bArr, 0, bArr.length);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f >= 2 && this.f5026f >= 4) {
            this.f5002a = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2);
            return (this.f5002a + 2) + 2 <= this.f5026f;
        }
        return false;
    }
}
