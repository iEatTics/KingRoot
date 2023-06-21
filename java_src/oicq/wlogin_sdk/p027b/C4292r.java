package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.r */
/* loaded from: classes.dex */
public class C4292r extends C4232b {

    /* renamed from: a */
    int f5087a = 0;

    public C4292r() {
        this.f5028h = 274;
    }

    /* renamed from: a */
    public byte[] m251a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5087a = bArr.length;
        byte[] bArr2 = new byte[this.f5087a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int length = bArr.length + 0;
        m321b(this.f5028h);
        m317c(bArr2, this.f5087a);
        m313e();
        return m322b();
    }
}
