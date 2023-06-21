package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.bt */
/* loaded from: classes.dex */
public class C4252bt extends C4232b {

    /* renamed from: a */
    int f5044a = 0;

    /* renamed from: i */
    int f5045i = 0;

    public C4252bt() {
        this.f5028h = 386;
    }

    /* renamed from: a */
    public int m288a() {
        return this.f5044a;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 5) {
            return false;
        }
        this.f5044a = C4393util.buf_to_int16(this.f5027g, this.f5025e + 1);
        this.f5045i = C4393util.buf_to_int16(this.f5027g, this.f5025e + 1 + 2);
        return true;
    }

    /* renamed from: g */
    public int m287g() {
        return this.f5045i;
    }
}
