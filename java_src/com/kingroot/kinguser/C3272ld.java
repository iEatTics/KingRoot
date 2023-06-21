package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
/* renamed from: com.kingroot.kinguser.ld */
/* loaded from: classes.dex */
public class C3272ld implements InterfaceC3361ns {

    /* renamed from: uK */
    private String f2999uK;

    public C3272ld(String str) {
        this.f2999uK = str;
    }

    @Override // com.kingroot.kinguser.InterfaceC3361ns
    /* renamed from: dv */
    public String mo2825dv() {
        return C3303me.m3096v(C3183ih.getContext());
    }

    @Override // com.kingroot.kinguser.InterfaceC3361ns
    /* renamed from: dw */
    public String mo2824dw() {
        return "com.kingcom.sdk";
    }

    @Override // com.kingroot.kinguser.InterfaceC3361ns
    /* renamed from: dx */
    public String mo2823dx() {
        return "uranus.1.6.1.40";
    }

    @Override // com.kingroot.kinguser.InterfaceC3361ns
    /* renamed from: dy */
    public String mo2822dy() {
        String m3553bF = C3183ih.m3497bW().m3553bF();
        Context context = C3183ih.getContext();
        String packageName = context.getPackageName();
        String str = "0.0.0";
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null) {
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
                str = packageInfo.versionName + "." + packageInfo.versionCode;
            }
        } catch (Throwable th) {
        }
        return m3553bF + "." + str;
    }

    @Override // com.kingroot.kinguser.InterfaceC3361ns
    /* renamed from: dz */
    public String mo2821dz() {
        return this.f2999uK;
    }

    @Override // com.kingroot.kinguser.InterfaceC3361ns
    /* renamed from: dA */
    public long mo2827dA() {
        return 1800000L;
    }

    @Override // com.kingroot.kinguser.InterfaceC3361ns
    /* renamed from: dB */
    public int mo2826dB() {
        return 1;
    }
}
