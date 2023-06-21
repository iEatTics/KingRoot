package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class big extends bid {
    private ImageView mIconView;

    public big(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acS() {
        this.btf = this.mLayoutInflater.inflate(R.layout.common_inside_dialog_warn_title, (ViewGroup) m6926bI(0), false);
        this.brb = (TextView) this.btf.findViewById(R.id.title);
        this.mIconView = (ImageView) this.btf.findViewById(R.id.title_icon);
        return this.btf;
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acQ() {
        return null;
    }

    public void setIcon(int i) {
        this.mIconView.setImageResource(i);
        this.mIconView.setVisibility(0);
    }

    /* renamed from: a */
    public void m6920a(bid.EnumC2302a enumC2302a, int i) {
        int color = C3953zi.m1311pr().getColor(i);
        if (enumC2302a == bid.EnumC2302a.BTN_LEFT) {
            this.aci.setTextColor(color);
        } else if (enumC2302a == bid.EnumC2302a.BTN_RIGHT) {
            this.acj.setTextColor(color);
        }
    }

    @Override // com.kingroot.kinguser.bid
    public void setTitleText(String str) {
        this.brb.setText(str);
        if (str.length() > 18) {
            this.brb.setGravity(3);
            this.brb.setGravity(7);
            return;
        }
        this.brb.setGravity(17);
    }

    public void setTitleColor(int i) {
        this.brb.setTextColor(i);
    }
}
