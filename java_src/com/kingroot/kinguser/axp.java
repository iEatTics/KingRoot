package com.kingroot.kinguser;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class axp extends AbstractC3922ym {
    public axp(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(this.mContext, m1417V(2131165850L));
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.root_pc_guide, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.sub_title_1)).setText(Html.fromHtml(m1417V(2131165635L)));
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
    }
}
