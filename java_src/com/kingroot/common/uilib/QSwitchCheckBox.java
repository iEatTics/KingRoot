package com.kingroot.common.uilib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.abg;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class QSwitchCheckBox extends QCompoundButton {
    private static final String TAG = QSwitchCheckBox.class.getSimpleName();

    /* renamed from: Cm */
    private float f1021Cm;

    /* renamed from: QA */
    private Drawable f1022QA;

    /* renamed from: QB */
    private int f1023QB;

    /* renamed from: QC */
    private int f1024QC;

    /* renamed from: QD */
    private int f1025QD;

    /* renamed from: QE */
    private float f1026QE;

    /* renamed from: QF */
    private float f1027QF;

    /* renamed from: QG */
    private float f1028QG;

    /* renamed from: QH */
    private int f1029QH;

    /* renamed from: QI */
    private int f1030QI;

    /* renamed from: QJ */
    private float f1031QJ;

    /* renamed from: QK */
    private float f1032QK;

    /* renamed from: QL */
    private float f1033QL;

    /* renamed from: QM */
    private RectF f1034QM;

    /* renamed from: QN */
    private RectF f1035QN;

    /* renamed from: QO */
    private Paint f1036QO;

    /* renamed from: QP */
    private int f1037QP;

    /* renamed from: QQ */
    private float f1038QQ;

    /* renamed from: QR */
    private float f1039QR;

    /* renamed from: QS */
    private float f1040QS;

    /* renamed from: QT */
    private float f1041QT;

    /* renamed from: QU */
    private boolean f1042QU;

    /* renamed from: QV */
    private int f1043QV;

    /* renamed from: QW */
    private InterfaceC0553a f1044QW;

    /* renamed from: Qx */
    private float f1045Qx;

    /* renamed from: Qy */
    private int f1046Qy;

    /* renamed from: Qz */
    private C0554b f1047Qz;
    private Handler mHandler;
    private int mMinFlingVelocity;
    private View.OnClickListener mOnClickListener;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.common.uilib.QSwitchCheckBox$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0553a {
        void onAnimationEnd();
    }

    public QSwitchCheckBox(Context context, int i) {
        super(context);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.f1042QU = false;
        this.f1043QV = -1;
        this.mHandler = new Handler() { // from class: com.kingroot.common.uilib.QSwitchCheckBox.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                QSwitchCheckBox.this.invalidate();
            }
        };
        C0554b c0554b = new C0554b();
        c0554b.f1056Re = i;
        m13246a(context, c0554b);
    }

    public QSwitchCheckBox(Context context, C0554b c0554b) {
        super(context);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.f1042QU = false;
        this.f1043QV = -1;
        this.mHandler = new Handler() { // from class: com.kingroot.common.uilib.QSwitchCheckBox.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                QSwitchCheckBox.this.invalidate();
            }
        };
        m13246a(context, c0554b);
    }

    public QSwitchCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.f1042QU = false;
        this.f1043QV = -1;
        this.mHandler = new Handler() { // from class: com.kingroot.common.uilib.QSwitchCheckBox.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                QSwitchCheckBox.this.invalidate();
            }
        };
        m13246a(context, C0554b.m13242e(context, attributeSet));
    }

    public QSwitchCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.f1042QU = false;
        this.f1043QV = -1;
        this.mHandler = new Handler() { // from class: com.kingroot.common.uilib.QSwitchCheckBox.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                QSwitchCheckBox.this.invalidate();
            }
        };
        m13246a(context, C0554b.m13242e(context, attributeSet));
    }

    /* renamed from: a */
    private void m13246a(Context context, C0554b c0554b) {
        this.f1047Qz = c0554b;
        this.f1036QO = new Paint();
        this.f1036QO.setAntiAlias(true);
        this.f1036QO.setColor(c0554b.f1059Rh);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1022QA = C3953zi.m1311pr().getDrawable(c0554b.f1056Re);
        if (this.f1022QA != null) {
            this.f1024QC = this.f1022QA.getIntrinsicWidth();
            this.f1025QD = this.f1022QA.getIntrinsicHeight();
        }
        this.f1023QB = abg.m12835r(54.0f);
        int m12835r = abg.m12835r(2.0f);
        this.f1046Qy = abg.m12835r(15.0f);
        this.f1021Cm = this.f1023QB / 2.0f;
        this.f1031QJ = this.f1025QD / 2.0f;
        this.f1032QK = this.f1023QB - this.f1031QJ;
        this.f1033QL = (this.f1032QK - this.f1031QJ) / 2.0f;
        this.f1026QE = 0.0f;
        float f = this.f1023QB;
        this.f1029QH = 0;
        this.f1030QI = this.f1025QD;
        float f2 = (this.f1025QD - m12835r) / 2.0f;
        this.f1027QF = this.f1029QH + f2;
        this.f1028QG = this.f1027QF + m12835r;
        int i = (int) (this.f1026QE + ((this.f1023QB - this.f1024QC) / 2));
        int i2 = this.f1024QC + i;
        if (this.f1022QA != null) {
            this.f1022QA.setBounds(i, this.f1029QH, i2, this.f1030QI);
        }
        this.f1034QM = new RectF(this.f1026QE + f2, this.f1027QF, m12835r + f2, this.f1028QG);
        this.f1035QN = new RectF((this.f1023QB - m12835r) - f2, this.f1027QF, f - f2, this.f1028QG);
        float f3 = this.f1023QB * 1.4444444f;
        this.f1040QS = f3 - this.f1023QB;
        float f4 = (f3 - this.f1023QB) - (((this.f1024QC + f3) - (this.f1023QB * 2)) / 2.0f);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int i3 = this.f1023QB + this.f1046Qy;
        int size = View.MeasureSpec.getSize(i2);
        this.f1045Qx = (size - this.f1025QD) / 2.0f;
        if (this.f1045Qx < 0.0f) {
            this.f1045Qx = 0.0f;
        }
        setMeasuredDimension(i3, size);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        float f2 = this.f1021Cm;
        float f3 = this.f1027QF;
        float f4 = this.f1028QG;
        float f5 = this.f1031QJ;
        float f6 = this.f1032QK;
        Paint paint = this.f1036QO;
        float f7 = this.f1040QS;
        int i = this.f1043QV;
        if (i < 0) {
            f = this.f1041QT - (f7 / 2.0f);
        } else {
            this.f1043QV--;
            f = (((this.f1041QT == 0.0f ? i : 5 - i) * f7) / 5.0f) - (f7 / 2.0f);
        }
        canvas.save();
        canvas.translate(this.f1046Qy, this.f1045Qx);
        paint.setColor(this.f1047Qz.f1058Rg);
        float f8 = f2 + f;
        if (f5 < f8) {
            canvas.drawRect(f5, f3, f8, f4, paint);
        }
        paint.setColor(this.f1047Qz.f1059Rh);
        if (f8 < f6) {
            canvas.drawRect(f8, f3, f6, f4, paint);
        }
        canvas.translate(f, 0.0f);
        this.f1022QA.draw(canvas);
        canvas.restore();
        if (i > 0) {
            this.mHandler.sendEmptyMessageDelayed(0, 20L);
        } else if (this.f1044QW != null) {
            this.f1044QW.onAnimationEnd();
            this.f1044QW = null;
        }
    }

    /* renamed from: c */
    private boolean m13245c(float f, float f2) {
        float f3 = this.f1029QH - this.mTouchSlop;
        float f4 = (this.f1026QE + this.f1041QT) - this.mTouchSlop;
        return f > f4 && f < (((float) this.f1024QC) + f4) + ((float) this.mTouchSlop) && f2 > f3 && f2 < ((float) (this.f1030QI + this.mTouchSlop));
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        if (!m13248nW()) {
            return super.onTouchEvent(motionEvent);
        }
        this.mVelocityTracker.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (isEnabled() && m13245c(x, y)) {
                    this.f1037QP = 1;
                    this.f1038QQ = x;
                    this.f1039QR = y;
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.f1037QP == 2) {
                    m13243d(motionEvent);
                    return true;
                }
                this.f1037QP = 0;
                this.mVelocityTracker.clear();
                break;
            case 2:
                switch (this.f1037QP) {
                    case 2:
                        float x2 = motionEvent.getX();
                        float max = Math.max(0.0f, Math.min((x2 - this.f1038QQ) + this.f1041QT, this.f1040QS));
                        if (max != this.f1041QT) {
                            this.f1041QT = max;
                            this.f1038QQ = x2;
                            invalidate();
                            return true;
                        }
                        return true;
                    case 1:
                        float x3 = motionEvent.getX();
                        float y2 = motionEvent.getY();
                        if (Math.abs(x3 - this.f1038QQ) > this.mTouchSlop || Math.abs(y2 - this.f1039QR) > this.mTouchSlop) {
                            this.f1037QP = 2;
                            getParent().requestDisallowInterceptTouchEvent(true);
                            this.f1038QQ = x3;
                            this.f1039QR = y2;
                            return true;
                        }
                        break;
                }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: c */
    private void m13244c(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    /* renamed from: d */
    private void m13243d(MotionEvent motionEvent) {
        boolean z;
        this.f1037QP = 0;
        boolean z2 = motionEvent.getAction() == 1 && isEnabled();
        m13244c(motionEvent);
        boolean isChecked = isChecked();
        if (z2) {
            this.mVelocityTracker.computeCurrentVelocity(1000);
            float xVelocity = this.mVelocityTracker.getXVelocity();
            if (Math.abs(xVelocity) > this.mMinFlingVelocity) {
                z = xVelocity > 0.0f;
            } else {
                z = getTargetCheckedState();
            }
        } else {
            z = isChecked;
        }
        m13247Z(z);
        if (z != isChecked) {
            sendAccessibilityEvent(1);
            if (this.mOnClickListener != null) {
                playSoundEffect(0);
                this.mOnClickListener.onClick(this);
            }
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.mOnClickListener = onClickListener;
    }

    /* renamed from: Z */
    private void m13247Z(final boolean z) {
        float f = z ? this.f1040QS : 0.0f;
        if (this.f1042QU) {
            this.f1042QU = false;
            this.f1043QV = 4;
            setEnabled(false);
            if (this.f1044QW == null) {
                this.f1044QW = new InterfaceC0553a() { // from class: com.kingroot.common.uilib.QSwitchCheckBox.2
                    @Override // com.kingroot.common.uilib.QSwitchCheckBox.InterfaceC0553a
                    public void onAnimationEnd() {
                        QSwitchCheckBox.this.setSuperChecked(z);
                        QSwitchCheckBox.this.postDelayed(new Runnable() { // from class: com.kingroot.common.uilib.QSwitchCheckBox.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                QSwitchCheckBox.this.setEnabled(true);
                            }
                        }, 300L);
                    }
                };
            }
        } else {
            this.f1043QV = -1;
            setSuperChecked(z);
        }
        this.f1041QT = f;
        invalidate();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        if (isChecked() != z) {
            m13247Z(z);
        }
    }

    public void setSuperChecked(boolean z) {
        super.setChecked(z);
    }

    private boolean getTargetCheckedState() {
        return 2.0f * this.f1041QT >= this.f1040QS;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1022QA != null) {
            this.f1022QA.setState(getDrawableState());
        }
        invalidate();
    }

    public CharSequence getTextOn() {
        return this.f1047Qz.f1052Ra;
    }

    public CharSequence getTextOff() {
        return this.f1047Qz.f1053Rb;
    }

    @Override // com.kingroot.common.uilib.QCompoundButton, android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        if (!this.f1020Qw) {
            this.f1042QU = true;
            super.toggle();
        }
    }

    public void setNeedAnimate(boolean z) {
        this.f1042QU = z;
    }

    /* renamed from: com.kingroot.common.uilib.QSwitchCheckBox$b */
    /* loaded from: classes.dex */
    public static class C0554b {

        /* renamed from: Re */
        public int f1056Re;

        /* renamed from: Ra */
        public String f1052Ra = "";

        /* renamed from: Rb */
        public String f1053Rb = "";

        /* renamed from: Rc */
        public int f1054Rc = -1;

        /* renamed from: Rd */
        public int f1055Rd = -1;

        /* renamed from: Rf */
        public int f1057Rf = -1610612736;

        /* renamed from: Rg */
        public int f1058Rg = 1713408508;

        /* renamed from: Rh */
        public int f1059Rh = 1721081517;

        /* renamed from: e */
        public static C0554b m13242e(Context context, AttributeSet attributeSet) {
            C0554b c0554b = new C0554b();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.switcher);
            c0554b.f1056Re = obtainStyledAttributes.getResourceId(2, R.drawable.selector_switcher);
            if (c0554b.f1056Re < 0) {
                throw new RuntimeException("Must set the thumb drawable for the switch button");
            }
            int resourceId = obtainStyledAttributes.getResourceId(3, -1);
            int resourceId2 = obtainStyledAttributes.getResourceId(4, -1);
            if (resourceId > 0) {
                c0554b.f1052Ra = C3953zi.m1311pr().getString(resourceId);
            }
            if (resourceId2 > 0) {
                c0554b.f1053Rb = C3953zi.m1311pr().getString(resourceId2);
            }
            c0554b.f1054Rc = obtainStyledAttributes.getColor(5, -1);
            c0554b.f1055Rd = obtainStyledAttributes.getColor(6, -1);
            c0554b.f1057Rf = obtainStyledAttributes.getColor(7, -1610612736);
            c0554b.f1058Rg = obtainStyledAttributes.getColor(0, 1713408508);
            c0554b.f1059Rh = obtainStyledAttributes.getColor(1, 1721081517);
            obtainStyledAttributes.recycle();
            return c0554b;
        }
    }
}
