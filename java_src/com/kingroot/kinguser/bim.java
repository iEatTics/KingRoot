package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bim extends bic {
    public bim(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acS() {
        this.btf = this.mLayoutInflater.inflate(R.layout.common_dialog__serious_warn_title, (ViewGroup) m6926bI(0), false);
        this.brb = (TextView) this.btf.findViewById(R.id.title);
        return this.btf;
    }

    /* renamed from: a */
    public void m6882a(bid.EnumC2302a enumC2302a, int i) {
        int color = C3953zi.m1311pr().getColor(i);
        if (enumC2302a == bid.EnumC2302a.BTN_LEFT) {
            this.aci.setTextColor(color);
        } else if (enumC2302a == bid.EnumC2302a.BTN_RIGHT) {
            this.acj.setTextColor(color);
        }
    }
}
