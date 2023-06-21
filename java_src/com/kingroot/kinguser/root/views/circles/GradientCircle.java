package com.kingroot.kinguser.root.views.circles;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.EnumC3895xq;
import com.kingroot.kinguser.animationInterpolatorC3896xr;
import com.kingroot.kinguser.bgi;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class GradientCircle extends ImageView {

    /* renamed from: Ot */
    private int f3493Ot;

    /* renamed from: Ou */
    private int f3494Ou;
    private Paint bgM;
    private Paint bgN;
    private float bgO;
    private ValueAnimator bgP;
    private boolean bgQ;
    private RadialGradient bgR;
    private RadialGradient bgS;
    private float mRadius;

    public GradientCircle(Context context) {
        super(context);
        init();
    }

    public GradientCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public GradientCircle(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    private void init() {
        this.bgM = new Paint(1);
        this.bgM.setStyle(Paint.Style.FILL);
        this.bgM.setStrokeWidth(0.0f);
        this.bgN = new Paint(1);
        this.bgN.setStyle(Paint.Style.FILL);
        this.bgN.setStrokeWidth(0.0f);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(this.f3493Ot, this.f3494Ou);
        canvas.save();
        canvas.drawCircle(0.0f, 0.0f, this.mRadius, this.bgM);
        if (this.bgQ) {
            canvas.drawCircle(0.0f, 0.0f, this.bgO, this.bgN);
        }
        canvas.restore();
        canvas.restore();
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f3493Ot = i / 2;
        this.f3494Ou = i2 / 2;
        this.mRadius = Math.min(this.f3493Ot, this.f3494Ou) - 1.0f;
        this.bgR = new RadialGradient(0.0f, 0.0f, this.mRadius + 3.0f, bgi.getColor(R.color.grey_3), bgi.getColor(R.color.black_2), Shader.TileMode.REPEAT);
        this.bgM.setShader(this.bgR);
        this.bgS = new RadialGradient(0.0f, 0.0f, this.mRadius + 3.0f, bgi.getColor(R.color.green_2), bgi.getColor(R.color.black_2), Shader.TileMode.REPEAT);
        this.bgN.setShader(this.bgS);
        this.bgP = ValueAnimator.ofFloat(0.0f, i / 2.0f, 0.0f);
        this.bgP.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.root.views.circles.GradientCircle.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                GradientCircle.this.bgO = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                GradientCircle.this.invalidate();
            }
        });
        this.bgP.setDuration(2000L);
        this.bgP.setRepeatCount(-1);
        this.bgP.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.QUART_IN_OUT));
        this.bgP.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.root.views.circles.GradientCircle.2
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GradientCircle.this.bgQ = false;
            }
        });
    }

    /* renamed from: gD */
    public void m2420gD() {
        this.bgQ = true;
        this.bgP.start();
    }
}
