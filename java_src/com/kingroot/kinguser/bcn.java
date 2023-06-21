package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class bcn extends bcg {
    public bcn(Context context) {
        super(context);
        this.bgn = (TextView) getWholeView().findViewById(R.id.top_part_title);
        getWholeView().findViewById(R.id.phone_icon).setVisibility(4);
        this.bgn.setText(C3953zi.m1311pr().getString(R.string.root_success_rating_pc));
        this.bgn.setVisibility(0);
        this.bgk.setText(C3953zi.m1311pr().getString(R.string.root_pc_guide));
        this.bgm.setText(C3953zi.m1311pr().getString(R.string.root_pc_guide_description));
    }

    /* renamed from: e */
    public void m7661e(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            this.bgk.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: f */
    public void m7660f(View.OnClickListener onClickListener) {
        if (onClickListener != null) {
            this.bgl.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: kA */
    public void m7659kA(String str) {
        this.bgl.setText(str);
    }
}
