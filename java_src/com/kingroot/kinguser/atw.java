package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class atw extends FrameLayout {
    private RelativeLayout aQD;
    private ImageView aQE;
    private ImageView aQF;
    private LinearLayout aQG;
    private InterfaceC1597a aQH;
    private ImageView afU;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.atw$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1597a {
        /* renamed from: PC */
        void mo9110PC();
    }

    public atw(Context context) {
        super(context);
        this.aQH = null;
        this.mContext = context;
        this.aQD = (RelativeLayout) LayoutInflater.from(this.mContext).inflate(R.layout.start_game_mask_view, (ViewGroup) null);
        try {
            addView(this.aQD);
            this.aQE = (ImageView) this.aQD.findViewById(R.id.start_game_blue_mask);
            this.aQF = (ImageView) this.aQD.findViewById(R.id.start_game_white_circle);
            this.afU = (ImageView) this.aQD.findViewById(R.id.start_game_icon);
            this.aQG = (LinearLayout) this.aQD.findViewById(R.id.start_game_finish_layout);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: jh */
    public void m9115jh(String str) {
        if (this.aQE != null && this.aQF != null && this.afU != null && this.aQG != null) {
            this.aQE.setVisibility(0);
            Drawable m9140je = atu.m9140je(str);
            if (m9140je == null) {
                this.afU.setVisibility(4);
            } else {
                this.afU.setImageDrawable(m9140je);
                this.afU.setVisibility(0);
            }
            this.aQG.setVisibility(4);
            this.aQE.startAnimation(getBlueMaskAnim());
            this.aQF.startAnimation(getWhiteCircleAnim());
            if (m9140je != null) {
                this.afU.startAnimation(getAppIconAnim());
            }
        }
    }

    private Animation getAppIconAnim() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(300L);
        return scaleAnimation;
    }

    private Animation getWhiteCircleAnim() {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 1800.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(2000L);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(400L);
        alphaAnimation.setStartOffset(1600L);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(rotateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setAnimationListener(new Animation.AnimationListener() { // from class: com.kingroot.kinguser.atw.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                atw.this.aQF.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                atw.this.aQF.setVisibility(4);
                atw.this.afU.setVisibility(4);
                Animation resultLayoutAnim = atw.this.getResultLayoutAnim();
                resultLayoutAnim.setAnimationListener(new Animation.AnimationListener() { // from class: com.kingroot.kinguser.atw.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation2) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation2) {
                        if (atw.this.aQH != null) {
                            atw.this.aQH.mo9110PC();
                        }
                    }
                });
                atw.this.aQG.startAnimation(resultLayoutAnim);
            }
        });
        return animationSet;
    }

    private Animation getBlueMaskAnim() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(300L);
        return alphaAnimation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Animation getResultLayoutAnim() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(1500L);
        return alphaAnimation;
    }

    public void setStartGameMaskViewControllerListener(InterfaceC1597a interfaceC1597a) {
        this.aQH = interfaceC1597a;
    }
}
