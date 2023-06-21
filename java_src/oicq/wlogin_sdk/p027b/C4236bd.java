package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.bd */
/* loaded from: classes.dex */
public class C4236bd extends C4232b {

    /* renamed from: a */
    int f5030a = 0;

    public C4236bd() {
        this.f5028h = 362;
    }

    /* renamed from: a */
    public byte[] m308a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5030a = bArr.length;
        byte[] bArr2 = new byte[this.f5030a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        m321b(this.f5028h);
        m317c(bArr2, this.f5030a);
        m313e();
        return m322b();
    }
}
