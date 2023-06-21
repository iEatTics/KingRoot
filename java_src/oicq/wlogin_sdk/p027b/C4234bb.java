package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bb */
/* loaded from: classes.dex */
public class C4234bb extends C4232b {

    /* renamed from: a */
    public int f5029a = 0;

    public C4234bb() {
        this.f5028h = 359;
    }

    /* renamed from: a */
    public byte[] m311a() {
        byte[] bArr = new byte[1];
        System.arraycopy(this.f5027g, this.f5025e, bArr, 0, 1);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 4) {
            return false;
        }
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 1 + 1);
        if (this.f5026f < buf_to_int16 + 4) {
            return false;
        }
        this.f5029a = buf_to_int16;
        return true;
    }

    /* renamed from: g */
    public byte[] m310g() {
        byte[] bArr = new byte[1];
        System.arraycopy(this.f5027g, this.f5025e + 1, bArr, 0, 1);
        return bArr;
    }

    /* renamed from: h */
    public byte[] m309h() {
        byte[] bArr = new byte[this.f5029a];
        System.arraycopy(this.f5027g, this.f5025e + 1 + 1 + 2, bArr, 0, this.f5029a);
        return bArr;
    }
}
