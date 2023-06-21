package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.mw */
/* loaded from: classes.dex */
public class C3331mw {

    /* renamed from: hj */
    private String f3162hj;

    /* renamed from: wt */
    private final int f3163wt;

    /* renamed from: wu */
    private final boolean f3164wu;

    /* renamed from: wv */
    private final String f3165wv;

    public C3331mw(InterfaceC3153hi interfaceC3153hi) {
        this.f3163wt = m2973f((InterfaceC3280ll) interfaceC3153hi);
        this.f3164wu = interfaceC3153hi.mo3122ba();
        this.f3165wv = interfaceC3153hi.mo3124aZ().mo3154aY();
    }

    /* renamed from: eK */
    public void m2974eK() {
        this.f3162hj = C3334mz.m2942eS().m2950a(this.f3163wt, 100663310, this.f3164wu, this.f3165wv);
    }

    /* renamed from: an */
    public void m2975an(int i) {
        C3334mz.m2942eS().m2947a(this.f3162hj, this.f3163wt, i, this.f3164wu, this.f3165wv);
    }

    /* renamed from: f */
    private static int m2973f(InterfaceC3280ll interfaceC3280ll) {
        return interfaceC3280ll.getType() == 1 ? ((C3278lj) interfaceC3280ll).m3173dT() : interfaceC3280ll.getType();
    }
}
