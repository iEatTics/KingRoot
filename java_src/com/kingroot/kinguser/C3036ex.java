package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.ex */
/* loaded from: classes.dex */
public class C3036ex extends AbstractC3035ew {

    /* renamed from: J */
    private int f2637J;

    /* renamed from: L */
    private String f2638L;

    /* renamed from: pF */
    private int f2639pF;

    /* renamed from: pG */
    private int f2640pG;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3036ex() {
        super(0, null);
    }

    public C3036ex(int i, String str, int i2, int i3, String str2) {
        super(i, str);
        this.f2637J = i2;
        this.f2639pF = i3;
        this.f2638L = str2;
        this.f2640pG = 1;
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    public int getId() {
        return 398911;
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    /* renamed from: ac */
    public Object[] mo3872ac() {
        return new Object[]{Integer.valueOf(this.f2637J), Integer.valueOf(this.f2639pF), this.f2638L, "", "", "", "", "", Integer.valueOf(this.f2640pG)};
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    /* renamed from: ad */
    public int mo3871ad() {
        return 2;
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    /* renamed from: b */
    protected void mo3870b(String[] strArr) {
        this.f2637J = Integer.parseInt(strArr[0]);
        this.f2639pF = Integer.parseInt(strArr[1]);
        this.f2638L = strArr[2];
        this.f2640pG = Integer.parseInt(strArr[8]);
    }

    @Override // com.kingroot.kinguser.AbstractC3035ew
    /* renamed from: c */
    protected boolean mo3889c(AbstractC3035ew abstractC3035ew) {
        if (abstractC3035ew instanceof C3036ex) {
            C3036ex c3036ex = (C3036ex) abstractC3035ew;
            if (this.f2637J == c3036ex.f2637J && this.f2639pF == c3036ex.f2639pF && this.f2638L.equals(c3036ex.f2638L)) {
                this.f2640pG++;
                return true;
            }
        }
        return false;
    }
}
