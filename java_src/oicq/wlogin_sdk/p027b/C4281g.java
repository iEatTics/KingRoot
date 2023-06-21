package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.g */
/* loaded from: classes.dex */
public class C4281g extends C4232b {

    /* renamed from: a */
    int f5076a = 0;

    public C4281g() {
        this.f5028h = 260;
    }

    /* renamed from: a */
    public byte[] m259a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5076a = bArr.length;
        byte[] bArr2 = new byte[this.f5076a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5076a);
        m313e();
        return m322b();
    }
}
