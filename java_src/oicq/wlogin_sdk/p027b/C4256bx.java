package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bx */
/* loaded from: classes.dex */
public class C4256bx extends C4232b {

    /* renamed from: a */
    private int f5048a;

    public C4256bx() {
        this.f5028h = 390;
    }

    /* renamed from: a */
    public boolean m282a() {
        return this.f5048a == 1;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 2) {
            return false;
        }
        this.f5048a = C4393util.buf_to_int8(this.f5027g, this.f5025e + 1);
        return true;
    }
}
