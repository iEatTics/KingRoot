package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
import android.widget.ScrollView;
/* renamed from: com.kingroot.kinguser.qo */
/* loaded from: classes.dex */
public class C3482qo implements InterfaceC3477qm {

    /* renamed from: Ex */
    protected final ScrollView f3399Ex;

    public C3482qo(ScrollView scrollView) {
        this.f3399Ex = scrollView;
    }

    @Override // com.kingroot.kinguser.InterfaceC3477qm
    public View getView() {
        return this.f3399Ex;
    }

    @Override // com.kingroot.kinguser.InterfaceC3477qm
    /* renamed from: hs */
    public boolean mo2585hs() {
        return !ViewCompat.canScrollVertically(this.f3399Ex, -1);
    }

    @Override // com.kingroot.kinguser.InterfaceC3477qm
    /* renamed from: ht */
    public boolean mo2584ht() {
        return !ViewCompat.canScrollVertically(this.f3399Ex, 1);
    }
}
