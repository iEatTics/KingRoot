package oicq.wlogin_sdk.p027b;

import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: oicq.wlogin_sdk.b.a */
/* loaded from: classes.dex */
public class C4205a extends C4232b {

    /* renamed from: a */
    int f4998a;

    public C4205a(int i) {
        super(i);
        this.f4998a = 2;
    }

    /* renamed from: a */
    public void m367a(byte b) {
        byte[] bArr = {b};
        m365a(bArr, bArr.length);
    }

    /* renamed from: a */
    public void m366a(int i) {
        byte[] bArr = new byte[4];
        C4393util.int32_to_buf(bArr, 0, i);
        m365a(bArr, bArr.length);
    }

    /* renamed from: a */
    public void m365a(byte[] bArr, int i) {
        if (this.f4998a + i > this.f5022b) {
            this.f5022b = this.f4998a + i + 128;
            byte[] bArr2 = new byte[this.f5022b];
            System.arraycopy(this.f5027g, 0, bArr2, 0, this.f4998a);
            this.f5027g = bArr2;
        }
        this.f5023c = this.f4998a + i;
        System.arraycopy(bArr, 0, this.f5027g, this.f4998a, i);
        this.f5026f = i;
        C4393util.int8_to_buf(this.f5027g, 0, this.f5028h);
        C4393util.int8_to_buf(this.f5027g, 1, this.f5026f);
    }

    /* renamed from: a */
    public byte[] m368a() {
        return m322b();
    }
}
