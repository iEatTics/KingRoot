package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.aq */
/* loaded from: classes.dex */
public class C4222aq extends C4232b {

    /* renamed from: a */
    public int f5015a = 0;

    /* renamed from: i */
    public int f5016i = 0;

    /* renamed from: j */
    public int f5017j = 0;

    public C4222aq() {
        this.f5028h = 326;
    }

    /* renamed from: a */
    public byte[] m340a() {
        byte[] bArr = new byte[this.f5015a];
        System.arraycopy(this.f5027g, this.f5025e + 6, bArr, 0, this.f5015a);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 12) {
            return false;
        }
        int buf_to_int16 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 4);
        if (this.f5026f < buf_to_int16 + 12) {
            return false;
        }
        this.f5015a = buf_to_int16;
        int buf_to_int162 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 6 + this.f5015a);
        if (this.f5026f < this.f5015a + 12 + buf_to_int162) {
            return false;
        }
        this.f5016i = buf_to_int162;
        int buf_to_int163 = C4393util.buf_to_int16(this.f5027g, this.f5025e + 10 + this.f5015a + this.f5016i);
        if (this.f5026f < this.f5015a + 12 + this.f5016i + buf_to_int163) {
            return false;
        }
        this.f5017j = buf_to_int163;
        return true;
    }

    /* renamed from: g */
    public byte[] m339g() {
        byte[] bArr = new byte[this.f5016i];
        System.arraycopy(this.f5027g, this.f5025e + 8 + this.f5015a, bArr, 0, this.f5016i);
        return bArr;
    }

    /* renamed from: h */
    public int m338h() {
        return C4393util.buf_to_int16(this.f5027g, this.f5025e + 8 + this.f5015a + this.f5016i);
    }

    /* renamed from: i */
    public byte[] m337i() {
        byte[] bArr = new byte[this.f5017j];
        System.arraycopy(this.f5027g, this.f5025e + 12 + this.f5015a + this.f5016i, bArr, 0, this.f5017j);
        return bArr;
    }
}
