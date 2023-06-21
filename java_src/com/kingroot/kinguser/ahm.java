package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.kingcore.uilib.SlideFlashTextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ahm {
    private static final cce<ahm> sInstance = new cce<ahm>() { // from class: com.kingroot.kinguser.ahm.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: xt */
        public ahm create() {
            return new ahm();
        }
    };

    /* renamed from: Mt */
    private SharedPreferences f1438Mt;
    private C3637tk anQ;
    private boolean aqU;

    private ahm() {
        this.aqU = false;
        this.f1438Mt = C3566rv.m2313i(KApplication.m13453ge(), "app_launcher_mask_setting");
    }

    /* renamed from: xs */
    public static ahm m11714xs() {
        return sInstance.get();
    }

    /* renamed from: fR */
    public boolean m11719fR(String str) {
        return this.f1438Mt.getBoolean("sp_key_had_show_mask_for_pkg" + str, false);
    }

    /* renamed from: fS */
    public void m11718fS(String str) {
        this.f1438Mt.edit().putBoolean("sp_key_had_show_mask_for_pkg" + str, true).commit();
    }

    /* renamed from: fT */
    public long m11717fT(String str) {
        return this.f1438Mt.getLong("last_show_toast_tip_time" + str, 0L);
    }

    /* renamed from: j */
    public void m11715j(String str, long j) {
        this.f1438Mt.edit().putLong("last_show_toast_tip_time" + str, j).commit();
    }

    /* renamed from: fU */
    public void m11716fU(String str) {
        this.anQ = C3637tk.m2167cS("addAppLaucherMaskView");
        if (!this.aqU) {
            WindowManager windowManager = (WindowManager) KApplication.m13453ge().getSystemService("window");
            View inflate = ((LayoutInflater) KApplication.m13453ge().getSystemService("layout_inflater")).inflate(R.layout.layout_anti_inject_app_text_mask, (ViewGroup) null);
            SlideFlashTextView slideFlashTextView = (SlideFlashTextView) inflate.findViewById(R.id.text);
            View findViewById = inflate.findViewById(R.id.content);
            slideFlashTextView.setText(String.format(C3953zi.m1311pr().getString(R.string.app_launcher_mask_tip2), str));
            slideFlashTextView.m13504q(2, 16);
            slideFlashTextView.setTextColor(C3953zi.m1311pr().getColor(R.color.white));
            slideFlashTextView.setBackgroundColor(String.format("#%06X", Integer.valueOf(16777215 & C3953zi.m1311pr().getColor(R.color.anti_inject_app_launcher_mask_bg))));
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.format = -3;
            layoutParams.flags |= 264;
            layoutParams.type = 2003;
            layoutParams.width = -2;
            layoutParams.height = abg.m12835r(120.0f);
            layoutParams.gravity = 49;
            layoutParams.verticalMargin = -abg.m12835r(50.0f);
            windowManager.addView(inflate, layoutParams);
            if (this.anQ != null) {
                this.anQ.m2161s(10000L);
            }
            this.aqU = true;
            m11722a(inflate, findViewById, slideFlashTextView, windowManager);
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    private void m11722a(View view, View view2, SlideFlashTextView slideFlashTextView, WindowManager windowManager) {
        if (view2 != null && windowManager != null) {
            if (abd.m12839qb() >= 11) {
                view2.setLayerType(2, null);
            }
            ObjectAnimator ofInt = ObjectAnimator.ofInt(view2, "translationY", -abg.m12835r(20.0f), 0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "alpha", 0.5f, 1.0f);
            ofFloat.setDuration(200L);
            ofInt.setDuration(400L);
            ofInt.setInterpolator(new OvershootInterpolator());
            ofFloat.setInterpolator(new LinearInterpolator());
            ofInt.addListener(new C09472(slideFlashTextView, view2, windowManager, view));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofInt);
            animatorSet.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ahm$2 */
    /* loaded from: classes.dex */
    public class C09472 extends AnimatorListenerAdapter {
        final /* synthetic */ SlideFlashTextView aqV;
        final /* synthetic */ View aqW;
        final /* synthetic */ WindowManager aqX;
        final /* synthetic */ View aqY;

        C09472(SlideFlashTextView slideFlashTextView, View view, WindowManager windowManager, View view2) {
            this.aqV = slideFlashTextView;
            this.aqW = view;
            this.aqX = windowManager;
            this.aqY = view2;
        }

        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.aqV.m13505gY();
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.ahm.2.1
                @Override // java.lang.Runnable
                public void run() {
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(C09472.this.aqW, "alpha", 1.0f, 0.0f);
                    ofFloat.setDuration(500L);
                    ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.ahm.2.1.1
                        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            super.onAnimationEnd(animator2);
                            C09472.this.aqX.removeView(C09472.this.aqY);
                            if (ahm.this.anQ != null) {
                                ahm.this.anQ.release();
                            }
                            ahm.this.aqU = false;
                            if (abd.m12839qb() >= 11) {
                                C09472.this.aqW.setLayerType(0, null);
                            }
                        }
                    });
                    ofFloat.start();
                }
            }, 3500L);
        }
    }
}
