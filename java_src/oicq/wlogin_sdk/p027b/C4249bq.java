package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bq */
/* loaded from: classes.dex */
public class C4249bq extends C4232b {

    /* renamed from: a */
    public int f5039a = 0;

    /* renamed from: i */
    public int f5040i = 0;

    public C4249bq() {
        this.f5028h = 381;
    }

    /* renamed from: a */
    public int m293a() {
        return C4393util.buf_to_int16(this.f5027g, this.f5025e);
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 8) {
            return false;
        }
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2);
        if (this.f5026f < buf_to_int16 + 8) {
            return false;
        }
        this.f5039a = buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + 2 + this.f5039a + 2);
        if (this.f5026f < this.f5039a + 8 + buf_to_int162) {
            return false;
        }
        this.f5040i = buf_to_int162;
        return true;
    }

    /* renamed from: g */
    public byte[] m292g() {
        byte[] bArr = new byte[this.f5039a];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 2, bArr, 0, this.f5039a);
        return bArr;
    }

    /* renamed from: h */
    public int m291h() {
        return C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + 2 + this.f5039a);
    }

    /* renamed from: i */
    public byte[] m290i() {
        byte[] bArr = new byte[this.f5040i];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 2 + this.f5039a + 2 + 2, bArr, 0, this.f5040i);
        return bArr;
    }
}
