package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.si */
/* loaded from: classes.dex */
class C3596si extends AbstractC3592sg {

    /* renamed from: GE */
    private static C3596si f3524GE = null;

    C3596si() {
    }

    /* renamed from: jn */
    public static C3596si m2260jn() {
        if (f3524GE == null) {
            synchronized (C3596si.class) {
                if (f3524GE == null) {
                    f3524GE = new C3596si();
                }
            }
        }
        return f3524GE;
    }

    @Override // com.kingroot.kinguser.AbstractC3592sg
    /* renamed from: cF */
    protected AbstractC3591sf mo2261cF(String str) {
        return new C3593sh(str);
    }
}
