package com.kingroot.kinguser.p015ai.fore;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cloudsdk.ext.p008kr.RootConst;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.abg;
import com.kingroot.kinguses.R;
import oicq.wlogin_sdk.tools.C4393util;
/* renamed from: com.kingroot.kinguser.ai.fore.AppLaucherMaskView */
/* loaded from: classes.dex */
public class AppLaucherMaskView extends RelativeLayout {

    /* renamed from: Op */
    private static final int f1442Op = Color.rgb(159, 233, 247);
    private static final int aqE = Color.rgb((int) ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, (int) ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, (int) ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION);
    private static final int aqF = C3953zi.m1311pr().getColor(R.color.black_translucence);

    /* renamed from: Df */
    private float f1443Df;

    /* renamed from: OC */
    private Paint f1444OC;

    /* renamed from: Oy */
    private Paint f1445Oy;

    /* renamed from: Tc */
    private int f1446Tc;
    private AlphaAnimation aqA;
    private ValueAnimator aqB;
    private ValueAnimator aqC;
    private ValueAnimator aqD;
    private boolean aqG;
    private boolean aqH;
    private boolean aqI;
    private int aqi;
    private Bitmap aqj;
    private Bitmap aqk;
    private BitmapDrawable aql;
    private ImageView aqm;
    private TextView aqn;
    private TextView aqo;
    private int aqp;
    private C0971a aqq;
    private RunnableC0972b aqr;
    private InterfaceC0973c aqs;
    private float aqt;
    private float aqu;
    private Paint aqv;
    private Paint aqw;
    private Paint aqx;
    private ValueAnimator aqy;
    private ValueAnimator aqz;
    private String mAppName;

    /* renamed from: zR */
    private int f1447zR;

    /* renamed from: zS */
    private int f1448zS;

    /* renamed from: com.kingroot.kinguser.ai.fore.AppLaucherMaskView$c */
    /* loaded from: classes.dex */
    public interface InterfaceC0973c {
        /* renamed from: xr */
        void m11679xr();
    }

    public AppLaucherMaskView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1448zS = 0;
        this.aqi = 0;
        this.f1447zR = 0;
        this.aqj = null;
        this.aqk = null;
        this.aql = null;
        this.f1446Tc = 17;
        this.aqp = 14;
        this.aqr = new RunnableC0972b();
        this.f1444OC = null;
        this.aqv = null;
        this.f1445Oy = null;
        this.aqw = null;
        this.aqx = null;
        this.aqG = false;
        this.aqH = false;
        this.aqI = false;
        this.mAppName = "";
        init(context);
    }

    public AppLaucherMaskView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1448zS = 0;
        this.aqi = 0;
        this.f1447zR = 0;
        this.aqj = null;
        this.aqk = null;
        this.aql = null;
        this.f1446Tc = 17;
        this.aqp = 14;
        this.aqr = new RunnableC0972b();
        this.f1444OC = null;
        this.aqv = null;
        this.f1445Oy = null;
        this.aqw = null;
        this.aqx = null;
        this.aqG = false;
        this.aqH = false;
        this.aqI = false;
        this.mAppName = "";
        init(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.aqH) {
            if (this.aqI) {
                this.aqo.setTextSize(2, this.aqp * this.aqq.aqQ);
                this.aqn.setTextSize(2, this.f1446Tc * this.aqq.aqQ);
            }
            m11687h(canvas);
            m11682n(canvas);
            m11684m(canvas);
            m11685l(canvas);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m11683n(i, i2);
    }

    public void setAppName(String str) {
        this.mAppName = str;
        this.aqn.setText(String.format(C3953zi.m1311pr().getString(R.string.app_launcher_mask_tip), this.mAppName));
    }

    public void setAnimationListener(InterfaceC0973c interfaceC0973c) {
        this.aqs = interfaceC0973c;
    }

    /* renamed from: l */
    private void m11685l(Canvas canvas) {
        canvas.save();
        RectF rectF = new RectF();
        float f = this.aqi / 11;
        this.aqk.getHeight();
        float width = (this.aqk.getWidth() <= 0 ? 1 : this.aqk.getWidth()) / (this.aqk.getHeight() > 0 ? this.aqk.getHeight() : 1);
        float f2 = width >= 1.0f ? f : f * width;
        float f3 = width >= 1.0f ? f / width : f;
        rectF.left = this.aqt - f2;
        rectF.top = this.aqu - f3;
        rectF.right = f2 + this.aqt;
        rectF.bottom = f3 + this.aqu;
        this.aqx.setAlpha(this.aqq.aqO);
        canvas.drawBitmap(this.aqk, (Rect) null, rectF, this.aqx);
        canvas.restore();
    }

    /* renamed from: m */
    private void m11684m(Canvas canvas) {
        canvas.save();
        RectF rectF = new RectF();
        float f = (float) (this.aqi * 0.15d);
        rectF.left = this.aqt - f;
        rectF.top = this.aqu - f;
        rectF.right = this.aqt + f;
        rectF.bottom = this.aqu + f;
        float f2 = 90;
        float sin = (float) ((Math.sin(Math.toRadians(10)) * f) + this.aqt);
        float cos = (float) (this.aqu - (Math.cos(Math.toRadians(10)) * f));
        float cos2 = (float) (this.aqt + (Math.cos(Math.toRadians(10)) * f));
        float sin2 = (float) (this.aqu - (f * Math.sin(Math.toRadians(10))));
        canvas.rotate(-this.aqq.aqN, this.aqt, this.aqu);
        for (int i = 0; i < 4; i++) {
            canvas.rotate(f2, this.aqt, this.aqu);
            canvas.drawArc(rectF, 280, 70, false, this.f1445Oy);
            canvas.drawCircle(sin, cos, 2.0f * this.f1443Df, this.aqw);
            canvas.drawCircle(cos2, sin2, 2.0f * this.f1443Df, this.aqw);
        }
        canvas.restore();
    }

    /* renamed from: n */
    private void m11682n(Canvas canvas) {
        int height = this.aqj.getHeight() / 2;
        int width = this.aqj.getWidth() / 2;
        float f = 90;
        float f2 = (float) (this.aqi * 0.23d);
        this.aqv.setAlpha(this.aqq.aqO);
        RectF rectF = new RectF();
        canvas.save();
        canvas.rotate(this.aqq.aqN, this.aqt, this.aqu);
        for (int i = 0; i < 4; i++) {
            float f3 = this.aqt;
            float f4 = this.aqu - f2;
            rectF.left = f3 - width;
            rectF.top = f4 - height;
            rectF.right = f3 + width;
            rectF.bottom = height + f4;
            canvas.rotate(f, this.aqt, this.aqu);
            canvas.drawBitmap(this.aqj, (Rect) null, rectF, this.aqv);
        }
        canvas.restore();
    }

    /* renamed from: h */
    private void m11687h(Canvas canvas) {
        float f = (float) (6.283185307179586d / 100);
        float f2 = (float) (this.aqi * 0.3d);
        for (int i = 0; i < 100; i++) {
            float f3 = (i * f) + this.aqq.aqM;
            float cos = ((float) Math.cos(f3)) * f2;
            float sin = ((float) Math.sin(f3)) * f2;
            canvas.drawLine(cos + this.aqt, this.aqu + sin, (cos * 1.04f) + this.aqt, (sin * 1.04f) + this.aqu, this.f1444OC);
        }
    }

    /* renamed from: n */
    private void m11683n(int i, int i2) {
        this.f1448zS = i2;
        this.f1447zR = i;
        this.aqi = (int) (this.f1447zR * this.aqq.aqP);
        this.aqt = this.aqi / 2.0f;
        this.aqu = this.f1448zS / 2.0f;
    }

    private void init(Context context) {
        setVisibility(4);
        this.aqq = new C0971a();
        this.aqm = new ImageView(context);
        new RelativeLayout.LayoutParams(-1, -1);
        this.aqo = new TextView(context);
        this.aqo.setText(R.string.app_name);
        this.aqo.setTextSize(2, this.aqp);
        this.aqo.setTextColor(C3953zi.m1311pr().getColor(R.color.white));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(2, RootConst.ALLOW_FAIL_TIMES);
        layoutParams.addRule(14);
        addView(this.aqo, layoutParams);
        this.aqn = new TextView(context);
        this.aqn.setId(RootConst.ALLOW_FAIL_TIMES);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(12);
        layoutParams2.bottomMargin = abg.m12835r(120.0f);
        layoutParams2.addRule(14);
        this.aqn.setTextSize(2, this.f1446Tc);
        this.aqn.setText(String.format(C3953zi.m1311pr().getString(R.string.app_launcher_mask_tip), this.mAppName));
        this.aqn.setTextColor(C3953zi.m1311pr().getColor(R.color.white));
        addView(this.aqn, layoutParams2);
        this.f1443Df = context.getResources().getDisplayMetrics().density;
        this.f1444OC = new Paint(1);
        this.f1444OC.setColor(f1442Op);
        this.f1444OC.setStyle(Paint.Style.FILL);
        this.f1444OC.setStrokeWidth(this.f1443Df * 2.0f);
        this.aqv = new Paint(1);
        this.aqv.setStyle(Paint.Style.FILL);
        this.f1445Oy = new Paint(1);
        this.f1445Oy.setStyle(Paint.Style.STROKE);
        this.f1445Oy.setColor(aqE);
        this.f1445Oy.setStrokeWidth(this.f1443Df);
        this.f1445Oy.setAlpha(80);
        this.aqw = new Paint(1);
        this.aqw.setStyle(Paint.Style.FILL);
        this.aqw.setColor(aqE);
        this.aqw.setAlpha(C4393util.S_GET_SMS);
        this.aqx = new Paint(1);
        this.aqx.setStyle(Paint.Style.FILL);
        this.aqw.setAlpha(C4393util.S_GET_SMS);
        this.aqj = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.triangle);
        this.aqk = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.app_launcher_mask_logo);
        m11681xp();
    }

    /* renamed from: xp */
    private void m11681xp() {
        this.aqy = ValueAnimator.ofFloat(20.0f, 45.0f);
        this.aqy.setDuration(0L);
        this.aqy.setDuration(400L);
        this.aqy.setInterpolator(new DecelerateInterpolator());
        this.aqy.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.1
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AppLaucherMaskView.this.aqD.start();
            }

            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                AppLaucherMaskView.this.aqH = true;
            }
        });
        this.aqy.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.3
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppLaucherMaskView.this.aqq.aqN = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        this.aqz = ValueAnimator.ofFloat(1.0f, 1.05f, 1.0f);
        this.aqz.setDuration(600L);
        this.aqz.setInterpolator(new AccelerateDecelerateInterpolator());
        this.aqz.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.4
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppLaucherMaskView.this.aqi = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * AppLaucherMaskView.this.f1447zR);
            }
        });
        this.aqB = ValueAnimator.ofFloat(1.0f, 1.1f, 1.0f);
        this.aqB.setDuration(300L);
        this.aqB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.5
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppLaucherMaskView.this.aqq.aqQ = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                AppLaucherMaskView.this.postInvalidate();
            }
        });
        this.aqB.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.6
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                AppLaucherMaskView.this.aqI = true;
            }

            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AppLaucherMaskView.this.aqI = false;
                C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AppLaucherMaskView.this.startAnimation(AppLaucherMaskView.this.aqA);
                    }
                }, 500L);
            }
        });
        this.aqA = new AlphaAnimation(1.0f, 0.0f);
        this.aqA.setDuration(1000L);
        this.aqA.setFillAfter(true);
        this.aqA.setAnimationListener(new Animation.AnimationListener() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.7
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (AppLaucherMaskView.this.aqs != null) {
                    AppLaucherMaskView.this.aqs.m11679xr();
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.aqC = ValueAnimator.ofInt(255, 90, 255);
        this.aqC.setDuration(300L);
        this.aqC.setRepeatCount(1);
        this.aqC.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.8
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppLaucherMaskView.this.aqq.aqO = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                AppLaucherMaskView.this.postInvalidate();
            }
        });
        this.aqC.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.9
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AppLaucherMaskView.this.aqB.start();
            }

            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                AppLaucherMaskView.this.aqr.m11680xq();
            }
        });
        this.aqD = ValueAnimator.ofFloat(45.0f, 0.0f);
        this.aqD.setDuration(800L);
        this.aqD.setInterpolator(new OvershootInterpolator());
        this.aqD.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.10
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppLaucherMaskView.this.aqq.aqN = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
        });
        this.aqD.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.ai.fore.AppLaucherMaskView.2
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AppLaucherMaskView.this.aqC.start();
            }
        });
    }

    /* renamed from: com.kingroot.kinguser.ai.fore.AppLaucherMaskView$b */
    /* loaded from: classes.dex */
    class RunnableC0972b implements Runnable {

        /* renamed from: PA */
        private boolean f1449PA = false;
        private boolean aqR = false;
        private boolean aqS = false;
        private Thread aqT = new Thread(this);

        RunnableC0972b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.aqR) {
                try {
                    Thread.sleep(3L);
                } catch (InterruptedException e) {
                }
                AppLaucherMaskView.this.aqq.aqL++;
                if (AppLaucherMaskView.this.aqq.aqL >= Long.MAX_VALUE) {
                    AppLaucherMaskView.this.aqq.aqL = 0L;
                }
                AppLaucherMaskView.this.aqq.aqM = (float) Math.toRadians(AppLaucherMaskView.this.aqq.aqL % 360);
                AppLaucherMaskView.this.postInvalidate();
            }
            this.f1449PA = false;
        }

        /* renamed from: xq */
        public void m11680xq() {
            if (!this.aqR) {
                this.aqR = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ai.fore.AppLaucherMaskView$a */
    /* loaded from: classes.dex */
    public static class C0971a {
        long aqL;
        public float aqM;
        public float aqN;
        public int aqO;
        public float aqP;
        public float aqQ;

        private C0971a() {
            this.aqL = 0L;
            this.aqO = 255;
            this.aqP = 1.0f;
            this.aqQ = 1.0f;
        }
    }
}
