package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bo */
/* loaded from: classes.dex */
public class C4247bo extends C4232b {
    public C4247bo() {
        this.f5028h = 379;
    }

    /* renamed from: a */
    public int m296a() {
        if (this.f5026f < 4) {
            return 0;
        }
        return C4393util.buf_to_int16(this.f5027g, this.f5025e);
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        return this.f5026f >= 4;
    }

    /* renamed from: g */
    public int m295g() {
        if (this.f5026f < 4) {
            return 0;
        }
        return C4393util.buf_to_int16(this.f5027g, this.f5025e + 2);
    }
}
