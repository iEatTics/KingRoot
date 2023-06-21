package com.kingcore.uilib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguser.bhk;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class CircleWithButton extends RelativeLayout {

    /* renamed from: Aa */
    private TextView f479Aa;

    /* renamed from: Ab */
    private TextView f480Ab;

    /* renamed from: Ac */
    private final int f481Ac;

    /* renamed from: Ad */
    private final int f482Ad;

    /* renamed from: Ae */
    private String f483Ae;

    /* renamed from: Af */
    private String f484Af;

    /* renamed from: Ag */
    private boolean f485Ag;

    /* renamed from: Ah */
    private AnimatorSet f486Ah;

    /* renamed from: Ai */
    private AnimatorSet f487Ai;

    /* renamed from: Aj */
    private final int f488Aj;

    /* renamed from: Ak */
    private final int f489Ak;

    /* renamed from: Al */
    private float f490Al;

    /* renamed from: Am */
    private boolean f491Am;
    private Context mContext;

    /* renamed from: zE */
    private int f492zE;

    /* renamed from: zI */
    private RectF f493zI;

    /* renamed from: zL */
    private float f494zL;

    /* renamed from: zM */
    private int f495zM;

    /* renamed from: zN */
    private float f496zN;

    /* renamed from: zO */
    private float f497zO;

    /* renamed from: zP */
    private float f498zP;

    /* renamed from: zQ */
    private float f499zQ;

    /* renamed from: zR */
    private int f500zR;

    /* renamed from: zS */
    private int f501zS;

    /* renamed from: zT */
    private Paint f502zT;

    /* renamed from: zU */
    private Paint f503zU;

    /* renamed from: zV */
    private Paint f504zV;

    /* renamed from: zW */
    private int f505zW;

    /* renamed from: zX */
    private int f506zX;

    /* renamed from: zY */
    private String f507zY;

    /* renamed from: zZ */
    private RelativeLayout f508zZ;

    public CircleWithButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f494zL = 3.0f;
        this.f505zW = 0;
        this.f506zX = 0;
        this.f507zY = "";
        this.f481Ac = 1;
        this.f482Ad = 2;
        this.f485Ag = true;
        this.f488Aj = 360;
        this.f489Ak = 90;
        this.f490Al = 0.35f;
        this.f491Am = false;
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.CircleWithButton);
        this.f507zY = obtainStyledAttributes.getString(1);
        this.f495zM = obtainStyledAttributes.getDimensionPixelSize(0, 8);
        m13607aB(this.f495zM);
        init(context);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: aB */
    public void m13607aB(int i) {
        this.f496zN = 360.0f;
        this.f497zO = 90.0f;
        this.f498zP = 360.0f;
        this.f499zQ = 90.0f;
    }

    private void init(Context context) {
        this.f508zZ = new RelativeLayout(context);
        this.f479Aa = new TextView(context);
        this.f480Ab = new TextView(context);
        this.f486Ah = new AnimatorSet();
        this.f487Ai = new AnimatorSet();
    }

    /* renamed from: G */
    private void m13612G(Context context) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (0.4f * this.f501zS));
        layoutParams.addRule(14, -1);
        layoutParams.topMargin = (int) (this.f501zS * 0.15d);
        layoutParams.leftMargin = (int) (this.f500zR * 0.05d);
        layoutParams.rightMargin = (int) (this.f500zR * 0.05d);
        this.f508zZ.setId(1);
        this.f508zZ.setGravity(17);
        m13611a(this.f508zZ, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) (0.85f * this.f500zR), -2);
        this.f480Ab.setGravity(1);
        this.f480Ab.setVisibility(4);
        this.f480Ab.setTextSize(0, C3953zi.m1311pr().getDimensionPixelSize(R.dimen.main_page_circle_button_root_state_text_size));
        this.f480Ab.setTextColor(C3953zi.m1311pr().getColor(R.color.grey_5));
        this.f480Ab.setText(this.f483Ae);
        this.f480Ab.setId(2);
        layoutParams2.topMargin = (int) (this.f500zR * 0.02d);
        layoutParams2.leftMargin = (int) (this.f500zR * 0.05d);
        layoutParams2.rightMargin = (int) (this.f500zR * 0.05d);
        layoutParams2.addRule(3, 1);
        layoutParams2.addRule(14);
        m13611a(this.f480Ab, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) (0.7f * this.f500zR), -2);
        this.f479Aa.setGravity(1);
        this.f479Aa.setVisibility(4);
        this.f479Aa.setTextSize(0, C3953zi.m1311pr().getDimensionPixelSize(R.dimen.main_page_secondary_text_size));
        this.f479Aa.setTextColor(C3953zi.m1311pr().getColor(R.color.grey_5));
        this.f479Aa.setText(this.f484Af);
        layoutParams3.topMargin = (int) (this.f500zR * 0.04d);
        layoutParams3.leftMargin = (int) (this.f500zR * 0.05d);
        layoutParams3.rightMargin = (int) (this.f500zR * 0.05d);
        layoutParams3.addRule(3, 2);
        layoutParams3.addRule(14);
        m13611a(this.f479Aa, layoutParams3);
        this.f492zE = getResources().getDimensionPixelSize(R.dimen.main_page_circle_button_loop_thickness);
        this.f503zU = new Paint(1);
        this.f503zU.setStyle(Paint.Style.STROKE);
        this.f503zU.setStrokeCap(Paint.Cap.ROUND);
        this.f503zU.setStrokeWidth(this.f492zE);
        this.f503zU.setColor(this.f505zW);
        this.f504zV = new Paint(1);
        this.f504zV.setStyle(Paint.Style.STROKE);
        this.f504zV.setStrokeCap(Paint.Cap.ROUND);
        this.f504zV.setStrokeWidth(this.f492zE);
        this.f504zV.setColor(this.f506zX);
        this.f502zT = new Paint(1);
        this.f502zT.setStyle(Paint.Style.STROKE);
        this.f502zT.setStrokeCap(Paint.Cap.ROUND);
        this.f502zT.setStrokeWidth(this.f492zE * 3);
        this.f502zT.setColor(this.f506zX);
        float ceil = ((float) Math.ceil(this.f492zE / 2)) + 1.0f;
        this.f493zI = new RectF(0.0f + ceil + (this.f492zE * 3), 0.0f + ceil + (this.f492zE * 3), (this.f500zR - ceil) - (this.f492zE * 3), (this.f501zS - ceil) - (this.f492zE * 3));
        invalidate();
    }

    /* renamed from: a */
    private void m13611a(View view, ViewGroup.LayoutParams layoutParams) {
        if (view.getParent() == null) {
            addView(view, layoutParams);
        } else {
            view.setLayoutParams(layoutParams);
        }
        invalidate();
    }

    public void setOnButtonClickListener(View.OnClickListener onClickListener) {
        setClickable(true);
        setOnClickListener(onClickListener);
    }

    public void setCircleColor(int i) {
        if (this.f503zU != null && this.f504zV != null) {
            this.f506zX = this.f503zU.getColor();
            this.f505zW = i;
            C3840wl.m1551c(new Runnable() { // from class: com.kingcore.uilib.CircleWithButton.1
                @Override // java.lang.Runnable
                public void run() {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    ofFloat.setDuration(300L);
                    ofFloat.setInterpolator(new DecelerateInterpolator());
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.CircleWithButton.1.1
                        @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            CircleWithButton.this.f504zV.setColor(Color.argb((int) ((1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue()) * Color.alpha(CircleWithButton.this.f506zX)), Color.red(CircleWithButton.this.f506zX), Color.green(CircleWithButton.this.f506zX), Color.blue(CircleWithButton.this.f506zX)));
                            CircleWithButton.this.f503zU.setColor(Color.argb((int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * Color.alpha(CircleWithButton.this.f505zW)), Color.red(CircleWithButton.this.f505zW), Color.green(CircleWithButton.this.f505zW), Color.blue(CircleWithButton.this.f505zW)));
                            CircleWithButton.this.invalidate();
                        }
                    });
                    ofFloat.start();
                }
            }, 200L);
        }
    }

    public void setCentreViewDrawable(Drawable drawable) {
        final RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (this.f501zS * this.f490Al));
        layoutParams.addRule(12, -1);
        final ImageView imageView = new ImageView(getContext());
        imageView.setImageDrawable(drawable);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        C3840wl.m1551c(new Runnable() { // from class: com.kingcore.uilib.CircleWithButton.2
            @Override // java.lang.Runnable
            public void run() {
                if (CircleWithButton.this.f508zZ != null) {
                    if (CircleWithButton.this.f508zZ.getChildCount() != 0) {
                        CircleWithButton.m13610a(CircleWithButton.this.f508zZ, new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.CircleWithButton.2.1
                            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                super.onAnimationStart(animator);
                            }

                            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                CircleWithButton.this.f508zZ.removeAllViews();
                                CircleWithButton.this.f508zZ.addView(imageView, layoutParams);
                                CircleWithButton.m13606b(CircleWithButton.this.f508zZ, new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.CircleWithButton.2.1.1
                                    @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                                    public void onAnimationEnd(Animator animator2) {
                                        super.onAnimationEnd(animator2);
                                    }
                                });
                            }
                        });
                    } else {
                        CircleWithButton.m13606b(CircleWithButton.this.f508zZ, new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.CircleWithButton.2.2
                            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                super.onAnimationStart(animator);
                                CircleWithButton.this.f508zZ.addView(imageView, layoutParams);
                            }
                        });
                    }
                }
            }
        }, 200L);
    }

    public void setCentreViewDrawable(int i) {
        setCentreViewDrawable(C3953zi.m1311pr().getDrawable(i));
    }

    public void setCentreViewText(CharSequence charSequence) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(12, -1);
        final TextView textView = new TextView(getContext());
        textView.setGravity(81);
        textView.setIncludeFontPadding(false);
        textView.setText(charSequence);
        textView.setVisibility(4);
        if (this.f508zZ != null) {
            this.f508zZ.removeAllViews();
            this.f508zZ.addView(textView, layoutParams);
            C3840wl.m1551c(new Runnable() { // from class: com.kingcore.uilib.CircleWithButton.3
                @Override // java.lang.Runnable
                public void run() {
                    bhk.m6992b(CircleWithButton.this.f508zZ, new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.CircleWithButton.3.1
                        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            super.onAnimationStart(animator);
                            textView.setVisibility(0);
                        }
                    });
                }
            }, 200L);
        }
    }

    public void setCentreViewText(int i) {
        setCentreViewText(C3953zi.m1311pr().getString(i));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawArc(this.f493zI, this.f497zO, this.f496zN, false, this.f503zU);
        canvas.drawArc(this.f493zI, this.f499zQ, this.f498zP, false, this.f504zV);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f500zR = i;
        this.f501zS = i2;
        m13612G(this.mContext);
        m13598gB();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(getMeasuredHeight(), getMeasuredWidth()), 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                m13597gz();
                break;
            case 1:
                m13599gA();
                break;
        }
        invalidate();
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: gz */
    private void m13597gz() {
        this.f486Ah.start();
    }

    /* renamed from: gA */
    private void m13599gA() {
        if (this.f486Ah.isRunning()) {
            this.f491Am = true;
        } else {
            this.f487Ai.start();
        }
    }

    /* renamed from: gB */
    private void m13598gB() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "scaleX", 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f);
        this.f487Ai = new AnimatorSet();
        this.f487Ai.playTogether(ofFloat, ofFloat2);
        this.f487Ai.setDuration(50L);
        this.f487Ai.setInterpolator(new DecelerateInterpolator());
        this.f487Ai.addListener(new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.CircleWithButton.4
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                CircleWithButton.this.f491Am = false;
            }
        });
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this, "scaleX", 0.95f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this, "scaleY", 0.95f);
        this.f486Ah = new AnimatorSet();
        this.f486Ah.playTogether(ofFloat3, ofFloat4);
        this.f486Ah.setDuration(50L);
        this.f486Ah.setInterpolator(new AccelerateInterpolator());
        this.f486Ah.addListener(new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.CircleWithButton.5
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (CircleWithButton.this.f491Am) {
                    CircleWithButton.this.f487Ai.start();
                }
            }
        });
    }

    /* renamed from: a */
    public static void m13610a(View view, AnimatorListenerAdapter animatorListenerAdapter) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", 1.0f, 0.5f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 1.0f, 0.5f);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(new AccelerateInterpolator());
            if (animatorListenerAdapter != null) {
                animatorSet.addListener(animatorListenerAdapter);
            }
            animatorSet.start();
        }
    }

    /* renamed from: b */
    public static void m13606b(View view, AnimatorListenerAdapter animatorListenerAdapter) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", 0.5f, 1.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 0.5f, 1.0f);
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(new DecelerateInterpolator());
            if (animatorListenerAdapter != null) {
                animatorSet.addListener(animatorListenerAdapter);
            }
            animatorSet.start();
        }
    }
}
