package com.kingroot.kinguser;

import com.kingroot.kinguser.C3199ix;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.lw */
/* loaded from: classes.dex */
public class C3293lw implements InterfaceC3195it {

    /* renamed from: vq */
    private static C3293lw f3034vq = new C3293lw();

    /* renamed from: vr */
    private InterfaceC3195it f3035vr = C3196iu.m3471cg();

    /* renamed from: vs */
    private InterfaceC3154hj f3036vs = null;

    /* renamed from: vt */
    private volatile boolean f3037vt = false;

    /* renamed from: vu */
    private volatile boolean f3038vu = false;

    /* renamed from: el */
    public static C3293lw m3128el() {
        return f3034vq;
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: cf */
    public boolean mo3129cf() {
        return mo3126h(false);
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: h */
    public boolean mo3126h(boolean z) {
        boolean mo3126h = this.f3035vr.mo3126h(z);
        if (!mo3126h) {
            return m3127em();
        }
        return mo3126h;
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: aC */
    public C3199ix.C3201b mo3131aC(String str) {
        if (this.f3035vr.mo3129cf()) {
            return this.f3035vr.mo3131aC(str);
        }
        String mo3612am = (this.f3036vs == null || !this.f3038vu) ? null : this.f3036vs.mo3612am(str);
        return new C3199ix.C3201b(str, Integer.valueOf(mo3612am == null ? 1 : 0), mo3612am, null);
    }

    @Override // com.kingroot.kinguser.InterfaceC3195it
    /* renamed from: l */
    public List<C3199ix.C3201b> mo3125l(List<String> list) {
        if (this.f3035vr.mo3129cf()) {
            return this.f3035vr.mo3125l(list);
        }
        ArrayList arrayList = new ArrayList();
        if (this.f3036vs != null && this.f3038vu) {
            for (String str : list) {
                String mo3612am = this.f3036vs.mo3612am(str);
                arrayList.add(new C3199ix.C3201b("", Integer.valueOf(mo3612am == null ? 1 : 0), mo3612am, null));
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public void m3130b(InterfaceC3154hj interfaceC3154hj) {
        this.f3036vs = interfaceC3154hj;
    }

    /* renamed from: em */
    private boolean m3127em() {
        boolean z = true;
        if (this.f3036vs == null) {
            return false;
        }
        if (this.f3037vt) {
            return this.f3038vu;
        }
        this.f3037vt = true;
        String mo3612am = this.f3036vs.mo3612am("id");
        if (mo3612am == null || !mo3612am.contains("uid=0")) {
            z = false;
        }
        this.f3038vu = z;
        return this.f3038vu;
    }
}
