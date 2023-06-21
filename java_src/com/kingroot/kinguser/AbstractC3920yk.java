package com.kingroot.kinguser;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.yk */
/* loaded from: classes.dex */
public abstract class AbstractC3920yk extends AbstractC3922ym implements InterfaceC3934yq {

    /* renamed from: Vc */
    protected List<AbstractC3922ym> f4010Vc;

    /* renamed from: L */
    protected abstract void mo1422L(List<AbstractC3922ym> list);

    public AbstractC3920yk(Context context) {
        super(context);
        this.f4010Vc = new ArrayList();
        mo1422L(this.f4010Vc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oF */
    public void mo1410oF() {
        super.mo1410oF();
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            abstractC3922ym.mo1410oF();
            abstractC3922ym.m1412a(this);
        }
    }
}
