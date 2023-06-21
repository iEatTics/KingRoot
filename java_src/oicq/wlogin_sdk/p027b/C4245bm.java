package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bm */
/* loaded from: classes.dex */
public class C4245bm extends C4232b {

    /* renamed from: a */
    public int f5037a = 0;

    public C4245bm() {
        this.f5028h = 377;
    }

    /* renamed from: a */
    public byte[] m298a() {
        byte[] bArr = new byte[this.f5037a];
        System.arraycopy(this.f5027g, this.f5025e + 2, bArr, 0, this.f5037a);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 2) {
            return false;
        }
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, this.f5025e);
        if (this.f5026f < buf_to_int16 + 2) {
            return false;
        }
        this.f5037a = buf_to_int16;
        return true;
    }
}
