package com.kingroot.common.uilib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.p004v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ObjectAnimator;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.EnumC3895xq;
import com.kingroot.kinguser.acs;
import com.kingroot.kinguser.animationInterpolatorC3896xr;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class WellChosenOuterGuideView extends View {

    /* renamed from: Sm */
    public static final int f1098Sm = Color.parseColor("#ffcd7b");

    /* renamed from: Rk */
    private int f1099Rk;

    /* renamed from: Rl */
    private int f1100Rl;

    /* renamed from: SA */
    private int f1101SA;

    /* renamed from: SB */
    private int f1102SB;

    /* renamed from: SC */
    private ValueAnimator f1103SC;

    /* renamed from: SD */
    private ValueAnimator f1104SD;

    /* renamed from: SE */
    private int f1105SE;

    /* renamed from: SF */
    private Rect f1106SF;

    /* renamed from: SG */
    private Paint f1107SG;

    /* renamed from: SH */
    private Rect f1108SH;

    /* renamed from: SI */
    private View.OnClickListener f1109SI;

    /* renamed from: SJ */
    private Paint f1110SJ;

    /* renamed from: SK */
    private boolean f1111SK;

    /* renamed from: SL */
    private boolean f1112SL;

    /* renamed from: SM */
    private boolean f1113SM;

    /* renamed from: Sn */
    private Bitmap f1114Sn;

    /* renamed from: So */
    private int f1115So;

    /* renamed from: Sp */
    private float f1116Sp;

    /* renamed from: Sq */
    private int f1117Sq;

    /* renamed from: Sr */
    private int f1118Sr;

    /* renamed from: Ss */
    private float f1119Ss;

    /* renamed from: St */
    private float f1120St;

    /* renamed from: Su */
    private Paint f1121Su;

    /* renamed from: Sv */
    private Paint f1122Sv;

    /* renamed from: Sw */
    private int f1123Sw;

    /* renamed from: Sx */
    private int f1124Sx;

    /* renamed from: Sy */
    private int f1125Sy;

    /* renamed from: Sz */
    private int f1126Sz;
    private Paint mPaint;

    public WellChosenOuterGuideView(Context context) {
        super(context);
        this.f1115So = -1;
        this.f1117Sq = -1;
        this.f1111SK = true;
        this.f1112SL = true;
        this.f1113SM = false;
        init();
    }

    public WellChosenOuterGuideView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1115So = -1;
        this.f1117Sq = -1;
        this.f1111SK = true;
        this.f1112SL = true;
        this.f1113SM = false;
        init();
    }

    public WellChosenOuterGuideView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1115So = -1;
        this.f1117Sq = -1;
        this.f1111SK = true;
        this.f1112SL = true;
        this.f1113SM = false;
        init();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f1121Su.setAlpha(this.f1101SA);
        this.f1122Sv.setAlpha(this.f1102SB);
        canvas.drawCircle(this.f1119Ss, this.f1120St, this.f1125Sy, this.f1121Su);
        canvas.drawCircle(this.f1119Ss, this.f1120St, this.f1126Sz, this.f1122Sv);
        if (this.f1114Sn != null && !this.f1114Sn.isRecycled()) {
            canvas.drawBitmap(this.f1114Sn, this.f1118Sr, 0.0f, this.mPaint);
        }
        if (this.f1112SL) {
            canvas.drawCircle(this.f1106SF.centerX(), this.f1106SF.centerY(), (float) (this.f1106SF.height() * 1.3d), this.f1110SJ);
            canvas.drawLine(this.f1106SF.left, this.f1106SF.top, this.f1106SF.right, this.f1106SF.bottom, this.f1107SG);
            canvas.drawLine(this.f1106SF.right, this.f1106SF.top, this.f1106SF.left, this.f1106SF.bottom, this.f1107SG);
        }
    }

    public void setWidth(int i) {
        this.f1115So = i;
        init();
        requestLayout();
    }

    private void init() {
        this.mPaint = new Paint(1);
        this.mPaint.setDither(true);
        this.f1121Su = new Paint(1);
        this.f1121Su.setColor(f1098Sm);
        this.f1121Su.setStyle(Paint.Style.FILL);
        this.f1122Sv = new Paint(1);
        this.f1122Sv.setColor(f1098Sm);
        this.f1122Sv.setStyle(Paint.Style.FILL);
        this.f1107SG = new Paint(1);
        this.f1107SG.setColor(-1);
        this.f1107SG.setStyle(Paint.Style.FILL);
        this.f1110SJ = new Paint(1);
        this.f1110SJ.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.f1110SJ.setAlpha(64);
        this.f1110SJ.setStyle(Paint.Style.FILL);
        if (this.f1114Sn != null) {
            acs.m12655c(this.f1114Sn);
        }
        this.f1114Sn = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.well_chosen_outer_float_guide_cup);
        float width = this.f1114Sn.getWidth() * 1.3333334f;
        if (this.f1115So > 0 && this.f1115So < width) {
            float f = width / this.f1115So;
            Bitmap bitmap = this.f1114Sn;
            this.f1114Sn = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() / f), (int) (bitmap.getHeight() / f), false);
            acs.m12655c(bitmap);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        startAnimation();
    }

    private void startAnimation() {
        m13187on();
        this.f1103SC = ValueAnimator.ofInt(this.f1123Sw, this.f1124Sx);
        this.f1103SC.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.WellChosenOuterGuideView.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                WellChosenOuterGuideView.this.f1125Sy = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                WellChosenOuterGuideView.this.f1101SA = (int) (127.0f - (((WellChosenOuterGuideView.this.f1125Sy - WellChosenOuterGuideView.this.f1123Sw) * 127.0f) / (WellChosenOuterGuideView.this.f1124Sx - WellChosenOuterGuideView.this.f1123Sw)));
                ViewCompat.postInvalidateOnAnimation(WellChosenOuterGuideView.this);
            }
        });
        this.f1103SC.setDuration(1500L);
        this.f1103SC.setRepeatCount(-1);
        this.f1103SC.setInterpolator(new DecelerateInterpolator());
        this.f1103SC.setRepeatMode(1);
        this.f1103SC.start();
        this.f1104SD = ValueAnimator.ofInt(this.f1123Sw, this.f1124Sx);
        this.f1104SD.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.WellChosenOuterGuideView.2
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                WellChosenOuterGuideView.this.f1126Sz = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                WellChosenOuterGuideView.this.f1102SB = (int) (127.0f - (((WellChosenOuterGuideView.this.f1126Sz - WellChosenOuterGuideView.this.f1123Sw) * 127.0f) / (WellChosenOuterGuideView.this.f1124Sx - WellChosenOuterGuideView.this.f1123Sw)));
                ViewCompat.postInvalidateOnAnimation(WellChosenOuterGuideView.this);
            }
        });
        this.f1104SD.setDuration(1500L);
        this.f1104SD.setRepeatCount(-1);
        this.f1104SD.setRepeatMode(1);
        this.f1104SD.setInterpolator(new DecelerateInterpolator());
        this.f1104SD.setStartDelay(750L);
        this.f1104SD.start();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1114Sn == null || this.f1114Sn.isRecycled()) {
            setMeasuredDimension(this.f1099Rk, this.f1100Rl);
            return;
        }
        this.f1099Rk = (int) (this.f1114Sn.getWidth() * 1.3333334f);
        this.f1118Sr = (this.f1099Rk - this.f1114Sn.getWidth()) / 2;
        this.f1105SE = this.f1112SL ? this.f1114Sn.getHeight() / 4 : 0;
        this.f1100Rl = this.f1114Sn.getHeight() + this.f1118Sr + this.f1105SE;
        this.f1115So = this.f1115So == -1 ? this.f1099Rk : this.f1115So;
        this.f1117Sq = this.f1117Sq == -1 ? this.f1100Rl : this.f1117Sq;
        this.f1116Sp = this.f1100Rl / this.f1099Rk;
        this.f1117Sq = (int) (this.f1116Sp * this.f1115So);
        this.f1123Sw = this.f1114Sn.getWidth() / 2;
        this.f1124Sx = this.f1099Rk / 2;
        this.f1119Ss = this.f1099Rk / 2;
        this.f1120St = (this.f1100Rl - (this.f1099Rk / 2)) - this.f1105SE;
        int min = Math.min(this.f1099Rk, this.f1105SE) / 8;
        int i3 = (this.f1099Rk - min) / 2;
        int height = this.f1114Sn.getHeight() + ((this.f1105SE - min) / 2);
        this.f1106SF = new Rect(i3, height, i3 + min, min + height);
        int min2 = Math.min(this.f1099Rk, this.f1105SE) / 2;
        int i4 = (this.f1099Rk - min2) / 2;
        int height2 = this.f1114Sn.getHeight() + ((this.f1105SE - min2) / 2);
        this.f1108SH = new Rect(i4, height2, i4 + min2, min2 + height2);
        setMeasuredDimension(this.f1099Rk, this.f1100Rl);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f1111SK) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "translationY", -this.f1100Rl, 0.0f);
            ofFloat.setDuration(850L);
            ofFloat.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.BOUNCE_OUT));
            ofFloat.start();
        }
    }

    /* renamed from: c */
    public void m13194c(AnimatorListenerAdapter animatorListenerAdapter) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "translationY", 0.0f, -this.f1100Rl);
        ofFloat.setDuration(500L);
        ofFloat.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.SINE_IN));
        if (animatorListenerAdapter != null) {
            ofFloat.addListener(animatorListenerAdapter);
        }
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.WellChosenOuterGuideView.3
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                WellChosenOuterGuideView.this.m13187on();
            }
        });
        ofFloat.start();
    }

    public void recycle() {
        if (this.f1114Sn != null) {
            acs.m12655c(this.f1114Sn);
            this.f1114Sn = null;
        }
        m13187on();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: on */
    public void m13187on() {
        if (this.f1103SC != null) {
            this.f1103SC.cancel();
        }
        if (this.f1104SD != null) {
            this.f1104SD.cancel();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean contains = this.f1108SH.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        if (motionEvent.getAction() == 0) {
            if (contains) {
                this.f1113SM = true;
                return true;
            }
        } else if (motionEvent.getAction() == 1 && contains && this.f1113SM) {
            this.f1113SM = false;
            m13194c(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.WellChosenOuterGuideView.4
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (WellChosenOuterGuideView.this.f1109SI != null) {
                        WellChosenOuterGuideView.this.f1109SI.onClick(WellChosenOuterGuideView.this);
                    }
                }
            });
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setOnCloseListener(View.OnClickListener onClickListener) {
        this.f1109SI = onClickListener;
    }

    /* renamed from: aa */
    public void m13197aa(boolean z) {
        this.f1111SK = z;
    }

    public void setCloseEnable(boolean z) {
        this.f1112SL = z;
    }
}
