package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.mc */
/* loaded from: classes.dex */
public class C3301mc extends AbstractC3223jq {
    public static final String TAG = "Uranus_" + C3301mc.class.getSimpleName();

    /* renamed from: rH */
    private InterfaceC3149he f3116rH = C3183ih.m3497bW().m3539bT();

    /* renamed from: bh */
    private static boolean m3106bh(String str) {
        return m3104bp(str) || "system_server".equals(str);
    }

    @Override // com.kingroot.kinguser.AbstractC3223jq
    /* renamed from: a */
    public void mo3107a(InterfaceC3224jr interfaceC3224jr, String str) {
        super.mo3107a(interfaceC3224jr, str);
        String mo3283cG = interfaceC3224jr.mo3283cG();
        if (m3106bh(mo3283cG)) {
            m3105bo(mo3283cG);
        }
    }

    /* renamed from: bo */
    private void m3105bo(String str) {
        C3268la.m3208dp().setSpecialProcessCrashStrategy(str, 15000L);
        if ("zygote".equals(str)) {
            C3332mx.m2961eL().m2954f(2, 33619968);
        } else if ("zygote64".equals(str)) {
            C3332mx.m2961eL().m2954f(102, 33619968);
        } else {
            C3332mx.m2961eL().m2954f(4, 50397184);
        }
        C3288lt.m3146eg().m13669bi(str);
    }

    /* renamed from: bp */
    private static boolean m3104bp(String str) {
        return "zygote".equals(str) || "zygote64".equals(str);
    }

    @Override // com.kingroot.kinguser.AbstractC3223jq
    /* renamed from: a */
    public void mo3108a(InterfaceC3224jr interfaceC3224jr, InterfaceC3145ha interfaceC3145ha) {
        String mo3283cG = interfaceC3224jr.mo3283cG();
        boolean m3106bh = m3106bh(mo3283cG);
        if (this.f3116rH != null) {
            this.f3116rH.mo3614a(mo3283cG, interfaceC3145ha);
        }
        if (m3106bh) {
            m3109a(interfaceC3145ha, mo3283cG);
        }
    }

    /* renamed from: a */
    private void m3109a(InterfaceC3145ha interfaceC3145ha, String str) {
        int m3168c;
        boolean m3104bp = m3104bp(str);
        int mo3339aJ = interfaceC3145ha.mo3339aJ();
        int mo3334aO = interfaceC3145ha.mo3334aO();
        switch (mo3339aJ) {
            case 0:
                m3168c = C3279lk.m3168c(m3104bp ? 33751040 : 50528256, C3279lk.m3171a(interfaceC3145ha));
                C3285lq.m3161dW().m3157ea();
                break;
            case 1:
            case 2:
            default:
                if (m3104bp) {
                    m3168c = 33619968 + mo3339aJ;
                    break;
                } else {
                    m3168c = 50397184 + mo3339aJ;
                    break;
                }
            case 3:
                m3168c = C3279lk.m3168c(m3104bp ? 33685504 : 50462720, C3279lk.m3171a(interfaceC3145ha));
                break;
        }
        if ("zygote".equals(str)) {
            C3332mx.m2961eL().m2965b(3, m3168c, mo3334aO);
        } else if ("zygote64".equals(str)) {
            C3332mx.m2961eL().m2965b(103, m3168c, mo3334aO);
        } else {
            C3332mx.m2961eL().m2965b(5, m3168c, mo3334aO);
        }
        C3357no.m2832fl().m2833a(new C3302md(this, str), C3288lt.f237vn);
        if (mo3339aJ == 3) {
            C3285lq.m3161dW().m3159dY();
        }
    }
}
