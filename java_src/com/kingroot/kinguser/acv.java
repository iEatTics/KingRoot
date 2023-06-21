package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class acv extends ada {
    public acv(Context context, String str) {
        super(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        super.mo1375oI();
        if (this.abE != null) {
            this.abE.setBackgroundResource(R.color.device_page_background_color);
        }
        this.abw.setImageResource(R.drawable.ic_common_back_km);
        this.abw.setBackgroundResource(R.drawable.black_style_title_button_selector);
    }

    /* renamed from: cj */
    public void m12568cj(int i) {
        switch (i) {
            case 1:
                this.abz.setVisibility(8);
                this.aby.setVisibility(0);
                this.aby.setTextColor(C3953zi.m1311pr().getColor(R.color.white_1));
                this.aby.setText(getTitle());
                return;
            case 2:
                this.aby.setVisibility(8);
                this.abz.setVisibility(0);
                this.abz.setTextColor(C3953zi.m1311pr().getColor(R.color.white_1));
                this.abz.setText(getTitle());
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.ada, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        if (getContext() instanceof Activity) {
            ((Activity) getContext()).overridePendingTransition(R.anim.none, R.anim.slide_left_out);
        }
    }
}
