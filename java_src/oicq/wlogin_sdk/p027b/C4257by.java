package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.by */
/* loaded from: classes.dex */
public class C4257by extends C4232b {

    /* renamed from: a */
    int f5049a = 0;

    public C4257by() {
        this.f5028h = 391;
    }

    /* renamed from: a */
    public byte[] m281a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[16];
        }
        this.f5049a = bArr.length;
        byte[] bArr2 = new byte[this.f5049a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5049a);
        m313e();
        return m322b();
    }
}
