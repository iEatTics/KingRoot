package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.ey */
/* loaded from: classes.dex */
public class C3046ey extends AbstractC3035ew {

    /* renamed from: N */
    private String f2644N;

    /* renamed from: O */
    private String f2645O;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3046ey() {
        super(0, null);
    }

    public C3046ey(int i, String str, String str2, String str3) {
        super(i, str);
        this.f2644N = str2;
        this.f2645O = str3;
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    public int getId() {
        return 398910;
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    /* renamed from: ac */
    public Object[] mo3872ac() {
        return new Object[]{this.f2644N, this.f2645O};
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    /* renamed from: ad */
    public int mo3871ad() {
        C3123gi.m3707i("" + getId());
        return C3123gi.m3708ai(new StringBuilder().append("").append(getId()).toString()) > 50 ? 3 : 1;
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    /* renamed from: b */
    protected void mo3870b(String[] strArr) {
        this.f2644N = strArr[0];
        this.f2645O = strArr[1];
    }
}
