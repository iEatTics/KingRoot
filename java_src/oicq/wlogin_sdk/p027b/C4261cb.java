package oicq.wlogin_sdk.p027b;
/* renamed from: oicq.wlogin_sdk.b.cb */
/* loaded from: classes.dex */
public class C4261cb extends C4232b {

    /* renamed from: a */
    byte[] f5056a = new byte[0];

    public C4261cb() {
        this.f5028h = 402;
    }

    /* renamed from: a */
    public String m277a() {
        return new String(this.f5056a);
    }

    @Override // oicq.wlogin_sdk.p027b.C4232b
    /* renamed from: f */
    public Boolean mo240f() {
        this.f5056a = new byte[this.f5026f];
        System.arraycopy(this.f5027g, this.f5025e, this.f5056a, 0, this.f5026f);
        return true;
    }
}
