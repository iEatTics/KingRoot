package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
/* renamed from: com.kingroot.kinguser.xy */
/* loaded from: classes.dex */
public class C3906xy implements InterfaceC3915yf<InterfaceC3918yi> {
    private static final cce<C3906xy> sInstance = new cce<C3906xy>() { // from class: com.kingroot.kinguser.xy.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: oz */
        public C3906xy create() {
            return new C3906xy();
        }
    };

    /* renamed from: UQ */
    private InterfaceC3915yf<InterfaceC3918yi> f3998UQ;

    /* renamed from: ox */
    public static C3906xy m1431ox() {
        return sInstance.get();
    }

    private C3906xy() {
    }

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    /* renamed from: a */
    public void mo1424a(InterfaceC3916yg interfaceC3916yg) {
        m1430oy().mo1424a(interfaceC3916yg);
    }

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    /* renamed from: b */
    public void mo1423b(InterfaceC3916yg interfaceC3916yg) {
        m1430oy().mo1423b(interfaceC3916yg);
    }

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    public int getColor(int i) {
        return m1430oy().getColor(i);
    }

    @Override // com.kingroot.kinguser.InterfaceC3915yf
    public Drawable getDrawable(int i) {
        return m1430oy().getDrawable(i);
    }

    /* renamed from: a */
    public void m1432a(InterfaceC3915yf<InterfaceC3918yi> interfaceC3915yf) {
        this.f3998UQ = interfaceC3915yf;
    }

    /* renamed from: oy */
    private InterfaceC3915yf<InterfaceC3918yi> m1430oy() {
        if (this.f3998UQ == null) {
            throw new NullPointerException("SkinManager need set implement");
        }
        return this.f3998UQ;
    }
}
