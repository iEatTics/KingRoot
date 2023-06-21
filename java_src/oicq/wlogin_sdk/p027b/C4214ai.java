package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.ai */
/* loaded from: classes.dex */
public class C4214ai extends C4232b {

    /* renamed from: a */
    int f5006a = 0;

    /* renamed from: i */
    int f5007i = 0;

    public C4214ai() {
        this.f5028h = 306;
    }

    /* renamed from: a */
    public byte[] m356a() {
        byte[] bArr = new byte[this.f5006a];
        System.arraycopy(this.f5027g, this.f5025e + 2, bArr, 0, bArr.length);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 2) {
            return false;
        }
        this.f5006a = C4393util.buf_to_int16(this.f5027g, this.f5025e);
        if (this.f5006a + 2 + 4 + 2 > this.f5026f) {
            return false;
        }
        this.f5007i = C4393util.buf_to_int16(this.f5027g, this.f5025e + 2 + this.f5006a + 4);
        return true;
    }

    /* renamed from: g */
    public byte[] m355g() {
        byte[] bArr = new byte[this.f5007i];
        System.arraycopy(this.f5027g, this.f5025e + 2 + this.f5006a + 4 + 2, bArr, 0, bArr.length);
        return bArr;
    }
}
