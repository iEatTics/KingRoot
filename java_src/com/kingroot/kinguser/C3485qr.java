package com.kingroot.kinguser;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.annotation.UiThread;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import com.kingroot.kinguses.R;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.qr */
/* loaded from: classes.dex */
public class C3485qr extends Drawable implements Animatable {

    /* renamed from: EA */
    private InterfaceC3488b f3400EA;

    /* renamed from: EB */
    private int f3401EB;

    /* renamed from: EC */
    private float f3402EC;

    /* renamed from: ED */
    private float f3403ED;

    /* renamed from: EE */
    private int f3404EE;

    /* renamed from: EF */
    private int f3405EF;

    /* renamed from: EG */
    private float f3406EG;

    /* renamed from: EH */
    private float f3407EH;

    /* renamed from: EI */
    private boolean f3408EI;

    /* renamed from: EJ */
    private boolean f3409EJ;

    /* renamed from: EK */
    private boolean f3410EK;

    /* renamed from: EL */
    private boolean f3411EL;

    /* renamed from: EM */
    private int f3412EM;

    /* renamed from: EN */
    private int f3413EN;

    /* renamed from: EO */
    private Drawable f3414EO;

    /* renamed from: EP */
    private boolean f3415EP;

    /* renamed from: EQ */
    private int[] f3416EQ;

    /* renamed from: ER */
    private float[] f3417ER;

    /* renamed from: ES */
    private final Runnable f3418ES;

    /* renamed from: Eh */
    private float f3419Eh;

    /* renamed from: Ez */
    private final Rect f3420Ez;
    private Rect mBounds;
    private int[] mColors;
    private boolean mFinishing;
    private Interpolator mInterpolator;
    private Paint mPaint;
    private boolean mRunning;
    private float mSpeed;
    private float mStrokeWidth;

    /* renamed from: com.kingroot.kinguser.qr$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3488b {
        void onStart();

        void onStop();
    }

    private C3485qr(Interpolator interpolator, int i, int i2, int[] iArr, float f, float f2, float f3, float f4, boolean z, boolean z2, InterfaceC3488b interfaceC3488b, boolean z3, Drawable drawable, boolean z4) {
        this.f3420Ez = new Rect();
        this.f3418ES = new Runnable() { // from class: com.kingroot.kinguser.qr.1
            @Override // java.lang.Runnable
            public void run() {
                if (C3485qr.this.isFinishing()) {
                    C3485qr.this.f3403ED += C3485qr.this.f3407EH * 0.01f;
                    C3485qr.this.f3402EC += C3485qr.this.f3407EH * 0.01f;
                    if (C3485qr.this.f3403ED >= 1.0f) {
                        C3485qr.this.stop();
                    }
                } else if (C3485qr.this.m2552hx()) {
                    C3485qr.this.f3402EC += C3485qr.this.f3406EG * 0.01f;
                } else {
                    C3485qr.this.f3402EC += C3485qr.this.mSpeed * 0.01f;
                }
                if (C3485qr.this.f3402EC >= C3485qr.this.f3419Eh) {
                    C3485qr.this.f3409EJ = true;
                    C3485qr.this.f3402EC -= C3485qr.this.f3419Eh;
                }
                if (C3485qr.this.isRunning()) {
                    C3485qr.this.scheduleSelf(C3485qr.this.f3418ES, SystemClock.uptimeMillis() + 16);
                }
                C3485qr.this.invalidateSelf();
            }
        };
        this.mRunning = false;
        this.mInterpolator = interpolator;
        this.f3405EF = i;
        this.f3412EM = 0;
        this.f3413EN = this.f3405EF;
        this.f3404EE = i2;
        this.mSpeed = f2;
        this.f3406EG = f3;
        this.f3407EH = f4;
        this.f3408EI = z;
        this.mColors = iArr;
        this.f3401EB = 0;
        this.f3410EK = z2;
        this.mFinishing = false;
        this.f3414EO = drawable;
        this.mStrokeWidth = f;
        this.f3419Eh = 1.0f / this.f3405EF;
        this.mPaint = new Paint();
        this.mPaint.setStrokeWidth(f);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setDither(false);
        this.mPaint.setAntiAlias(false);
        this.f3411EL = z3;
        this.f3400EA = interfaceC3488b;
        this.f3415EP = z4;
        m2554hv();
    }

    @UiThread
    public void setInterpolator(Interpolator interpolator) {
        if (interpolator == null) {
            throw new IllegalArgumentException("Interpolator cannot be null");
        }
        this.mInterpolator = interpolator;
        invalidateSelf();
    }

    @UiThread
    public void setColors(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("Colors cannot be null or empty");
        }
        this.f3401EB = 0;
        this.mColors = iArr;
        m2554hv();
        invalidateSelf();
    }

    @UiThread
    public void setColor(int i) {
        setColors(new int[]{i});
    }

    @UiThread
    public void setSpeed(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Speed must be >= 0");
        }
        this.mSpeed = f;
        invalidateSelf();
    }

    @UiThread
    /* renamed from: g */
    public void m2557g(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("SpeedProgressiveStart must be >= 0");
        }
        this.f3406EG = f;
        invalidateSelf();
    }

    @UiThread
    /* renamed from: h */
    public void m2555h(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("SpeedProgressiveStop must be >= 0");
        }
        this.f3407EH = f;
        invalidateSelf();
    }

    @UiThread
    /* renamed from: aG */
    public void m2571aG(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("SectionsCount must be > 0");
        }
        this.f3405EF = i;
        this.f3419Eh = 1.0f / this.f3405EF;
        this.f3402EC %= this.f3419Eh;
        m2554hv();
        invalidateSelf();
    }

    @UiThread
    /* renamed from: aH */
    public void m2570aH(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("SeparatorLength must be >= 0");
        }
        this.f3404EE = i;
        invalidateSelf();
    }

    @UiThread
    public void setStrokeWidth(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("The strokeWidth must be >= 0");
        }
        this.mPaint.setStrokeWidth(f);
        invalidateSelf();
    }

    @UiThread
    /* renamed from: x */
    public void m2551x(boolean z) {
        if (this.f3408EI != z) {
            this.f3408EI = z;
            invalidateSelf();
        }
    }

    @UiThread
    /* renamed from: y */
    public void m2550y(boolean z) {
        if (this.f3410EK != z) {
            this.f3410EK = z;
            invalidateSelf();
        }
    }

    @UiThread
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f3414EO != drawable) {
            this.f3414EO = drawable;
            invalidateSelf();
        }
    }

    @UiThread
    public void setProgressiveStartActivated(boolean z) {
        this.f3411EL = z;
    }

    @UiThread
    /* renamed from: z */
    public void m2549z(boolean z) {
        if (this.f3415EP != z) {
            this.f3415EP = z;
            m2554hv();
            invalidateSelf();
        }
    }

    /* renamed from: hv */
    private void m2554hv() {
        if (this.f3415EP) {
            this.f3416EQ = new int[this.f3405EF + 2];
            this.f3417ER = new float[this.f3405EF + 2];
            return;
        }
        this.mPaint.setShader(null);
        this.f3416EQ = null;
        this.f3417ER = null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mBounds = getBounds();
        canvas.clipRect(this.mBounds);
        if (this.f3409EJ) {
            this.f3401EB = m2568aJ(this.f3401EB);
            this.f3409EJ = false;
            if (isFinishing()) {
                this.f3412EM++;
                if (this.f3412EM > this.f3405EF) {
                    stop();
                    return;
                }
            }
            if (this.f3413EN < this.f3405EF) {
                this.f3413EN++;
            }
        }
        if (this.f3415EP) {
            m2553hw();
        }
        m2559f(canvas);
    }

    @UiThread
    /* renamed from: hw */
    private void m2553hw() {
        float f;
        float f2;
        float f3 = 1.0f / this.f3405EF;
        int i = this.f3401EB;
        this.f3417ER[0] = 0.0f;
        this.f3417ER[this.f3417ER.length - 1] = 1.0f;
        int i2 = i - 1;
        if (i2 < 0) {
            i2 += this.mColors.length;
        }
        this.f3416EQ[0] = this.mColors[i2];
        int i3 = i;
        for (int i4 = 0; i4 < this.f3405EF; i4++) {
            this.f3417ER[i4 + 1] = this.mInterpolator.getInterpolation((i4 * f3) + this.f3402EC);
            this.f3416EQ[i4 + 1] = this.mColors[i3];
            i3 = (i3 + 1) % this.mColors.length;
        }
        this.f3416EQ[this.f3416EQ.length - 1] = this.mColors[i3];
        if (this.f3408EI) {
            f = this.f3410EK ? Math.abs(this.mBounds.left - this.mBounds.right) / 2 : this.mBounds.left;
        } else {
            f = this.mBounds.left;
        }
        if (this.f3410EK) {
            f2 = this.f3408EI ? this.mBounds.left : Math.abs(this.mBounds.left - this.mBounds.right) / 2;
        } else {
            f2 = this.mBounds.right;
        }
        this.mPaint.setShader(new LinearGradient(f, this.mBounds.centerY() - (this.mStrokeWidth / 2.0f), f2, (this.mStrokeWidth / 2.0f) + this.mBounds.centerY(), this.f3416EQ, this.f3417ER, this.f3410EK ? Shader.TileMode.MIRROR : Shader.TileMode.CLAMP));
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x012f  */
    @UiThread
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m2559f(Canvas canvas) {
        float f;
        float f2;
        if (this.f3408EI) {
            canvas.translate(this.mBounds.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        float f3 = 0.0f;
        int width = this.mBounds.width();
        if (this.f3410EK) {
            width /= 2;
        }
        int i = this.f3404EE + width + this.f3405EF;
        int centerY = this.mBounds.centerY();
        float f4 = 1.0f / this.f3405EF;
        float f5 = 0.0f;
        int i2 = this.f3401EB;
        if (this.f3412EM == this.f3413EN && this.f3413EN == this.f3405EF) {
            f5 = canvas.getWidth();
        }
        int i3 = 0;
        float f6 = 0.0f;
        float f7 = f5;
        while (true) {
            float f8 = f3;
            if (i3 <= this.f3413EN) {
                float f9 = (i3 * f4) + this.f3402EC;
                float max = Math.max(0.0f, f9 - f4);
                float abs = (int) (Math.abs(this.mInterpolator.getInterpolation(max) - this.mInterpolator.getInterpolation(Math.min(f9, 1.0f))) * i);
                if (abs + max < i) {
                    f = Math.min(abs, this.f3404EE);
                } else {
                    f = 0.0f;
                }
                float f10 = f8 + (abs > f ? abs - f : 0.0f);
                if (f10 > f8 && i3 >= this.f3412EM) {
                    float max2 = Math.max(this.mInterpolator.getInterpolation(Math.min(this.f3403ED, 1.0f)) * i, Math.min(width, f8));
                    m2576a(canvas, width, max2, centerY, Math.min(width, f10), centerY, i2);
                    if (i3 == this.f3412EM) {
                        f2 = max2 - this.f3404EE;
                        float f11 = i3 != this.f3413EN ? f8 + abs : f6;
                        f3 = f10 + f;
                        i2 = m2569aI(i2);
                        i3++;
                        f6 = f11;
                        f7 = f2;
                    }
                }
                f2 = f7;
                if (i3 != this.f3413EN) {
                }
                f3 = f10 + f;
                i2 = m2569aI(i2);
                i3++;
                f6 = f11;
                f7 = f2;
            } else {
                m2577a(canvas, f7, f6);
                return;
            }
        }
    }

    @UiThread
    /* renamed from: a */
    private void m2576a(Canvas canvas, int i, float f, float f2, float f3, float f4, int i2) {
        this.mPaint.setColor(this.mColors[i2]);
        if (!this.f3410EK) {
            canvas.drawLine(f, f2, f3, f4, this.mPaint);
        } else if (this.f3408EI) {
            canvas.drawLine(i + f, f2, i + f3, f4, this.mPaint);
            canvas.drawLine(i - f, f2, i - f3, f4, this.mPaint);
        } else {
            canvas.drawLine(f, f2, f3, f4, this.mPaint);
            canvas.drawLine((i * 2) - f, f2, (i * 2) - f3, f4, this.mPaint);
        }
    }

    @UiThread
    /* renamed from: a */
    private void m2577a(Canvas canvas, float f, float f2) {
        if (this.f3414EO != null) {
            this.f3420Ez.top = (int) ((canvas.getHeight() - this.mStrokeWidth) / 2.0f);
            this.f3420Ez.bottom = (int) ((canvas.getHeight() + this.mStrokeWidth) / 2.0f);
            this.f3420Ez.left = 0;
            this.f3420Ez.right = this.f3410EK ? canvas.getWidth() / 2 : canvas.getWidth();
            this.f3414EO.setBounds(this.f3420Ez);
            if (!isRunning()) {
                if (this.f3410EK) {
                    canvas.save();
                    canvas.translate(canvas.getWidth() / 2, 0.0f);
                    m2565b(canvas, 0.0f, this.f3420Ez.width());
                    canvas.scale(-1.0f, 1.0f);
                    m2565b(canvas, 0.0f, this.f3420Ez.width());
                    canvas.restore();
                    return;
                }
                m2565b(canvas, 0.0f, this.f3420Ez.width());
            } else if (isFinishing() || m2552hx()) {
                if (f <= f2) {
                    f2 = f;
                    f = f2;
                }
                if (f2 > 0.0f) {
                    if (this.f3410EK) {
                        canvas.save();
                        canvas.translate(canvas.getWidth() / 2, 0.0f);
                        if (this.f3408EI) {
                            m2565b(canvas, 0.0f, f2);
                            canvas.scale(-1.0f, 1.0f);
                            m2565b(canvas, 0.0f, f2);
                        } else {
                            m2565b(canvas, (canvas.getWidth() / 2) - f2, canvas.getWidth() / 2);
                            canvas.scale(-1.0f, 1.0f);
                            m2565b(canvas, (canvas.getWidth() / 2) - f2, canvas.getWidth() / 2);
                        }
                        canvas.restore();
                    } else {
                        m2565b(canvas, 0.0f, f2);
                    }
                }
                if (f <= canvas.getWidth()) {
                    if (this.f3410EK) {
                        canvas.save();
                        canvas.translate(canvas.getWidth() / 2, 0.0f);
                        if (this.f3408EI) {
                            m2565b(canvas, f, canvas.getWidth() / 2);
                            canvas.scale(-1.0f, 1.0f);
                            m2565b(canvas, f, canvas.getWidth() / 2);
                        } else {
                            m2565b(canvas, 0.0f, (canvas.getWidth() / 2) - f);
                            canvas.scale(-1.0f, 1.0f);
                            m2565b(canvas, 0.0f, (canvas.getWidth() / 2) - f);
                        }
                        canvas.restore();
                        return;
                    }
                    m2565b(canvas, f, canvas.getWidth());
                }
            }
        }
    }

    @UiThread
    /* renamed from: b */
    private void m2565b(Canvas canvas, float f, float f2) {
        int save = canvas.save();
        canvas.clipRect(f, (int) ((canvas.getHeight() - this.mStrokeWidth) / 2.0f), f2, (int) ((canvas.getHeight() + this.mStrokeWidth) / 2.0f));
        this.f3414EO.draw(canvas);
        canvas.restoreToCount(save);
    }

    @UiThread
    /* renamed from: aI */
    private int m2569aI(int i) {
        int i2 = i + 1;
        if (i2 >= this.mColors.length) {
            return 0;
        }
        return i2;
    }

    @UiThread
    /* renamed from: aJ */
    private int m2568aJ(int i) {
        int i2 = i - 1;
        return i2 < 0 ? this.mColors.length - 1 : i2;
    }

    @UiThread
    /* renamed from: aK */
    private void m2567aK(int i) {
        m2566aL(i);
        this.f3402EC = 0.0f;
        this.mFinishing = false;
        this.f3403ED = 0.0f;
        this.f3412EM = 0;
        this.f3413EN = 0;
        this.f3401EB = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (this.f3411EL) {
            m2567aK(0);
        }
        if (!isRunning()) {
            if (this.f3400EA != null) {
                this.f3400EA.onStart();
            }
            scheduleSelf(this.f3418ES, SystemClock.uptimeMillis() + 16);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            if (this.f3400EA != null) {
                this.f3400EA.onStop();
            }
            this.mRunning = false;
            unscheduleSelf(this.f3418ES);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.mRunning = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    /* renamed from: hx */
    public boolean m2552hx() {
        return this.f3413EN < this.f3405EF;
    }

    public boolean isFinishing() {
        return this.mFinishing;
    }

    /* renamed from: a */
    public void m2575a(InterfaceC3488b interfaceC3488b) {
        this.f3400EA = interfaceC3488b;
    }

    /* renamed from: aL */
    private void m2566aL(int i) {
        if (i < 0 || i >= this.mColors.length) {
            throw new IllegalArgumentException(String.format(Locale.US, "Index %d not valid", Integer.valueOf(i)));
        }
    }

    /* renamed from: com.kingroot.kinguser.qr$a */
    /* loaded from: classes.dex */
    public static class C3487a {

        /* renamed from: EF */
        private int f3422EF;

        /* renamed from: EG */
        private float f3423EG;

        /* renamed from: EH */
        private float f3424EH;

        /* renamed from: EI */
        private boolean f3425EI;

        /* renamed from: EK */
        private boolean f3426EK;

        /* renamed from: EL */
        private boolean f3427EL;

        /* renamed from: EU */
        private int f3428EU;

        /* renamed from: EV */
        private boolean f3429EV;

        /* renamed from: EW */
        private boolean f3430EW;

        /* renamed from: EX */
        private Drawable f3431EX;

        /* renamed from: EY */
        private InterfaceC3488b f3432EY;
        private int[] mColors;
        private Interpolator mInterpolator;
        private float mSpeed;
        private float mStrokeWidth;

        public C3487a(Context context) {
            this(context, false);
        }

        public C3487a(Context context, boolean z) {
            m2539b(context, z);
        }

        /* renamed from: hy */
        public C3485qr m2537hy() {
            if (this.f3429EV) {
                this.f3431EX = C3484qq.m2582a(this.mColors, this.mStrokeWidth);
            }
            return new C3485qr(this.mInterpolator, this.f3422EF, this.f3428EU, this.mColors, this.mStrokeWidth, this.mSpeed, this.f3423EG, this.f3424EH, this.f3425EI, this.f3426EK, this.f3432EY, this.f3427EL, this.f3431EX, this.f3430EW);
        }

        /* renamed from: b */
        private void m2539b(Context context, boolean z) {
            Resources resources = context.getResources();
            this.mInterpolator = new AccelerateInterpolator();
            if (!z) {
                this.f3422EF = resources.getInteger(R.integer.spb_default_sections_count);
                this.mSpeed = Float.parseFloat(resources.getString(R.string.spb_default_speed));
                this.f3425EI = resources.getBoolean(R.bool.spb_default_reversed);
                this.f3427EL = resources.getBoolean(R.bool.spb_default_progressiveStart_activated);
                this.mColors = new int[]{resources.getColor(R.color.spb_default_color)};
                this.f3428EU = resources.getDimensionPixelSize(R.dimen.spb_default_stroke_separator_length);
                this.mStrokeWidth = resources.getDimensionPixelOffset(R.dimen.spb_default_stroke_width);
            } else {
                this.f3422EF = 4;
                this.mSpeed = 1.0f;
                this.f3425EI = false;
                this.f3427EL = false;
                this.mColors = new int[]{-13388315};
                this.f3428EU = 4;
                this.mStrokeWidth = 4.0f;
            }
            this.f3423EG = this.mSpeed;
            this.f3424EH = this.mSpeed;
            this.f3430EW = false;
        }

        /* renamed from: a */
        public C3487a m2543a(Interpolator interpolator) {
            C3484qq.m2580c(interpolator, "Interpolator");
            this.mInterpolator = interpolator;
            return this;
        }

        /* renamed from: aM */
        public C3487a m2542aM(int i) {
            C3484qq.m2578j(i, "Sections count");
            this.f3422EF = i;
            return this;
        }

        /* renamed from: aN */
        public C3487a m2541aN(int i) {
            C3484qq.m2581b(i, "Separator length");
            this.f3428EU = i;
            return this;
        }

        /* renamed from: aO */
        public C3487a m2540aO(int i) {
            this.mColors = new int[]{i};
            return this;
        }

        /* renamed from: b */
        public C3487a m2538b(int[] iArr) {
            C3484qq.m2583a(iArr);
            this.mColors = iArr;
            return this;
        }

        /* renamed from: i */
        public C3487a m2535i(float f) {
            C3484qq.m2581b(f, "Width");
            this.mStrokeWidth = f;
            return this;
        }

        /* renamed from: j */
        public C3487a m2534j(float f) {
            C3484qq.m2579f(f);
            this.mSpeed = f;
            return this;
        }

        /* renamed from: k */
        public C3487a m2533k(float f) {
            C3484qq.m2579f(f);
            this.f3423EG = f;
            return this;
        }

        /* renamed from: l */
        public C3487a m2532l(float f) {
            C3484qq.m2579f(f);
            this.f3424EH = f;
            return this;
        }

        /* renamed from: A */
        public C3487a m2548A(boolean z) {
            this.f3425EI = z;
            return this;
        }

        /* renamed from: B */
        public C3487a m2547B(boolean z) {
            this.f3426EK = z;
            return this;
        }

        /* renamed from: C */
        public C3487a m2546C(boolean z) {
            this.f3427EL = z;
            return this;
        }

        /* renamed from: a */
        public C3487a m2544a(Drawable drawable) {
            this.f3431EX = drawable;
            return this;
        }

        /* renamed from: hz */
        public C3487a m2536hz() {
            this.f3429EV = true;
            return this;
        }

        /* renamed from: D */
        public C3487a m2545D(boolean z) {
            this.f3430EW = z;
            return this;
        }
    }
}
