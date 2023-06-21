package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.android.animation.Animator;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3453qc;
import com.kingroot.kinguser.abg;
import com.kingroot.kinguser.animationAnimation$AnimationListenerC3445px;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class LoadingCircle extends FrameLayout {

    /* renamed from: AN */
    private static final int f545AN = Color.parseColor("#00ffffff");

    /* renamed from: AO */
    private int f546AO;

    /* renamed from: AP */
    private int f547AP;

    /* renamed from: AQ */
    private Paint f548AQ;

    /* renamed from: AR */
    private Paint f549AR;

    /* renamed from: AS */
    private int f550AS;

    /* renamed from: AT */
    private RectF f551AT;

    /* renamed from: AU */
    private ValueAnimator f552AU;

    /* renamed from: AV */
    private ValueAnimator f553AV;

    /* renamed from: AW */
    private float f554AW;

    /* renamed from: AX */
    private View f555AX;

    /* renamed from: AY */
    private View f556AY;

    /* renamed from: AZ */
    protected ValueAnimator f557AZ;

    /* renamed from: Ba */
    private boolean f558Ba;

    /* renamed from: Bb */
    private boolean f559Bb;
    private Context mContext;

    /* renamed from: zR */
    private int f560zR;

    /* renamed from: zS */
    private int f561zS;

    public LoadingCircle(Context context) {
        super(context);
        this.f546AO = f545AN;
        this.f547AP = 0;
        this.f550AS = 0;
        this.f558Ba = false;
        this.f559Bb = false;
        init(context);
    }

    public LoadingCircle(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        init(context);
    }

    public LoadingCircle(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f546AO = f545AN;
        this.f547AP = 0;
        this.f550AS = 0;
        this.f558Ba = false;
        this.f559Bb = false;
        init(context);
    }

    /* renamed from: gJ */
    public void m13572gJ() {
        m13571gK();
        this.f558Ba = true;
        this.f552AU.start();
        this.f553AV.start();
        m13568gN();
    }

    /* renamed from: gK */
    private void m13571gK() {
        if (this.f555AX != null) {
            this.f555AX.clearAnimation();
        }
        if (this.f556AY != null) {
            this.f556AY.clearAnimation();
            this.f556AY.setVisibility(4);
        }
        this.f546AO = f545AN;
        this.f559Bb = false;
        this.f558Ba = false;
    }

    /* renamed from: gL */
    public void m13570gL() {
        this.f559Bb = true;
        this.f558Ba = true;
        if (this.f555AX != null) {
            this.f555AX.clearAnimation();
            this.f555AX.setVisibility(4);
        }
        if (this.f556AY != null) {
            this.f556AY.clearAnimation();
            this.f556AY.setVisibility(0);
        }
        invalidate();
    }

    /* renamed from: gM */
    public void m13569gM() {
        if (this.f555AX != null) {
            this.f555AX.clearAnimation();
        }
        if (this.f556AY != null) {
            this.f556AY.clearAnimation();
        }
        this.f557AZ.start();
    }

    private void init(Context context) {
        this.mContext = context;
        this.f548AQ = new Paint(1);
        this.f548AQ.setStrokeWidth(abg.m12835r(1.5f));
        this.f548AQ.setStyle(Paint.Style.STROKE);
        this.f548AQ.setStrokeCap(Paint.Cap.ROUND);
        this.f548AQ.setColor(-1);
        this.f549AR = new Paint(1);
        this.f549AR.setStyle(Paint.Style.FILL);
        this.f549AR.setColor(-1);
        initAnimation();
    }

    private void initAnimation() {
        this.f552AU = ValueAnimator.ofInt(0, 359);
        this.f552AU.setRepeatCount(-1);
        this.f552AU.setDuration(500L);
        this.f552AU.setInterpolator(new LinearInterpolator());
        this.f552AU.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.LoadingCircle.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LoadingCircle.this.f547AP = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                LoadingCircle.this.invalidate();
            }
        });
        this.f553AV = ValueAnimator.ofFloat(0.9f, 0.0f);
        this.f553AV.setDuration(5000L);
        this.f553AV.setInterpolator(new AccelerateInterpolator());
        this.f553AV.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.LoadingCircle.2
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LoadingCircle.this.f554AW = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        this.f557AZ = ValueAnimator.ofInt(0, 255);
        this.f557AZ.setDuration(500L);
        this.f557AZ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.LoadingCircle.3
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                LoadingCircle.this.f546AO = Color.argb(((Integer) valueAnimator.getAnimatedValue()).intValue(), 255, 255, 255);
            }
        });
        this.f557AZ.addListener(new Animator.AnimatorListener() { // from class: com.kingcore.uilib.LoadingCircle.4
            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                LoadingCircle.this.m13582a(0.0f, 90.0f);
                LoadingCircle.this.f552AU.end();
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }
        });
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f555AX = findViewById(R.id.icon_game_box_optimize);
        this.f556AY = findViewById(R.id.icon_game_box_optimize_ok);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m13567n(i, i2);
    }

    /* renamed from: n */
    private void m13567n(int i, int i2) {
        this.f560zR = i;
        this.f561zS = i2;
        this.f550AS = 0;
        this.f550AS = abg.m12835r(1.5f) / 2;
        this.f551AT = new RectF(this.f550AS + 0, this.f550AS + 0, this.f560zR - this.f550AS, this.f561zS - this.f550AS);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f558Ba) {
            m13581a(canvas);
        }
    }

    /* renamed from: a */
    private void m13581a(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.f547AP, this.f560zR / 2, this.f561zS / 2);
        if (this.f559Bb) {
            canvas.drawArc(this.f551AT, 180.0f, 360.0f, false, this.f548AQ);
        } else {
            this.f548AQ.setShader(new SweepGradient(this.f560zR / 2, this.f561zS / 2, new int[]{f545AN, this.f546AO, -1}, new float[]{0.0f, this.f554AW, 1.0f}));
            canvas.drawCircle(this.f560zR - this.f550AS, this.f561zS / 2, abg.m12835r(1.5f) / 2, this.f549AR);
            canvas.drawArc(this.f551AT, 180.0f, 180.0f, false, this.f548AQ);
            canvas.rotate(180.0f, this.f560zR / 2, this.f561zS / 2);
            canvas.drawCircle(this.f560zR - this.f550AS, this.f561zS / 2, abg.m12835r(1.5f) / 2, this.f549AR);
            canvas.drawArc(this.f551AT, 180.0f, 180.0f, false, this.f548AQ);
        }
        canvas.restore();
    }

    /* renamed from: gN */
    private void m13568gN() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m13582a(float f, float f2) {
        float width = this.f555AX.getWidth() / 2.0f;
        float height = this.f555AX.getHeight() / 2.0f;
        final float width2 = this.f556AY.getWidth() / 2.0f;
        final float height2 = this.f556AY.getHeight() / 2.0f;
        C3453qc c3453qc = new C3453qc((ContextThemeWrapper) this.mContext, f, f2, width, height, 1.0f, true);
        c3453qc.setDuration(300L);
        c3453qc.setFillAfter(true);
        c3453qc.setInterpolator(new AccelerateInterpolator());
        c3453qc.setAnimationListener(new animationAnimation$AnimationListenerC3445px() { // from class: com.kingcore.uilib.LoadingCircle.5
            @Override // com.kingroot.kinguser.animationAnimation$AnimationListenerC3445px, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                C3453qc c3453qc2 = new C3453qc((ContextThemeWrapper) LoadingCircle.this.mContext, -90.0f, 0.0f, width2, height2, 1.0f, true);
                c3453qc2.setDuration(300L);
                c3453qc2.setFillAfter(true);
                LoadingCircle.this.f556AY.startAnimation(c3453qc2);
                LoadingCircle.this.f556AY.setVisibility(0);
                LoadingCircle.this.f555AX.setVisibility(4);
            }
        });
        this.f555AX.startAnimation(c3453qc);
    }
}
