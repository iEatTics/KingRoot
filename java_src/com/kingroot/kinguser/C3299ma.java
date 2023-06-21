package com.kingroot.kinguser;

import com.king.uranus.BinderC0398bv;
import com.king.uranus.C0385aS;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.ma */
/* loaded from: classes.dex */
public class C3299ma extends AbstractRunnableC3352nj {

    /* renamed from: sa */
    final /* synthetic */ String f3108sa;

    /* renamed from: vC */
    final /* synthetic */ int f3109vC;

    /* renamed from: vD */
    final /* synthetic */ int f3110vD;

    /* renamed from: vE */
    final /* synthetic */ BinderC0398bv f3111vE;

    public C3299ma(BinderC0398bv binderC0398bv, int i, int i2, String str) {
        this.f3111vE = binderC0398bv;
        this.f3109vC = i;
        this.f3110vD = i2;
        this.f3108sa = str;
    }

    @Override // com.kingroot.kinguser.AbstractRunnableC3352nj
    /* renamed from: ca */
    public void mo2865ca() {
        Set<InterfaceC3156hl> set;
        C0385aS c0385aS = new C0385aS(this.f3109vC, this.f3110vD, this.f3108sa);
        set = this.f3111vE.f243fX;
        for (InterfaceC3156hl interfaceC3156hl : set) {
            try {
                interfaceC3156hl.mo3610a(c0385aS);
            } catch (Throwable th) {
            }
        }
    }
}
