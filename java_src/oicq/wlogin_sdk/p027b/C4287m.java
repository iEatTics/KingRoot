package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.m */
/* loaded from: classes.dex */
public class C4287m extends C4232b {
    public C4287m() {
        this.f5028h = 266;
    }

    /* renamed from: a */
    public byte[] m252a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, bArr2.length);
        m313e();
        return m322b();
    }
}
