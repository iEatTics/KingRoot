package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.k */
/* loaded from: classes.dex */
public class C4285k extends C4232b {

    /* renamed from: a */
    int f5085a = 0;

    public C4285k() {
        this.f5028h = 264;
    }

    /* renamed from: a */
    public byte[] m254a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5085a = bArr.length;
        byte[] bArr2 = new byte[this.f5085a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5085a);
        m313e();
        return m322b();
    }
}
