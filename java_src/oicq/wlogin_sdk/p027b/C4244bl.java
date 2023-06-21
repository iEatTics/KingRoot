package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bl */
/* loaded from: classes.dex */
public class C4244bl extends C4232b {

    /* renamed from: a */
    public int f5035a = 0;

    /* renamed from: i */
    public int f5036i = 0;

    public C4244bl() {
        this.f5028h = 376;
    }

    /* renamed from: a */
    public byte[] m303a() {
        byte[] bArr = new byte[this.f5035a];
        System.arraycopy(this.f5027g, this.f5025e + 2, bArr, 0, this.f5035a);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 12) {
            return false;
        }
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, this.f5025e);
        if (this.f5026f < buf_to_int16 + 12) {
            return false;
        }
        this.f5035a = buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + this.f5035a);
        if (this.f5026f < this.f5035a + 12 + buf_to_int162) {
            return false;
        }
        this.f5036i = buf_to_int162;
        return true;
    }

    /* renamed from: g */
    public byte[] m302g() {
        byte[] bArr = new byte[this.f5036i];
        System.arraycopy(this.f5027g, this.f5025e + 2 + this.f5035a + 2, bArr, 0, this.f5036i);
        return bArr;
    }

    /* renamed from: h */
    public int m301h() {
        return C4393util.buf_to_int32(this.f5027g, this.f5025e + 2 + this.f5035a + 2 + this.f5036i);
    }

    /* renamed from: i */
    public int m300i() {
        return C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + this.f5035a + 2 + this.f5036i + 4);
    }

    /* renamed from: j */
    public int m299j() {
        return C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + this.f5035a + 2 + this.f5036i + 4 + 2);
    }
}
