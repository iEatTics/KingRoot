package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class bhy extends bhx {
    private Button bsd;

    public bhy(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bhx
    protected View acQ() {
        View aA = m6952aA(R.layout.view_anti_closed);
        this.bsd = (Button) aA.findViewById(R.id.open_right_now);
        return aA;
    }

    /* renamed from: d */
    public void m6951d(View.OnClickListener onClickListener) {
        if (this.bsd != null) {
            this.bsd.setOnClickListener(onClickListener);
        }
    }
}
