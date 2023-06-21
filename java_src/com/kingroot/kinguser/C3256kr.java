package com.kingroot.kinguser;

import com.king.uranus.C0392bI;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.kr */
/* loaded from: classes.dex */
public class C3256kr extends AbstractRunnableC3352nj {

    /* renamed from: um */
    final /* synthetic */ C0392bI f2968um;

    public C3256kr(C0392bI c0392bI) {
        this.f2968um = c0392bI;
    }

    @Override // com.kingroot.kinguser.AbstractRunnableC3352nj
    /* renamed from: ca */
    public void mo2865ca() {
        Set<InterfaceC3283lo> set;
        ((InterfaceC3158hn) C3183ih.m3501a(InterfaceC3158hn.class)).mo3398bd();
        set = this.f2968um.f233fX;
        for (InterfaceC3283lo interfaceC3283lo : set) {
            try {
                interfaceC3283lo.mo2932c();
            } catch (Throwable th) {
            }
        }
    }
}
