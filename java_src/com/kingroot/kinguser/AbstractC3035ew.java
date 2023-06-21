package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.ew */
/* loaded from: classes.dex */
public abstract class AbstractC3035ew {

    /* renamed from: I */
    public String f2634I;

    /* renamed from: pD */
    public int f2635pD;

    /* renamed from: pE */
    public int f2636pE;
    public long timestamp = System.currentTimeMillis();

    /* renamed from: ac */
    public abstract Object[] mo3872ac();

    /* renamed from: ad */
    public abstract int mo3871ad();

    /* renamed from: b */
    protected abstract void mo3870b(String[] strArr);

    public abstract int getId();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3035ew(int i, String str) {
        this.f2635pD = i == 0 ? 0 : 1;
        this.f2636pE = i;
        this.f2634I = str;
    }

    /* renamed from: a */
    public boolean m3892a(String[] strArr) {
        if (strArr == null || strArr.length < 4) {
            return false;
        }
        try {
            this.timestamp = Long.parseLong(strArr[0]);
            this.f2635pD = Integer.parseInt(strArr[1]);
            this.f2636pE = Integer.parseInt(strArr[2]);
            this.f2634I = strArr[3];
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: c */
    public boolean m3890c(String[] strArr) {
        if (strArr == null || strArr.length < 4) {
            return false;
        }
        try {
            String[] strArr2 = new String[strArr.length - 4];
            System.arraycopy(strArr, 4, strArr2, 0, strArr2.length);
            mo3870b(strArr2);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public boolean m3893a(AbstractC3035ew abstractC3035ew) {
        return m3891b(abstractC3035ew) && mo3889c(abstractC3035ew);
    }

    /* renamed from: b */
    private boolean m3891b(AbstractC3035ew abstractC3035ew) {
        return abstractC3035ew != null && abstractC3035ew.f2636pE == this.f2636pE && abstractC3035ew.f2635pD == this.f2635pD;
    }

    /* renamed from: c */
    protected boolean mo3889c(AbstractC3035ew abstractC3035ew) {
        return false;
    }
}
