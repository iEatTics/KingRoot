package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.jt */
/* loaded from: classes.dex */
public final class C3226jt extends AbstractC3223jq {

    /* renamed from: ti */
    private final AbstractC3223jq f2901ti;

    public C3226jt(AbstractC3223jq abstractC3223jq) {
        this.f2901ti = abstractC3223jq;
    }

    @Override // com.kingroot.kinguser.AbstractC3223jq
    /* renamed from: a */
    public void mo3107a(InterfaceC3224jr interfaceC3224jr, String str) {
        if (this.f2901ti != null) {
            this.f2901ti.mo3107a(interfaceC3224jr, str);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3223jq
    /* renamed from: a */
    public void mo3368a(InterfaceC3224jr interfaceC3224jr) {
        if (this.f2901ti != null) {
            this.f2901ti.mo3368a(interfaceC3224jr);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3223jq
    /* renamed from: a */
    public void mo3108a(InterfaceC3224jr interfaceC3224jr, InterfaceC3145ha interfaceC3145ha) {
        if (this.f2901ti != null) {
            this.f2901ti.mo3108a(interfaceC3224jr, interfaceC3145ha);
        }
        if (m3367aO(interfaceC3224jr.mo3283cG()) || interfaceC3145ha.mo3339aJ() != 0) {
            C3334mz.m2942eS().m2946a(interfaceC3224jr.mo3283cG(), interfaceC3145ha.mo3339aJ(), interfaceC3145ha.mo3337aL(), interfaceC3145ha.mo3334aO(), interfaceC3145ha.mo3333aP(), interfaceC3145ha.mo3338aK());
        }
    }

    /* renamed from: aO */
    private boolean m3367aO(String str) {
        return "zygote".equals(str) || "zygote64".equals(str) || "system_server".equals(str) || "com.android.phone".equals(str);
    }
}
