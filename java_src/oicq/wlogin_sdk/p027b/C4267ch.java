package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ch */
/* loaded from: classes.dex */
public class C4267ch extends C4232b {

    /* renamed from: a */
    byte[] f5065a = new byte[0];

    /* renamed from: i */
    byte[] f5066i = new byte[0];

    public C4267ch() {
        this.f5028h = 512;
    }

    /* renamed from: a */
    public byte[] m268a() {
        return this.f5065a;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 2) {
            return false;
        }
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 0);
        if (this.f5026f < buf_to_int16 + 2) {
            return false;
        }
        this.f5065a = new byte[buf_to_int16];
        System.arraycopy(this.f5027g, this.f5025e + 2, this.f5065a, 0, buf_to_int16);
        int i = buf_to_int16 + 2;
        if (this.f5026f < i + 2) {
            return false;
        }
        int buf_to_int162 = C4393util.buf_to_int16(this.f5027g, this.f5025e + i);
        int i2 = i + 2;
        if (this.f5026f < i2 + buf_to_int162) {
            return false;
        }
        this.f5066i = new byte[buf_to_int162];
        System.arraycopy(this.f5027g, this.f5025e + i2, this.f5066i, 0, buf_to_int162);
        int i3 = i2 + buf_to_int162;
        return true;
    }

    /* renamed from: g */
    public byte[] m267g() {
        return this.f5066i;
    }
}
