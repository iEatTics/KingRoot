package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.au */
/* loaded from: classes.dex */
public class C4226au extends C4232b {

    /* renamed from: a */
    public int f5021a = 0;

    public C4226au() {
        this.f5028h = 336;
    }

    /* renamed from: a */
    public int m330a() {
        return C4393util.buf_to_int32(this.f5027g, this.f5025e);
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 7) {
            return false;
        }
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 5);
        if (this.f5026f < buf_to_int16 + 7) {
            return false;
        }
        this.f5021a = buf_to_int16;
        return true;
    }

    /* renamed from: g */
    public byte m329g() {
        return (byte) (C4393util.buf_to_int8(this.f5027g, this.f5025e + 4) & 255);
    }
}
