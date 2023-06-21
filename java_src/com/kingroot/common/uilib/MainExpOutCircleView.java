package com.kingroot.common.uilib;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.support.annotation.UiThread;
import android.support.p004v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.common.uilib.MainExpCircleView;
import com.kingroot.kinguser.C3906xy;
import com.kingroot.kinguser.EnumC3895xq;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.acs;
import com.kingroot.kinguser.animationInterpolatorC3896xr;
import com.kingroot.kinguser.bgi;
import com.kingroot.kinguses.R;
import com.tencent.feedback.eup.CrashReport;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class MainExpOutCircleView extends View {

    /* renamed from: OO */
    public static final int f906OO = C3906xy.m1431ox().getColor(R.color.skin_main_header_view_outer_circle_shade_3);

    /* renamed from: OP */
    public static final int f907OP = C3906xy.m1431ox().getColor(R.color.skin_main_header_view_outer_circle_shade_2);

    /* renamed from: OQ */
    public static final int f908OQ = C3906xy.m1431ox().getColor(R.color.skin_main_header_view_outer_circle_shade_1);

    /* renamed from: AB */
    private ValueAnimator f909AB;

    /* renamed from: CB */
    private ValueAnimator f910CB;

    /* renamed from: CC */
    private ValueAnimator f911CC;

    /* renamed from: NW */
    private volatile MainExpCircleView.EnumC0528a f912NW;

    /* renamed from: OR */
    private int f913OR;

    /* renamed from: OS */
    private Paint f914OS;

    /* renamed from: OT */
    private Paint f915OT;

    /* renamed from: OU */
    private RectF f916OU;

    /* renamed from: OV */
    private int f917OV;

    /* renamed from: OW */
    private float f918OW;

    /* renamed from: OX */
    private ValueAnimator f919OX;

    /* renamed from: OY */
    private int f920OY;

    /* renamed from: OZ */
    private float f921OZ;

    /* renamed from: Oq */
    private int f922Oq;

    /* renamed from: Or */
    private int f923Or;

    /* renamed from: Os */
    private int f924Os;

    /* renamed from: Ot */
    private int f925Ot;

    /* renamed from: Ou */
    private int f926Ou;

    /* renamed from: Pa */
    private SweepGradient f927Pa;

    /* renamed from: Pb */
    private Bitmap f928Pb;

    /* renamed from: Pc */
    private boolean f929Pc;

    /* renamed from: Pd */
    private final Set<InterfaceC0538a> f930Pd;

    /* renamed from: Pe */
    private float f931Pe;
    private Context mContext;

    /* renamed from: com.kingroot.common.uilib.MainExpOutCircleView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0538a {
        /* renamed from: nQ */
        void mo13276nQ();

        /* renamed from: nR */
        void mo13275nR();
    }

    public MainExpOutCircleView(Context context) {
        super(context);
        this.f912NW = MainExpCircleView.EnumC0528a.IDLE;
        this.f918OW = 25.0f;
        this.f920OY = 0;
        this.f921OZ = 263.0f;
        this.f930Pd = new HashSet();
        init(context);
    }

    public MainExpOutCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f912NW = MainExpCircleView.EnumC0528a.IDLE;
        this.f918OW = 25.0f;
        this.f920OY = 0;
        this.f921OZ = 263.0f;
        this.f930Pd = new HashSet();
        init(context);
    }

    /* renamed from: a */
    public void m13295a(InterfaceC0538a interfaceC0538a) {
        this.f930Pd.add(interfaceC0538a);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.f925Ot, this.f926Ou);
        if (this.f920OY != 0) {
            this.f929Pc = false;
            canvas.save();
            this.f914OS.setAlpha(this.f920OY);
            this.f917OV = (int) (this.f917OV + this.f918OW);
            this.f917OV %= 360;
            canvas.rotate(this.f917OV);
            canvas.drawArc(this.f916OU, 0.0f, 45.0f, false, this.f914OS);
            canvas.drawArc(this.f916OU, 90.0f, 45.0f, false, this.f914OS);
            canvas.drawArc(this.f916OU, 180.0f, 45.0f, false, this.f914OS);
            canvas.drawArc(this.f916OU, 270.0f, 45.0f, false, this.f914OS);
            canvas.restore();
        }
        if (this.f912NW == MainExpCircleView.EnumC0528a.IDLE || this.f912NW == MainExpCircleView.EnumC0528a.ROOT_ABNORMAL) {
            canvas.save();
            canvas.rotate(90.0f);
            if (this.f912NW == MainExpCircleView.EnumC0528a.ROOT_ABNORMAL) {
                this.f915OT.setColor(bgi.getColor(R.color.white_3));
                this.f915OT.setShader(null);
            } else {
                this.f915OT.setShader(this.f927Pa);
            }
            canvas.drawArc(this.f916OU, 48.0f, this.f921OZ, false, this.f915OT);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f923Or = i;
        this.f922Oq = i2;
        this.f924Os = Math.min(i, i2);
        m13284nO();
    }

    @TargetApi(11)
    private void init(Context context) {
        this.mContext = context;
        this.f914OS = new Paint(1);
        this.f914OS.setStyle(Paint.Style.STROKE);
        this.f915OT = new Paint(1);
        this.f915OT.setStyle(Paint.Style.STROKE);
        if (abd.m12839qb() >= 11 && abd.m12839qb() < 21) {
            setLayerType(1, null);
        }
        m13285gW();
    }

    /* renamed from: nO */
    private void m13284nO() {
        this.f925Ot = this.f923Or / 2;
        this.f926Ou = this.f922Oq / 2;
        this.f931Pe = (0.018f * this.f924Os) / 2.0f;
        this.f913OR = (int) (((0.95f * this.f924Os) / 2.0f) - this.f931Pe);
        this.f914OS.setShader(new SweepGradient(0.0f, 0.0f, new int[]{f906OO, f907OP, f908OQ, f906OO}, new float[]{0.0f, 0.16666667f, 3.0f * 0.16666667f, 0.16666667f * 5.0f}));
        this.f927Pa = new SweepGradient(0.0f, 0.0f, new int[]{f908OQ, f908OQ, f907OP, f906OO, f906OO}, new float[]{48.5f / 360.0f, ((87.666664f / 3.0f) + 48.5f) / 360.0f, (float) ((48.5f + (87.666664f * 1.5d)) / 360.0d), (48.5f + (87.666664f * 3.0f)) / 360.0f, 1.0f});
        this.f915OT.setShader(this.f927Pa);
        this.f916OU = new RectF(-this.f913OR, -this.f913OR, this.f913OR, this.f913OR);
        this.f914OS.setStrokeWidth(this.f931Pe);
        this.f915OT.setStrokeWidth(this.f931Pe);
        if (this.f929Pc) {
            acs.m12655c(this.f928Pb);
            this.f928Pb = m13283nP();
        }
    }

    /* renamed from: a */
    public void m13296a(MainExpCircleView.EnumC0528a enumC0528a, AnimatorListenerAdapter animatorListenerAdapter) {
        this.f912NW = enumC0528a;
        if (this.f912NW == MainExpCircleView.EnumC0528a.IDLE) {
            if (animatorListenerAdapter != null) {
                this.f919OX.addListener(animatorListenerAdapter);
            }
            this.f919OX.start();
            this.f910CB.cancel();
        } else if (this.f912NW == MainExpCircleView.EnumC0528a.RUNNING) {
            this.f920OY = 255;
            this.f909AB.start();
            this.f910CB.start();
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    /* renamed from: gD */
    public void m13286gD() {
        m13296a(MainExpCircleView.EnumC0528a.RUNNING, (AnimatorListenerAdapter) null);
    }

    /* renamed from: b */
    public void m13289b(AnimatorListenerAdapter animatorListenerAdapter) {
        m13296a(MainExpCircleView.EnumC0528a.IDLE, animatorListenerAdapter);
    }

    /* renamed from: gW */
    private void m13285gW() {
        this.f909AB = ValueAnimator.ofInt(0, 360);
        this.f909AB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.MainExpOutCircleView.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewCompat.postInvalidateOnAnimation(MainExpOutCircleView.this);
            }
        });
        this.f909AB.setDuration(1000L);
        this.f909AB.setInterpolator(new LinearInterpolator());
        this.f909AB.setRepeatMode(-1);
        this.f909AB.setRepeatCount(-1);
        this.f909AB.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.MainExpOutCircleView.2
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
            }

            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                for (InterfaceC0538a interfaceC0538a : MainExpOutCircleView.this.f930Pd) {
                    interfaceC0538a.mo13276nQ();
                }
            }
        });
        this.f910CB = ValueAnimator.ofFloat(0.0f, 25.0f);
        this.f910CB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.MainExpOutCircleView.3
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                MainExpOutCircleView.this.f918OW = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewCompat.postInvalidateOnAnimation(MainExpOutCircleView.this);
            }
        });
        this.f910CB.setDuration(900L);
        this.f910CB.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.BACK_IN_OUT));
        this.f911CC = ValueAnimator.ofFloat(25.0f, 0.0f);
        this.f911CC.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.MainExpOutCircleView.4
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                MainExpOutCircleView.this.f918OW = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ViewCompat.postInvalidateOnAnimation(MainExpOutCircleView.this);
            }
        });
        this.f911CC.setDuration(500L);
        this.f911CC.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.QUART_IN_OUT));
        this.f919OX = ValueAnimator.ofInt(255, 0);
        this.f919OX.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.MainExpOutCircleView.5
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                MainExpOutCircleView.this.f920OY = num.intValue();
                MainExpOutCircleView.this.f921OZ = ((255 - num.intValue()) / 255.0f) * 263.0f;
                ViewCompat.postInvalidateOnAnimation(MainExpOutCircleView.this);
            }
        });
        this.f919OX.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.MainExpOutCircleView.6
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (MainExpOutCircleView.this.f909AB.isRunning()) {
                    MainExpOutCircleView.this.f909AB.end();
                }
                MainExpOutCircleView.this.f929Pc = true;
                for (InterfaceC0538a interfaceC0538a : MainExpOutCircleView.this.f930Pd) {
                    interfaceC0538a.mo13275nR();
                }
            }
        });
        this.f919OX.setDuration(800L);
        this.f919OX.setInterpolator(new LinearInterpolator());
    }

    @UiThread
    /* renamed from: a */
    public int m13290a(float[] fArr) {
        if (this.f929Pc) {
            if (this.f928Pb == null) {
                this.f928Pb = m13283nP();
            }
            if (this.f928Pb == null) {
                return 0;
            }
            try {
                return this.f928Pb.getPixel((int) fArr[0], (int) fArr[1]);
            } catch (IllegalArgumentException e) {
                CrashReport.handleCatchException(new Thread(), e, e.getMessage(), String.valueOf("mIdleOuterCircleBitmap H " + this.f928Pb.getHeight() + " W " + this.f928Pb.getWidth() + " point X " + fArr[0] + " point Y " + fArr[1]).getBytes());
                return 0;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public float[] m13297a(float f, float[] fArr) {
        double cos = Math.cos(f);
        double sin = Math.sin(f);
        fArr[0] = (float) ((cos * this.f913OR) + this.f925Ot);
        fArr[1] = (float) ((sin * this.f913OR) + this.f926Ou);
        return fArr;
    }

    /* renamed from: nP */
    private Bitmap m13283nP() {
        try {
            if (getLayoutParams().height <= 0 || getLayoutParams().width <= 0) {
                return null;
            }
            Bitmap createBitmap = Bitmap.createBitmap(getLayoutParams().width, getLayoutParams().height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            layout(getLeft(), getTop(), getRight(), getBottom());
            draw(canvas);
            return createBitmap;
        } catch (Throwable th) {
            return null;
        }
    }
}
