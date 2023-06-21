package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ce */
/* loaded from: classes.dex */
public class C4264ce extends C4232b {

    /* renamed from: a */
    int f5058a = 0;

    /* renamed from: i */
    byte[] f5059i = new byte[0];

    /* renamed from: j */
    byte[] f5060j = new byte[0];

    public C4264ce() {
        this.f5028h = 406;
    }

    /* renamed from: a */
    public int m274a() {
        return this.f5058a;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 5) {
            return false;
        }
        int i = this.f5025e;
        this.f5058a = C4393util.buf_to_int8(this.f5027g, i);
        int i2 = i + 1;
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, i2);
        int i3 = i2 + 2;
        if ((i3 - this.f5025e) + buf_to_int16 > this.f5026f) {
            return false;
        }
        this.f5059i = new byte[buf_to_int16];
        System.arraycopy(this.f5027g, i3, this.f5059i, 0, buf_to_int16);
        int i4 = i3 + buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this.f5027g, i4);
        int i5 = i4 + 2;
        if ((i5 - this.f5025e) + buf_to_int162 > this.f5026f) {
            return false;
        }
        this.f5060j = new byte[buf_to_int162];
        System.arraycopy(this.f5027g, i5, this.f5060j, 0, buf_to_int162);
        int i6 = i5 + buf_to_int162;
        return true;
    }

    /* renamed from: g */
    public String m273g() {
        return new String(this.f5059i);
    }

    /* renamed from: h */
    public String m272h() {
        return new String(this.f5060j);
    }
}
