package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public abstract class acx extends AbstractC3921yl {
    public acx(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.f4011Vd.setBackgroundResource(R.color.global_background_color);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected Drawable getDivider() {
        return m1414Y(2130837952L);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return R.id.list_view;
    }
}
