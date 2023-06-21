package com.kingroot.kinguser.gamebox.foreground.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.p004v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import com.android.animation.AnimatorSet;
import com.android.animation.ValueAnimator;
/* loaded from: classes.dex */
public class ScaleView extends View {
    private int aQA;
    private int aQB;
    private Rect aQx;
    private int aQy;
    private int aQz;
    private int mAlpha;
    private Context mContext;
    private Paint mPaint;

    /* renamed from: zR */
    private int f2698zR;

    /* renamed from: zS */
    private int f2699zS;

    public ScaleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAlpha = 255;
        this.mContext = context;
    }

    public ScaleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAlpha = 255;
        this.mContext = context;
    }

    public ScaleView(Context context) {
        super(context);
        this.mAlpha = 255;
        this.mContext = context;
    }

    private void init() {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.aQx = new Rect(0, 0, this.f2698zR, this.f2699zS);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f2698zR = i;
        this.f2699zS = i2;
        init();
    }

    /* renamed from: a */
    public void m3748a(int i, int i2, int i3, int i4, long j) {
        if (this.aQx == null) {
            this.aQx = new Rect(i, i2, i + i3, i2 + i4);
            return;
        }
        this.aQy = i;
        this.aQz = i2;
        this.aQA = i + i3;
        this.aQB = i2 + i4;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.gamebox.foreground.view.ScaleView.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Float f = (Float) valueAnimator.getAnimatedValue();
                ScaleView.this.aQx.left = (int) (ScaleView.this.aQy - ((ScaleView.this.aQy + 0) * f.floatValue()));
                ScaleView.this.aQx.right = (int) (ScaleView.this.aQA + ((ScaleView.this.f2698zR - ScaleView.this.aQA) * f.floatValue()));
                ScaleView.this.aQx.top = (int) (ScaleView.this.aQz - ((ScaleView.this.aQz + 0) * f.floatValue()));
                ScaleView.this.aQx.bottom = (int) ((f.floatValue() * (ScaleView.this.f2699zS - ScaleView.this.aQB)) + ScaleView.this.aQB);
                ScaleView.this.invalidate();
            }
        });
        ValueAnimator ofInt = ValueAnimator.ofInt(255, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.gamebox.foreground.view.ScaleView.2
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScaleView.this.mAlpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(j);
        animatorSet.playTogether(ofInt, ofFloat);
        animatorSet.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mPaint.setAlpha(this.mAlpha);
        canvas.drawRect(this.aQx, this.mPaint);
    }
}
