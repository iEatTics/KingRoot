package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ak */
/* loaded from: classes.dex */
public class C4216ak extends C4232b {

    /* renamed from: a */
    public int f5008a = 0;

    public C4216ak() {
        this.f5028h = 312;
    }

    /* renamed from: a */
    public int m354a() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 266) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 4) {
            return false;
        }
        this.f5008a = C4393util.buf_to_int32(this.f5027g, this.f5025e);
        return this.f5026f >= (this.f5008a * 10) + 4;
    }

    /* renamed from: g */
    public int m353g() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 284) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }

    /* renamed from: h */
    public int m352h() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 288) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }

    /* renamed from: i */
    public int m351i() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 310) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }

    /* renamed from: j */
    public int m350j() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 258) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }

    /* renamed from: k */
    public int m349k() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 259) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }

    /* renamed from: l */
    public int m348l() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 323) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }

    /* renamed from: m */
    public int m347m() {
        for (int i = 0; i < this.f5008a; i++) {
            if (C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + (i * 10)) == 356) {
                return C4393util.buf_to_int32(this.f5027g, (i * 10) + this.f5025e + 4 + 2);
            }
        }
        return 0;
    }
}
