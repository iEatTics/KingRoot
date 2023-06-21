package com.kingroot.kinguser;

import android.app.Activity;
import com.kingroot.kinguser.aud;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class aum implements aud.InterfaceC1601a {
    private aud.InterfaceC1602b aRy;
    private WeakReference<Activity> aRz;

    public aum(aud.InterfaceC1602b interfaceC1602b, Activity activity) {
        this.aRy = (aud.InterfaceC1602b) C3948zd.m1327k(interfaceC1602b);
        this.aRz = new WeakReference<>(C3948zd.m1327k(activity));
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
    }
}
