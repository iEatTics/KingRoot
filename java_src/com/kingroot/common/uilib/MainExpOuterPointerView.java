package com.kingroot.common.uilib;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.p004v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.common.uilib.MainExpOutCircleView;
/* loaded from: classes.dex */
public class MainExpOuterPointerView extends View {

    /* renamed from: OB */
    private Paint f938OB;

    /* renamed from: Oq */
    private int f939Oq;

    /* renamed from: Or */
    private int f940Or;

    /* renamed from: Ot */
    private int f941Ot;

    /* renamed from: Ou */
    private int f942Ou;

    /* renamed from: Pg */
    private MainExpOutCircleView f943Pg;

    /* renamed from: Ph */
    private MainExpInnerCircleView f944Ph;

    /* renamed from: Pi */
    private ValueAnimator f945Pi;

    /* renamed from: Pj */
    private float f946Pj;

    /* renamed from: Pk */
    private boolean f947Pk;

    /* renamed from: Pl */
    private float[] f948Pl;

    /* renamed from: Pm */
    private float f949Pm;

    public MainExpOuterPointerView(Context context) {
        super(context);
        this.f946Pj = -1.0f;
        this.f947Pk = false;
        this.f948Pl = new float[2];
        init();
    }

    public MainExpOuterPointerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f946Pj = -1.0f;
        this.f947Pk = false;
        this.f948Pl = new float[2];
        init();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.f941Ot, this.f942Ou);
        if (this.f947Pk) {
            m13282a(canvas, this.f946Pj);
        }
        canvas.restore();
    }

    /* renamed from: a */
    private void m13282a(Canvas canvas, float f) {
        this.f948Pl = this.f943Pg.m13297a(f, this.f948Pl);
        this.f938OB.setColor(this.f943Pg.m13290a(this.f948Pl));
        canvas.drawCircle(this.f948Pl[0] - this.f941Ot, this.f948Pl[1] - this.f942Ou, this.f949Pm, this.f938OB);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f940Or = i;
        this.f939Oq = i2;
        m13278nO();
    }

    @TargetApi(11)
    private void init() {
        this.f938OB = new Paint(1);
        this.f938OB.setStyle(Paint.Style.FILL);
    }

    /* renamed from: nO */
    private void m13278nO() {
        this.f941Ot = this.f940Or / 2;
        this.f942Ou = this.f939Oq / 2;
        this.f949Pm = (0.023399998f * Math.min(this.f940Or, this.f939Oq)) / 2.0f;
    }

    public void setOuterCircleView(MainExpOutCircleView mainExpOutCircleView) {
        this.f943Pg = mainExpOutCircleView;
        this.f943Pg.m13295a(new MainExpOutCircleView.InterfaceC0538a() { // from class: com.kingroot.common.uilib.MainExpOuterPointerView.1
            @Override // com.kingroot.common.uilib.MainExpOutCircleView.InterfaceC0538a
            /* renamed from: nQ */
            public void mo13276nQ() {
                MainExpOuterPointerView.this.f947Pk = false;
                ViewCompat.postInvalidateOnAnimation(MainExpOuterPointerView.this);
            }

            @Override // com.kingroot.common.uilib.MainExpOutCircleView.InterfaceC0538a
            /* renamed from: nR */
            public void mo13275nR() {
                MainExpOuterPointerView.this.f947Pk = true;
                ViewCompat.postInvalidateOnAnimation(MainExpOuterPointerView.this);
            }
        });
    }

    /* renamed from: b */
    public void m13279b(float f, float f2) {
        if (this.f945Pi == null) {
            this.f945Pi = ValueAnimator.ofFloat(f, f2);
            this.f945Pi.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.MainExpOuterPointerView.2
                @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    MainExpOuterPointerView.this.f946Pj = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    ViewCompat.postInvalidateOnAnimation(MainExpOuterPointerView.this);
                }
            });
            this.f945Pi.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.MainExpOuterPointerView.3
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ViewCompat.postInvalidateOnAnimation(MainExpOuterPointerView.this);
                }
            });
        } else {
            this.f945Pi.cancel();
            this.f945Pi.setFloatValues(f, f2);
        }
        this.f945Pi.setDuration((long) (200.0d + (Math.abs((f2 - f) / 6.283185307179586d) * 1000.0d)));
        this.f945Pi.setInterpolator(new DecelerateInterpolator());
        this.f945Pi.start();
    }

    public void setInnerCircleView(MainExpInnerCircleView mainExpInnerCircleView) {
        this.f944Ph = mainExpInnerCircleView;
    }

    /* renamed from: nS */
    public void m13277nS() {
        if (this.f944Ph != null) {
            m13279b(this.f944Ph.getStartAngle(), this.f944Ph.getPresentAngle());
        }
    }
}
