package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.ah */
/* loaded from: classes.dex */
public class C4213ah extends C4232b {
    public C4213ah() {
        this.f5028h = 304;
    }

    /* renamed from: a */
    public byte[] m358a() {
        byte[] bArr = new byte[4];
        System.arraycopy(this.f5027g, this.f5025e + 2, bArr, 0, bArr.length);
        return bArr;
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        return this.f5026f >= 14;
    }

    /* renamed from: g */
    public byte[] m357g() {
        byte[] bArr = new byte[4];
        System.arraycopy(this.f5027g, this.f5025e + 2 + 4, bArr, 0, bArr.length);
        return bArr;
    }
}
