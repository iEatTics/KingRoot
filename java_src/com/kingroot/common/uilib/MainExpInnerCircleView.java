package com.kingroot.common.uilib;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.annotation.IntRange;
import android.support.annotation.UiThread;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.common.uilib.MainExpCircleView;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.abg;
import com.kingroot.kinguser.acs;
import com.kingroot.kinguser.bgi;
import com.kingroot.kinguser.blg;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class MainExpInnerCircleView extends View {

    /* renamed from: Ol */
    private static final int f872Ol = bgi.getColor(R.color.main_header_view_inner_circle_bg);

    /* renamed from: Om */
    private static final int f873Om = bgi.getColor(33, R.color.main_header_view_inner_circle_shadow);

    /* renamed from: On */
    private static final int f874On = bgi.getColor(R.color.main_title_text);

    /* renamed from: Oo */
    private static final int f875Oo = bgi.getColor(R.color.sub_title_text);

    /* renamed from: Op */
    private static final int f876Op = bgi.getColor(R.color.white_3);

    /* renamed from: NS */
    private MainExpOuterPointerView f877NS;

    /* renamed from: NV */
    private String f878NV;

    /* renamed from: NW */
    private volatile MainExpCircleView.EnumC0528a f879NW;

    /* renamed from: OA */
    private Paint f880OA;

    /* renamed from: OB */
    private Paint f881OB;

    /* renamed from: OC */
    private Paint f882OC;

    /* renamed from: OD */
    private String f883OD;

    /* renamed from: OE */
    private ValueAnimator f884OE;

    /* renamed from: OF */
    private Bitmap f885OF;

    /* renamed from: OG */
    private int f886OG;

    /* renamed from: OH */
    private float f887OH;

    /* renamed from: OI */
    private float f888OI;

    /* renamed from: OJ */
    private float f889OJ;

    /* renamed from: Oq */
    private int f890Oq;

    /* renamed from: Or */
    private int f891Or;

    /* renamed from: Os */
    private int f892Os;

    /* renamed from: Ot */
    private int f893Ot;

    /* renamed from: Ou */
    private int f894Ou;

    /* renamed from: Ov */
    private int f895Ov;

    /* renamed from: Ow */
    private int f896Ow;

    /* renamed from: Ox */
    private int f897Ox;

    /* renamed from: Oy */
    private Paint f898Oy;

    /* renamed from: Oz */
    private Paint f899Oz;

    /* renamed from: com.kingroot.common.uilib.MainExpInnerCircleView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0531a {
        /* renamed from: bL */
        void mo9651bL(int i);

        /* renamed from: y */
        void mo9650y(int i, int i2);
    }

    public MainExpInnerCircleView(Context context) {
        super(context);
        this.f882OC = null;
        this.f883OD = "100";
        this.f878NV = "";
        this.f879NW = MainExpCircleView.EnumC0528a.IDLE;
        init();
    }

    public MainExpInnerCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f882OC = null;
        this.f883OD = "100";
        this.f878NV = "";
        this.f879NW = MainExpCircleView.EnumC0528a.IDLE;
        init();
    }

    public void setState(MainExpCircleView.EnumC0528a enumC0528a) {
        this.f879NW = enumC0528a;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(this.f893Ot, this.f894Ou);
        canvas.drawCircle(0.0f, 0.0f, this.f895Ov, this.f898Oy);
        if (this.f879NW == MainExpCircleView.EnumC0528a.ROOT_ABNORMAL) {
            m13301g(canvas);
        } else {
            Rect rect = new Rect();
            this.f899Oz.getTextBounds(this.f883OD, 0, this.f883OD.length(), rect);
            canvas.drawText(this.f883OD, 0.0f, 0.0f - rect.exactCenterY(), this.f899Oz);
            this.f880OA.getTextBounds(this.f878NV, 0, this.f878NV.length(), rect);
            canvas.drawText(this.f878NV, 0.0f, (-this.f895Ov) / 2, this.f880OA);
            m13300h(canvas);
        }
        canvas.restore();
    }

    /* renamed from: g */
    private void m13301g(Canvas canvas) {
        if (this.f885OF == null) {
            m13299nN();
        }
        canvas.drawBitmap(this.f885OF, 0 - (this.f885OF.getWidth() / 2), 0 - (this.f885OF.getHeight() / 2), (Paint) null);
    }

    /* renamed from: nN */
    private void m13299nN() {
        Bitmap copy = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.main_page_root_abnormal).copy(Bitmap.Config.ARGB_8888, true);
        this.f885OF = Bitmap.createScaledBitmap(copy, this.f886OG, this.f886OG, true);
        acs.m12655c(copy);
    }

    /* renamed from: h */
    private void m13300h(Canvas canvas) {
        float f;
        float f2;
        float f3;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 53) {
                float f4 = (i2 * 0.08726646f) + 2.443461f;
                double cos = Math.cos(f4);
                double sin = Math.sin(f4);
                if (i2 == 0 || i2 == 26 || i2 == 52) {
                    f = this.f888OI * ((float) cos);
                    f2 = (float) sin;
                    f3 = this.f888OI;
                } else {
                    f = this.f887OH * ((float) cos);
                    f2 = (float) sin;
                    f3 = this.f887OH;
                }
                canvas.drawLine(f, f3 * f2, this.f889OJ * ((float) cos), this.f889OJ * ((float) sin), this.f882OC);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @IntRange(from = 0, m13740to = 52)
    private int getScoreIndex() {
        return m13303bJ(Integer.valueOf(this.f883OD).intValue());
    }

    /* renamed from: bJ */
    private int m13303bJ(int i) {
        return (int) (i / 1.9230769f);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f891Or = i;
        this.f890Oq = i2;
        this.f892Os = Math.min(i, i2);
        m13298nO();
    }

    @TargetApi(11)
    private void init() {
        if (abd.m12839qb() >= 11) {
            setLayerType(1, null);
        }
        this.f898Oy = new Paint(1);
        this.f898Oy.setStyle(Paint.Style.FILL);
        this.f898Oy.setColor(f872Ol);
        this.f898Oy.setDither(true);
        this.f898Oy.setFilterBitmap(true);
        this.f898Oy.setShadowLayer(abg.m12835r(3.0f), abg.m12835r(0.0f), abg.m12835r(0.0f), f873Om);
        this.f899Oz = new Paint(1);
        this.f899Oz.setStyle(Paint.Style.FILL);
        this.f899Oz.setColor(f874On);
        this.f899Oz.setTextAlign(Paint.Align.CENTER);
        this.f899Oz.setTypeface(blg.m6503jH(0));
        this.f880OA = new Paint(1);
        this.f880OA.setStyle(Paint.Style.FILL);
        this.f880OA.setColor(f875Oo);
        this.f880OA.setTextAlign(Paint.Align.CENTER);
        this.f881OB = new Paint(1);
        this.f881OB.setStyle(Paint.Style.FILL);
        this.f882OC = new Paint(1);
        this.f882OC.setColor(f876Op);
        this.f882OC.setStyle(Paint.Style.FILL);
        this.f882OC.setStrokeWidth(abg.m12835r(0.5f));
    }

    /* renamed from: nO */
    private void m13298nO() {
        this.f893Ot = this.f891Or / 2;
        this.f894Ou = this.f890Oq / 2;
        this.f886OG = (int) (0.45f * this.f892Os);
        this.f895Ov = (int) ((0.837f * this.f892Os) / 2.0f);
        this.f896Ow = (int) ((0.747f * this.f892Os) / 2.0f);
        this.f897Ox = (int) ((0.089999996f * this.f892Os) / 2.0f);
        this.f899Oz.setTextSize(this.f896Ow);
        this.f880OA.setTextSize(this.f897Ox);
        this.f887OH = (float) (0.915d * this.f895Ov);
        this.f888OI = (float) (0.845d * this.f895Ov);
        this.f889OJ = (float) (0.96d * this.f895Ov);
    }

    @UiThread
    public void setExp(@IntRange(from = 0, m13740to = 100) int i) {
        this.f883OD = String.valueOf(i);
        invalidate();
    }

    @UiThread
    public void setTitleText(String str) {
        this.f878NV = str;
        invalidate();
    }

    /* renamed from: a */
    public void m13304a(final int i, final int i2, final InterfaceC0531a interfaceC0531a) {
        if (this.f884OE == null) {
            this.f884OE = ValueAnimator.ofInt(i, i2);
            this.f884OE.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.common.uilib.MainExpInnerCircleView.1
                @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    MainExpInnerCircleView.this.setExp(intValue);
                    if (interfaceC0531a != null) {
                        interfaceC0531a.mo9651bL(intValue);
                    }
                }
            });
            this.f884OE.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.common.uilib.MainExpInnerCircleView.2
                @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (interfaceC0531a != null) {
                        interfaceC0531a.mo9650y(i, i2);
                    }
                }
            });
            this.f884OE.setInterpolator(new AccelerateDecelerateInterpolator());
        } else {
            this.f884OE.cancel();
            this.f884OE.setIntValues(i, i2);
        }
        this.f884OE.setDuration(200 + (Math.abs((i2 * 20) - (i * 10)) / 2));
        this.f884OE.start();
        if (this.f877NS != null) {
            this.f877NS.m13279b(m13302bK(i), m13302bK(i2));
        }
    }

    public float getStartAngle() {
        return 2.443461f;
    }

    public float getPresentAngle() {
        return (getScoreIndex() * 0.08726646f) + 2.443461f;
    }

    /* renamed from: bK */
    public float m13302bK(int i) {
        return (m13303bJ(i) * 0.08726646f) + 2.443461f;
    }

    public void setOutPointerView(MainExpOuterPointerView mainExpOuterPointerView) {
        this.f877NS = mainExpOuterPointerView;
    }
}
