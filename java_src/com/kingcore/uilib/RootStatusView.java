package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.support.p004v4.internal.view.SupportMenu;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3906xy;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.acs;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class RootStatusView extends View {

    /* renamed from: BM */
    private RectF f614BM;

    /* renamed from: BN */
    private int f615BN;

    /* renamed from: BO */
    private int f616BO;

    /* renamed from: BP */
    private int f617BP;

    /* renamed from: BQ */
    private int f618BQ;

    /* renamed from: BR */
    private Bitmap f619BR;

    /* renamed from: BS */
    private Bitmap f620BS;

    /* renamed from: BT */
    private Bitmap f621BT;

    /* renamed from: BU */
    private Bitmap f622BU;

    /* renamed from: BV */
    private RectF f623BV;

    /* renamed from: BW */
    private Paint f624BW;

    /* renamed from: BX */
    private int f625BX;

    /* renamed from: BY */
    private String f626BY;

    /* renamed from: BZ */
    private boolean f627BZ;

    /* renamed from: Bh */
    private Paint f628Bh;

    /* renamed from: Ca */
    private boolean f629Ca;

    /* renamed from: Cb */
    private int f630Cb;

    /* renamed from: Cc */
    private int f631Cc;

    /* renamed from: Cd */
    private boolean f632Cd;

    /* renamed from: Ce */
    private Paint f633Ce;
    private int mLayoutHeight;

    public RootStatusView(Context context) {
        super(context);
        this.f627BZ = false;
        this.f629Ca = false;
        this.f632Cd = false;
        init();
    }

    public RootStatusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f627BZ = false;
        this.f629Ca = false;
        this.f632Cd = false;
        init();
    }

    public RootStatusView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f627BZ = false;
        this.f629Ca = false;
        this.f632Cd = false;
        init();
    }

    public RootStatusView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f627BZ = false;
        this.f629Ca = false;
        this.f632Cd = false;
        init();
    }

    private void init() {
        this.f628Bh = new Paint(1);
        this.f628Bh.setColor(SupportMenu.CATEGORY_MASK);
        this.f621BT = acs.m12656b(C3906xy.m1431ox().getDrawable(R.drawable.main_page_badge_black));
        this.f619BR = this.f621BT;
        this.f624BW = new Paint(1);
        this.f624BW.setColor(-1);
        this.f624BW.setTextAlign(Paint.Align.LEFT);
        this.f630Cb = C3953zi.m1311pr().getColor(R.color.red);
        this.f631Cc = C3953zi.m1311pr().getColor(R.color.green_0);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m13543b(this.f621BT);
        m13543b(this.f620BS);
        m13543b(this.f622BU);
    }

    /* renamed from: b */
    private static void m13543b(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        m13539c(canvas);
        m13542b(canvas);
        m13536d(canvas);
        m13533e(canvas);
    }

    /* renamed from: b */
    private void m13542b(Canvas canvas) {
        if (this.f632Cd) {
            if (this.f633Ce == null) {
                this.f633Ce = new Paint(1);
                this.f633Ce.setColor(C3953zi.m1311pr().getColor(R.color.global_pressed_color));
                this.f633Ce.setStyle(Paint.Style.FILL_AND_STROKE);
            }
            canvas.drawRect(0.0f, 0.0f, this.mLayoutHeight, this.mLayoutHeight, this.f633Ce);
        }
    }

    /* renamed from: c */
    private void m13539c(Canvas canvas) {
        if (this.f627BZ && this.f614BM != null) {
            canvas.save();
            canvas.translate(this.f615BN, this.f616BO);
            canvas.drawRoundRect(this.f614BM, this.f614BM.height() / 2.0f, this.f614BM.height() / 2.0f, this.f628Bh);
            canvas.restore();
        }
    }

    /* renamed from: d */
    private void m13536d(Canvas canvas) {
        if (this.f619BR != null && this.f623BV != null) {
            canvas.drawBitmap(this.f619BR, (Rect) null, this.f623BV, new Paint());
        }
    }

    /* renamed from: e */
    private void m13533e(Canvas canvas) {
        if (this.f629Ca) {
            m13549a(canvas, this.f626BY, this.f624BW, (int) ((this.f623BV.left * 2.0f) + this.f623BV.width()));
        }
    }

    /* renamed from: a */
    private void m13549a(Canvas canvas, String str, Paint paint, int i) {
        paint.getTextBounds(str, 0, str.length(), new Rect());
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        canvas.drawText(str, i, (((getMeasuredHeight() - fontMetricsInt.bottom) + fontMetricsInt.top) / 2) - fontMetricsInt.top, paint);
    }

    public void setIcon(boolean z) {
        this.f629Ca = false;
        this.f627BZ = false;
        if (!z && this.f622BU == null) {
            this.f622BU = BitmapFactory.decodeResource(getResources(), R.drawable.main_page_badge_red);
        }
        this.f619BR = z ? this.f621BT : this.f622BU;
        Handler handler = getHandler();
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.kingcore.uilib.RootStatusView.1
                @Override // java.lang.Runnable
                public void run() {
                    RootStatusView.this.invalidate();
                }
            });
        }
    }

    /* renamed from: j */
    public void m13532j(String str, boolean z) {
        this.f629Ca = true;
        this.f627BZ = true;
        if (str != null) {
            this.f626BY = str;
        }
        if (this.f620BS == null) {
            this.f620BS = BitmapFactory.decodeResource(getResources(), R.drawable.main_page_badge_white);
        }
        this.f619BR = this.f620BS;
        this.f628Bh.setColor(z ? this.f631Cc : this.f630Cb);
        m13531u(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingcore.uilib.RootStatusView$2 */
    /* loaded from: classes.dex */
    public class C04642 extends AnimatorListenerAdapter {

        /* renamed from: Cg */
        final /* synthetic */ boolean f636Cg;

        C04642(boolean z) {
            this.f636Cg = z;
        }

        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            Handler handler = RootStatusView.this.getHandler();
            if (handler != null) {
                handler.postDelayed(new Runnable() { // from class: com.kingcore.uilib.RootStatusView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RootStatusView.this.m13544a(false, (Animator.AnimatorListener) new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.RootStatusView.2.1.1
                            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                RootStatusView.this.setIcon(C04642.this.f636Cg);
                            }
                        });
                    }
                }, 3000L);
            }
        }
    }

    /* renamed from: u */
    private void m13531u(boolean z) {
        m13544a(true, (Animator.AnimatorListener) new C04642(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m13544a(boolean z, Animator.AnimatorListener animatorListener) {
        ValueAnimator m13530v = m13530v(z);
        ValueAnimator m13529w = m13529w(z);
        final AnimatorSet animatorSet = new AnimatorSet();
        if (z) {
            animatorSet.playSequentially(m13530v, m13529w);
        } else {
            animatorSet.playSequentially(m13529w, m13530v);
        }
        if (animatorListener != null) {
            animatorSet.addListener(animatorListener);
        }
        animatorSet.setDuration(300L);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingcore.uilib.RootStatusView.3
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                RootStatusView.this.getViewTreeObserver().removeOnPreDrawListener(this);
                animatorSet.start();
                return true;
            }
        });
        postInvalidate();
    }

    /* renamed from: v */
    private ValueAnimator m13530v(boolean z) {
        ValueAnimator ofInt = z ? ValueAnimator.ofInt(0, this.mLayoutHeight) : ValueAnimator.ofInt(this.mLayoutHeight, 0);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.RootStatusView.4
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RootStatusView.this.f618BQ = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RootStatusView.this.f617BP = RootStatusView.this.f618BQ;
                RootStatusView.this.f615BN = (RootStatusView.this.mLayoutHeight - RootStatusView.this.f617BP) / 2;
                RootStatusView.this.f616BO = RootStatusView.this.f615BN;
                RootStatusView.this.f614BM = new RectF(0.0f, 0.0f, RootStatusView.this.f617BP, RootStatusView.this.f618BQ);
                RootStatusView.this.postInvalidate();
            }
        });
        return ofInt;
    }

    /* renamed from: w */
    private ValueAnimator m13529w(boolean z) {
        ValueAnimator ofInt = z ? ValueAnimator.ofInt(this.mLayoutHeight, this.f625BX) : ValueAnimator.ofInt(this.f625BX, this.mLayoutHeight);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.RootStatusView.5
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RootStatusView.this.f617BP = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RootStatusView.this.f614BM = new RectF(0.0f, 0.0f, RootStatusView.this.f617BP, RootStatusView.this.f618BQ);
                RootStatusView.this.f615BN = 0;
                RootStatusView.this.f616BO = 0;
                RootStatusView.this.postInvalidate();
            }
        });
        return ofInt;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mLayoutHeight = i2;
        this.f625BX = i;
        int i5 = i2 / 6;
        this.f623BV = new RectF(i5, i5, i2 - i5, i2 - i5);
        this.f624BW.setTextSize(i2 / 3);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.f632Cd = true;
                break;
            case 1:
            case 3:
            case 4:
                this.f632Cd = false;
                break;
            case 2:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (x <= this.mLayoutHeight && y <= this.mLayoutHeight) {
                    this.f632Cd = true;
                    break;
                } else {
                    this.f632Cd = false;
                    break;
                }
                break;
        }
        postInvalidate();
        return super.onTouchEvent(motionEvent);
    }
}
