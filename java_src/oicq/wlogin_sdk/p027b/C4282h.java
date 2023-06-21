package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.h */
/* loaded from: classes.dex */
public class C4282h extends C4232b {

    /* renamed from: a */
    int f5077a = 0;

    /* renamed from: i */
    int f5078i = 0;

    /* renamed from: j */
    int f5079j = 0;

    /* renamed from: k */
    int f5080k = 0;

    public C4282h() {
        this.f5028h = 261;
    }

    /* renamed from: a */
    public byte[] m258a() {
        byte[] bArr = new byte[this.f5077a];
        if (this.f5077a > 0) {
            System.arraycopy(this.f5027g, this.f5079j, bArr, 0, this.f5077a);
        }
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 2) {
            return false;
        }
        this.f5078i = C4393util.buf_to_int16(this.f5027g, this.f5025e);
        if (this.f5026f < this.f5078i + 2 + 2) {
            return false;
        }
        this.f5077a = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + this.f5078i);
        if (this.f5026f < this.f5078i + 2 + 2 + this.f5077a) {
            return false;
        }
        this.f5080k = this.f5025e + 2;
        this.f5079j = this.f5078i + 2 + 2 + this.f5025e;
        return true;
    }

    /* renamed from: g */
    public byte[] m257g() {
        byte[] bArr = new byte[this.f5078i];
        if (this.f5078i > 0) {
            System.arraycopy(this.f5027g, this.f5080k, bArr, 0, this.f5078i);
        }
        return bArr;
    }
}
