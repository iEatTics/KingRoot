package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.an */
/* loaded from: classes.dex */
public class C4219an extends C4232b {

    /* renamed from: a */
    public int f5012a = 0;

    public C4219an() {
        this.f5028h = 323;
    }

    /* renamed from: a */
    public byte[] m344a(byte[] bArr) {
        this.f5012a = bArr.length;
        byte[] bArr2 = new byte[this.f5012a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5012a);
        m313e();
        return m322b();
    }
}
