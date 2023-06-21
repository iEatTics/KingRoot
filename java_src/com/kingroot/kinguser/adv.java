package com.kingroot.kinguser;
/* loaded from: classes.dex */
public abstract class adv extends adr {
    private Object adD;

    /* renamed from: com.kingroot.kinguser.adv$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0732a {
        /* renamed from: a */
        void m12449a(int i, int i2, CharSequence charSequence);

        /* renamed from: b */
        void m12448b(int i, int i2, CharSequence charSequence);
    }

    /* renamed from: com.kingroot.kinguser.adv$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0733b {
        /* renamed from: a */
        void m12447a(int i, int i2, Object obj, CharSequence charSequence);

        /* renamed from: f */
        void m12446f(int i, int i2, int i3);
    }

    /* renamed from: ta */
    public synchronized Object m12450ta() {
        return this.adD;
    }

    /* renamed from: n */
    public synchronized void m12452n(Object obj) {
        this.adD = obj;
    }

    @Override // com.kingroot.kinguser.adq
    /* renamed from: sW */
    public adq clone() {
        return this;
    }
}
