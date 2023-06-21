package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.bh */
/* loaded from: classes.dex */
public class C4240bh extends C4232b {

    /* renamed from: a */
    int f5032a = 0;

    public C4240bh() {
        this.f5028h = 370;
    }

    /* renamed from: a */
    public byte[] m306a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5032a = bArr.length;
        byte[] bArr2 = new byte[this.f5032a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5032a);
        m313e();
        return m322b();
    }
}
