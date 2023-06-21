package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.bj */
/* loaded from: classes.dex */
public class C4242bj extends C4232b {

    /* renamed from: a */
    int f5033a = 0;

    public C4242bj() {
        this.f5028h = 372;
    }

    /* renamed from: a */
    public byte[] m305a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5033a = bArr.length;
        byte[] bArr2 = new byte[this.f5033a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5033a);
        m313e();
        return m322b();
    }
}
