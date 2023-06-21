package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.at */
/* loaded from: classes.dex */
public class C4225at extends C4232b {

    /* renamed from: a */
    public int f5018a = 0;

    /* renamed from: i */
    public int f5019i = 0;

    /* renamed from: j */
    public int f5020j = 0;

    public C4225at() {
        this.f5028h = 329;
    }

    /* renamed from: a */
    public int m334a() {
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
        this.f5018a = buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + 2 + this.f5018a);
        if (this.f5026f < this.f5018a + 8 + buf_to_int162) {
            return false;
        }
        this.f5019i = buf_to_int162;
        int buf_to_int163 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + 2 + this.f5018a + 2 + this.f5019i);
        if (this.f5026f < this.f5018a + 8 + this.f5019i + buf_to_int163) {
            return false;
        }
        this.f5020j = buf_to_int163;
        return true;
    }

    /* renamed from: g */
    public byte[] m333g() {
        byte[] bArr = new byte[this.f5018a];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 2, bArr, 0, this.f5018a);
        return bArr;
    }

    /* renamed from: h */
    public byte[] m332h() {
        byte[] bArr = new byte[this.f5019i];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 2 + this.f5018a + 2, bArr, 0, this.f5019i);
        return bArr;
    }

    /* renamed from: i */
    public byte[] m331i() {
        byte[] bArr = new byte[this.f5020j];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 2 + this.f5018a + 2 + this.f5019i + 2, bArr, 0, this.f5020j);
        return bArr;
    }
}
