package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class beu extends acw {
    public beu(Context context, String str) {
        super(context, str);
    }

    @Override // com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    protected void mo1375oI() {
        m12560ck(2);
        this.abE.setBackgroundResource(R.color.general_light_bg);
        this.aby.setTextColor(C3953zi.m1311pr().getColor(R.color.main_title_text));
        this.abx.setVisibility(0);
        this.abz.setVisibility(8);
        this.abw.setImageResource(R.drawable.root_homepage);
        this.abw.setVisibility(8);
        this.aby.getPaint().setFakeBoldText(true);
    }

    /* renamed from: it */
    public void m7373it(int i) {
        this.abw.setVisibility(i);
    }

    /* renamed from: m */
    public void m7372m(View.OnClickListener onClickListener) {
        this.abw.setOnClickListener(onClickListener);
    }
}
