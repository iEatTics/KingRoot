package com.kingroot.kinguser;

import android.content.pm.PackageManager;
/* renamed from: com.kingroot.kinguser.le */
/* loaded from: classes.dex */
public class C3273le implements InterfaceC3364nv {

    /* renamed from: uK */
    private String f3000uK;

    public C3273le(String str) {
        this.f3000uK = str;
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dC */
    public String mo2813dC() {
        return C3339nd.m2917eY().mo2918cs();
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dD */
    public String mo2812dD() {
        return "096CE82CAD7A6725";
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dE */
    public String mo2811dE() {
        return C3339nd.m2917eY().m2926B(C3183ih.getContext());
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dF */
    public int mo2810dF() {
        return 40;
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dG */
    public String mo2809dG() {
        return "1.6.1";
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dv */
    public String mo2803dv() {
        return C3303me.m3096v(C3183ih.getContext());
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dH */
    public String mo2808dH() {
        return C3303me.m3095w(C3183ih.getContext());
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    public String getMacAddress() {
        return C3303me.m3094x(C3183ih.getContext());
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dI */
    public String mo2807dI() {
        return C3303me.m3102dI();
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dJ */
    public String mo2806dJ() {
        return "EP_KingCommon";
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dK */
    public int mo2805dK() {
        return 44;
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dz */
    public String mo2802dz() {
        return this.f3000uK;
    }

    @Override // com.kingroot.kinguser.InterfaceC3364nv
    /* renamed from: dL */
    public int mo2804dL() {
        String packageName = C3183ih.getContext().getPackageName();
        try {
            PackageManager packageManager = C3183ih.getContext().getPackageManager();
            if (packageManager == null) {
                return -1;
            }
            return packageManager.getPackageInfo(packageName, 0).versionCode;
        } catch (Throwable th) {
            return -1;
        }
    }
}
