package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.l */
/* loaded from: classes.dex */
public class C4286l extends C4232b {

    /* renamed from: a */
    int f5086a = 0;

    public C4286l() {
        this.f5028h = 265;
    }

    /* renamed from: a */
    public byte[] m253a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[16];
        }
        this.f5086a = bArr.length;
        byte[] bArr2 = new byte[this.f5086a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5086a);
        m313e();
        return m322b();
    }
}
