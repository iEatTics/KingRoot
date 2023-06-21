package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.bz */
/* loaded from: classes.dex */
public class C4258bz extends C4232b {

    /* renamed from: a */
    int f5050a = 0;

    public C4258bz() {
        this.f5028h = 392;
    }

    /* renamed from: a */
    public byte[] m280a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[16];
        }
        this.f5050a = bArr.length;
        byte[] bArr2 = new byte[this.f5050a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5050a);
        m313e();
        return m322b();
    }
}
