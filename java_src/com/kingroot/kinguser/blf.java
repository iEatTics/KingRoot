package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class blf extends bkw {
    private InterfaceC3519rh bzK = null;

    @Override // com.kingroot.kinguser.AbstractC3520ri
    public void onCreate() {
        try {
            C3821wa.initCrashReport(getContext(), false);
            C3821wa.m1597W(getContext());
            C3821wa.startANRMonitor(getContext());
        } catch (Throwable th) {
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    public void onTerminate() {
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iv */
    public InterfaceC3519rh mo2468iv() {
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3520ri
    /* renamed from: iw */
    public int mo2467iw() {
        return 3;
    }
}
