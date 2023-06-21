package com.king.uranus;

import com.king.uranus.InterfaceC0394bh;
import com.kingroot.kinguser.C3276lh;
import com.kingroot.kinguser.C3299ma;
import com.kingroot.kinguser.C3300mb;
import com.kingroot.kinguser.C3357no;
import com.kingroot.kinguser.InterfaceC3156hl;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.king.uranus.bv */
/* loaded from: classes.dex */
public class BinderC0398bv extends InterfaceC0394bh.BinderC0395a {

    /* renamed from: fW */
    private static BinderC0398bv f242fW = new BinderC0398bv();

    /* renamed from: fX */
    private Set<InterfaceC3156hl> f243fX = new CopyOnWriteArraySet();

    private BinderC0398bv() {
    }

    /* renamed from: aT */
    public static BinderC0398bv m13661aT() {
        return f242fW;
    }

    public void registerClientObserver(InterfaceC3156hl interfaceC3156hl) {
        if (interfaceC3156hl != null) {
            this.f243fX.add(interfaceC3156hl);
            m13660aU();
        }
    }

    /* renamed from: aU */
    public synchronized void m13660aU() {
        C3276lh.m3187a(this);
    }

    public void unregisterClientObserver(InterfaceC3156hl interfaceC3156hl) {
        if (interfaceC3156hl != null) {
            this.f243fX.remove(interfaceC3156hl);
        }
    }

    @Override // com.king.uranus.InterfaceC0394bh.BinderC0395a
    /* renamed from: a */
    public void mo13662a(String str, int i, int i2) {
        C3357no.m2832fl().m2834a(new C3299ma(this, i2, i, str));
    }

    @Override // com.king.uranus.InterfaceC0394bh.BinderC0395a
    /* renamed from: b */
    public void mo13659b(String str, int i, int i2) {
        C3357no.m2832fl().m2834a(new C3300mb(this, str, i2, i));
    }
}
