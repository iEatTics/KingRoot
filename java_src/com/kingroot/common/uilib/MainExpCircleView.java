package com.kingroot.common.uilib;

import android.content.Context;
import android.support.percent.PercentRelativeLayout;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.kingroot.common.uilib.MainExpInnerCircleView;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3906xy;
import com.kingroot.kinguser.aqs;
import com.kingroot.kinguser.aqt;
import com.kingroot.kinguser.aqu;
import com.kingroot.kinguser.aqv;
import com.kingroot.kinguser.bhk;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class MainExpCircleView extends FrameLayout {

    /* renamed from: NQ */
    private MainExpOutCircleView f848NQ;

    /* renamed from: NR */
    private MainExpInnerCircleView f849NR;

    /* renamed from: NS */
    private MainExpOuterPointerView f850NS;

    /* renamed from: NT */
    private View f851NT;

    /* renamed from: NU */
    private PercentRelativeLayout f852NU;

    /* renamed from: NV */
    private String f853NV;

    /* renamed from: NW */
    private EnumC0528a f854NW;

    /* renamed from: NX */
    private View f855NX;

    /* renamed from: NY */
    private View f856NY;

    /* renamed from: NZ */
    private View f857NZ;

    /* renamed from: Oa */
    private boolean f858Oa;

    /* renamed from: com.kingroot.common.uilib.MainExpCircleView$a */
    /* loaded from: classes.dex */
    public enum EnumC0528a {
        IDLE,
        RUNNING,
        ROOT_ABNORMAL
    }

    public MainExpCircleView(Context context) {
        super(context);
        this.f858Oa = false;
    }

    public MainExpCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f858Oa = false;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        m13310gq();
    }

    /* renamed from: gq */
    private void m13310gq() {
        this.f852NU = (PercentRelativeLayout) findViewById(R.id.circle_container);
        this.f848NQ = (MainExpOutCircleView) findViewById(R.id.out_circle);
        this.f849NR = (MainExpInnerCircleView) findViewById(R.id.inner_circle);
        this.f850NS = (MainExpOuterPointerView) findViewById(R.id.outer_pointer);
        this.f849NR.setOutPointerView(this.f850NS);
        this.f850NS.setOuterCircleView(this.f848NQ);
        this.f850NS.setInnerCircleView(this.f849NR);
        this.f851NT = findViewById(R.id.bottom);
        this.f855NX = this.f851NT.findViewById(R.id.system_defence);
        ((ImageView) this.f855NX.findViewById(R.id.icon)).setImageDrawable(C3906xy.m1431ox().getDrawable(R.drawable.system_defence_checking_icon));
        this.f856NY = this.f851NT.findViewById(R.id.root_security);
        ((ImageView) this.f856NY.findViewById(R.id.icon)).setImageDrawable(C3906xy.m1431ox().getDrawable(R.drawable.root_security_checking_icon));
        this.f857NZ = this.f851NT.findViewById(R.id.enhance_efficiency);
        ((ImageView) this.f857NZ.findViewById(R.id.icon)).setImageDrawable(C3906xy.m1431ox().getDrawable(R.drawable.enhance_efficiency_checking_icon));
        ((TextView) this.f855NX.findViewById(R.id.title)).setText(R.string.examination_system_defence_rotating_title);
        ((TextView) this.f856NY.findViewById(R.id.title)).setText(R.string.examination_root_sec_rotating_title);
        ((TextView) this.f857NZ.findViewById(R.id.title)).setText(R.string.examination_enhance_rotating_title);
        this.f849NR.setTitleText(this.f853NV);
        this.f848NQ.m13296a(this.f854NW, (AnimatorListenerAdapter) null);
    }

    /* renamed from: nJ */
    public void m13308nJ() {
        this.f852NU.getLayoutParams().height = this.f852NU.getHeight();
        this.f852NU.setLayoutParams(this.f852NU.getLayoutParams());
    }

    /* renamed from: nK */
    public void m13307nK() {
        this.f852NU.getLayoutParams().height = -1;
        this.f852NU.setLayoutParams(this.f852NU.getLayoutParams());
    }

    public void setState(EnumC0528a enumC0528a) {
        this.f854NW = enumC0528a;
        if (this.f848NQ != null) {
            this.f848NQ.m13296a(this.f854NW, (AnimatorListenerAdapter) null);
            this.f849NR.setState(this.f854NW);
        }
    }

    public void setTitleText(String str) {
        this.f853NV = str;
        if (this.f849NR != null) {
            this.f849NR.setTitleText(this.f853NV);
        }
    }

    /* renamed from: a */
    public void m13325a(int i, int i2, MainExpInnerCircleView.InterfaceC0531a interfaceC0531a) {
        if (this.f849NR != null) {
            this.f849NR.m13304a(i, i2, interfaceC0531a);
        }
    }

    /* renamed from: gD */
    public void m13311gD() {
        this.f848NQ.m13286gD();
    }

    /* renamed from: nL */
    public void m13306nL() {
        this.f851NT.setVisibility(0);
    }

    /* renamed from: a */
    public void m13323a(final AnimatorListenerAdapter animatorListenerAdapter) {
        if (this.f848NQ != null) {
            this.f848NQ.m13289b(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.MainExpCircleView.1
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    MainExpCircleView.this.m13324a(0L, 600, MainExpCircleView.this.f849NR, MainExpCircleView.this.f855NX, null);
                    MainExpCircleView.this.m13324a(200L, 400, MainExpCircleView.this.f849NR, MainExpCircleView.this.f856NY, null);
                    MainExpCircleView.this.m13324a(300L, 300, MainExpCircleView.this.f849NR, MainExpCircleView.this.f857NZ, animatorListenerAdapter);
                    if (!MainExpCircleView.this.f858Oa) {
                        MainExpCircleView.this.f858Oa = true;
                        MainExpCircleView.this.f850NS.m13277nS();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m13324a(long j, int i, View view, View view2, final AnimatorListenerAdapter animatorListenerAdapter) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int[] iArr2 = {iArr[0] + (view.getWidth() / 2), iArr[1] + ((view.getHeight() * 2) / 3)};
        int[] iArr3 = new int[2];
        view2.getLocationOnScreen(iArr3);
        int[] iArr4 = {iArr3[0] + (view2.getWidth() / 2), iArr3[1] + view2.getHeight()};
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "alpha", 1.0f, 0.0f);
        final ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, "translationY", 0.0f, iArr2[1] - iArr4[1]);
        final ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view2, "translationX", 0.0f, iArr2[0] - iArr4[0]);
        final AnimatorSet animatorSet = new AnimatorSet();
        ofFloat.setDuration(i);
        ofFloat2.setDuration(i);
        ofFloat3.setDuration(i);
        animatorSet.playTogether(ofFloat3, ofFloat2, ofFloat);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.MainExpCircleView.2
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MainExpCircleView.this.f851NT.setVisibility(8);
                ofFloat.setDuration(0L);
                ofFloat2.setDuration(0L);
                ofFloat3.setDuration(0L);
                ofFloat.reverse();
                ofFloat2.reverse();
                ofFloat3.reverse();
                MainExpCircleView.this.m13305nM();
                if (animatorListenerAdapter != null) {
                    animatorListenerAdapter.onAnimationEnd(animator);
                }
            }
        });
        C3840wl.m1551c(new Runnable() { // from class: com.kingroot.common.uilib.MainExpCircleView.3
            @Override // java.lang.Runnable
            public void run() {
                animatorSet.start();
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: nM */
    public void m13305nM() {
        this.f855NX.findViewById(R.id.result_tick).setVisibility(4);
        this.f855NX.findViewById(R.id.checking).setVisibility(4);
        this.f857NZ.findViewById(R.id.result_tick).setVisibility(4);
        this.f857NZ.findViewById(R.id.checking).setVisibility(4);
        this.f856NY.findViewById(R.id.result_tick).setVisibility(4);
        this.f856NY.findViewById(R.id.checking).setVisibility(4);
    }

    /* renamed from: a */
    public void m13319a(aqs aqsVar) {
        if (aqsVar instanceof aqv) {
            bhk.m6997a(this.f855NX.findViewById(R.id.checking), 400L, true);
            this.f855NX.findViewById(R.id.result_tick).setVisibility(4);
        } else if (aqsVar instanceof aqt) {
            bhk.m6997a(this.f857NZ.findViewById(R.id.checking), 400L, true);
            this.f857NZ.findViewById(R.id.result_tick).setVisibility(4);
        } else if (aqsVar instanceof aqu) {
            bhk.m6997a(this.f856NY.findViewById(R.id.checking), 400L, true);
            this.f856NY.findViewById(R.id.result_tick).setVisibility(4);
        }
    }

    /* renamed from: b */
    public void m13317b(aqs aqsVar) {
        View view;
        ImageView imageView = null;
        if (aqsVar instanceof aqv) {
            view = this.f855NX.findViewById(R.id.checking);
            imageView = (ImageView) this.f855NX.findViewById(R.id.result_tick);
        } else if (aqsVar instanceof aqt) {
            view = this.f857NZ.findViewById(R.id.checking);
            imageView = (ImageView) this.f857NZ.findViewById(R.id.result_tick);
        } else if (aqsVar instanceof aqu) {
            view = this.f856NY.findViewById(R.id.checking);
            imageView = (ImageView) this.f856NY.findViewById(R.id.result_tick);
        } else {
            view = null;
        }
        if (view != null) {
            view.setVisibility(4);
            view.clearAnimation();
        }
        if (imageView != null) {
            imageView.setVisibility(0);
            if (aqsVar.m9565MZ()) {
                imageView.setImageResource(R.drawable.common_tick);
            } else {
                imageView.setImageResource(R.drawable.common_warning);
            }
        }
    }
}
