package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class bia extends bhx {
    private int aWR;
    private TextView bsm;

    public bia(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bhx
    protected View acQ() {
        View aA = m6952aA(R.layout.view_anti_opening);
        this.bsm = (TextView) aA.findViewById(R.id.anti_open_percentage);
        return aA;
    }

    public void setPercentage(int i) {
        if (i != this.aWR) {
            this.bsm.setText(i < 10 ? "0" + i : "" + i);
            this.aWR = i;
        }
    }
}
