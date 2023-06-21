package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ada extends acw implements View.OnClickListener {
    public ada(Context context, String str) {
        super(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        m12560ck(1);
        m12566ar(false);
        getWholeView().findViewById(R.id.title_bar_divider).setVisibility(8);
        m12561c(this);
    }

    public void onClick(View view) {
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).finish();
        }
    }
}
