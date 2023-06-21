package oicq.wlogin_sdk.p027b;

import android.support.p004v4.internal.view.SupportMenu;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.y */
/* loaded from: classes.dex */
public class C4299y extends C4232b {

    /* renamed from: a */
    int f5091a = 0;

    public C4299y() {
        this.f5028h = 285;
    }

    /* renamed from: a */
    public long m244a() {
        return C4393util.buf_to_int32(this.f5027g, this.f5025e) & 4294967295L;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        if (this.f5026f < 22) {
            return false;
        }
        this.f5091a = C4393util.buf_to_int16(this.f5027g, this.f5025e + 4 + 16);
        this.f5091a &= SupportMenu.USER_MASK;
        return this.f5026f >= this.f5091a + 22;
    }

    /* renamed from: g */
    public byte[] m243g() {
        byte[] bArr = new byte[16];
        System.arraycopy(this.f5027g, this.f5025e + 4, bArr, 0, bArr.length);
        return bArr;
    }

    /* renamed from: h */
    public byte[] m242h() {
        byte[] bArr = new byte[this.f5091a];
        System.arraycopy(this.f5027g, this.f5025e + 4 + 16 + 2, bArr, 0, bArr.length);
        return bArr;
    }
}
