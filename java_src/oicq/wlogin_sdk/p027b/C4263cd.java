package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.cd */
/* loaded from: classes.dex */
public class C4263cd extends C4232b {

    /* renamed from: a */
    int f5057a = 0;

    public C4263cd() {
        this.f5028h = 404;
    }

    /* renamed from: a */
    public byte[] m275a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[16];
        }
        this.f5057a = bArr.length;
        byte[] bArr2 = new byte[this.f5057a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5057a);
        m313e();
        return m322b();
    }
}
