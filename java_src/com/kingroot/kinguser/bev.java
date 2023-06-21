package com.kingroot.kinguser;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bev extends ada {
    public bev(Activity activity, String str) {
        super(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        super.mo1375oI();
        this.abA.setVisibility(8);
        this.abx.setVisibility(4);
        getWholeView().findViewById(R.id.title_bar_divider).setVisibility(4);
        this.abE = getWholeView().findViewById(R.id.title_bar_wrapper);
        this.abE.setClickable(true);
        ImageView imageView = (ImageView) getWholeView().findViewById(R.id.bg_iv_1);
        imageView.setVisibility(0);
        C3867wx.m1488a(imageView, C3906xy.m1431ox().getDrawable(R.drawable.skin_exam_detail_page_bg));
        this.abz.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_exam_detail_title));
        this.abw.setImageDrawable(C3906xy.m1431ox().getDrawable(R.drawable.skin_exam_detail_arrow_back));
        C3867wx.m1488a(this.abw, C3906xy.m1431ox().getDrawable(R.drawable.skin_opt_detail_template_left_back_selector));
    }

    @Override // com.kingroot.kinguser.acw, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oY */
    protected View mo1368oY() {
        return getLayoutInflater().inflate(R.layout.template_shadow_title_bar, (ViewGroup) null);
    }

    /* renamed from: Zz */
    public void m7371Zz() {
        if (this.abx.getVisibility() != 0) {
            bhk.m6998a((View) this.abx, 1000L, new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.bev.1
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                }

                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    bev.this.abx.setVisibility(0);
                    super.onAnimationEnd(animator);
                }
            });
        }
    }

    /* renamed from: hz */
    public void m7369hz(int i) {
        C3857ws.m1501a(this.abE, i, bgi.getColor(R.color.transparent));
    }
}
