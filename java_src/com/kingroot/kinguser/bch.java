package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class bch extends bcg {
    public bch(Context context) {
        super(context);
        this.bgk.setText(C3953zi.m1311pr().getString(R.string.kr4_start_root));
        this.bgm.setVisibility(8);
        this.bgl.setText(C3953zi.m1311pr().getString(R.string.root_enter_main_page));
    }

    /* renamed from: e */
    public void m7701e(View.OnClickListener onClickListener) {
        this.bgk.setOnClickListener(onClickListener);
    }

    /* renamed from: f */
    public void m7700f(View.OnClickListener onClickListener) {
        this.bgl.setOnClickListener(onClickListener);
    }
}
