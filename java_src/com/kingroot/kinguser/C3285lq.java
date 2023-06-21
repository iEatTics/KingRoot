package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.lq */
/* loaded from: classes.dex */
public class C3285lq implements InterfaceC3150hf {

    /* renamed from: uY */
    private static volatile C3285lq f3016uY;

    /* renamed from: uZ */
    private InterfaceC3284lp f3017uZ;

    /* renamed from: dW */
    public static C3285lq m3161dW() {
        if (f3016uY == null) {
            synchronized (C3285lq.class) {
                if (f3016uY == null) {
                    f3016uY = new C3285lq();
                }
            }
        }
        return f3016uY;
    }

    /* renamed from: a */
    public void m3163a(InterfaceC3284lp interfaceC3284lp) {
        this.f3017uZ = interfaceC3284lp;
    }

    /* renamed from: dX */
    public void m3160dX() {
        this.f3017uZ.mo3167a("last_start_uranus_rebooted", 0);
    }

    @Override // com.kingroot.kinguser.InterfaceC3150hf
    public void notifyManuallyReboot() {
        C3288lt.m3146eg().m3145eh();
    }

    /* renamed from: dY */
    public void m3159dY() {
        m3162be("total_failed_count");
        m3162be("continues_failed_count");
    }

    /* renamed from: dZ */
    public void m3158dZ() {
        m3162be("total_reboot_count");
        m3162be("continues_reboot_count");
        this.f3017uZ.mo3167a("last_start_uranus_rebooted", 1);
    }

    /* renamed from: be */
    private void m3162be(String str) {
        this.f3017uZ.mo3167a(str, this.f3017uZ.getInt(str) + 1);
    }

    /* renamed from: ea */
    public void m3157ea() {
        this.f3017uZ.mo3167a("continues_failed_count", 0);
    }

    /* renamed from: eb */
    public void m3156eb() {
        this.f3017uZ.mo3167a("continues_reboot_count", 0);
    }
}
