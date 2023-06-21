package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.w */
/* loaded from: classes.dex */
public class C4297w extends C4232b {

    /* renamed from: a */
    public int f5090a = 0;

    public C4297w() {
        this.f5028h = 282;
    }

    /* renamed from: a */
    public byte[] m248a() {
        byte[] bArr = new byte[2];
        System.arraycopy(this.f5027g, this.f5025e, bArr, 0, 2);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 5) {
            return false;
        }
        int buf_to_int8 = C4393util.buf_to_int8(this.f5027g, this.f5025e + 2 + 1 + 1);
        if (this.f5026f < buf_to_int8 + 5) {
            return false;
        }
        this.f5090a = buf_to_int8;
        return true;
    }

    /* renamed from: g */
    public byte[] m247g() {
        byte[] bArr = new byte[1];
        System.arraycopy(this.f5027g, this.f5025e + 2, bArr, 0, 1);
        return bArr;
    }

    /* renamed from: h */
    public byte[] m246h() {
        byte[] bArr = new byte[1];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 1, bArr, 0, 1);
        return bArr;
    }

    /* renamed from: i */
    public byte[] m245i() {
        byte[] bArr = new byte[this.f5090a];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 1 + 1 + 1, bArr, 0, this.f5090a);
        return bArr;
    }
}
