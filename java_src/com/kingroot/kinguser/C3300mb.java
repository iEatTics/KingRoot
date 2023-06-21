package com.kingroot.kinguser;

import com.king.uranus.BinderC0398bv;
import com.king.uranus.C0385aS;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.mb */
/* loaded from: classes.dex */
public class C3300mb extends AbstractRunnableC3352nj {

    /* renamed from: sa */
    final /* synthetic */ String f3112sa;

    /* renamed from: vC */
    final /* synthetic */ int f3113vC;

    /* renamed from: vD */
    final /* synthetic */ int f3114vD;

    /* renamed from: vE */
    final /* synthetic */ BinderC0398bv f3115vE;

    public C3300mb(BinderC0398bv binderC0398bv, String str, int i, int i2) {
        this.f3115vE = binderC0398bv;
        this.f3112sa = str;
        this.f3113vC = i;
        this.f3114vD = i2;
    }

    @Override // com.kingroot.kinguser.AbstractRunnableC3352nj
    /* renamed from: ca */
    public void mo2865ca() {
        Set<InterfaceC3156hl> set;
        int queryProcessCrashType = C3268la.m3208dp().queryProcessCrashType(this.f3112sa);
        if (queryProcessCrashType != 0) {
        }
        C0385aS c0385aS = new C0385aS(this.f3113vC, this.f3114vD, this.f3112sa, queryProcessCrashType);
        set = this.f3115vE.f243fX;
        for (InterfaceC3156hl interfaceC3156hl : set) {
            try {
                interfaceC3156hl.mo3609b(c0385aS);
            } catch (Throwable th) {
            }
        }
    }
}
