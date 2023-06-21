package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.bf */
/* loaded from: classes.dex */
public class C4238bf extends C4232b {

    /* renamed from: a */
    int f5031a = 0;

    public C4238bf() {
        this.f5028h = 366;
    }

    /* renamed from: a */
    public byte[] m307a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5031a = bArr.length < 64 ? bArr.length : 64;
        byte[] bArr2 = new byte[this.f5031a];
        System.arraycopy(bArr, 0, bArr2, 0, this.f5031a);
        m321b(this.f5028h);
        m317c(bArr2, this.f5031a);
        m313e();
        return m322b();
    }
}
