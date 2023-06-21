package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.ap */
/* loaded from: classes.dex */
public class C4221ap extends C4232b {

    /* renamed from: a */
    public int f5014a = 0;

    public C4221ap() {
        this.f5028h = 325;
    }

    /* renamed from: a */
    public byte[] m341a(byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        this.f5014a = bArr.length;
        byte[] bArr2 = new byte[this.f5014a];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        int length = bArr.length + 0;
        m321b(this.f5028h);
        m317c(bArr2, bArr2.length);
        m313e();
        return m322b();
    }
}
