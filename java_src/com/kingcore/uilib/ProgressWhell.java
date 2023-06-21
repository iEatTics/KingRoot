package com.kingcore.uilib;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.p004v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public class ProgressWhell extends View {

    /* renamed from: BA */
    private int f578BA;

    /* renamed from: BB */
    private Paint f579BB;

    /* renamed from: BC */
    private Paint f580BC;

    /* renamed from: BD */
    private RectF f581BD;

    /* renamed from: BE */
    private float f582BE;

    /* renamed from: BF */
    private long f583BF;

    /* renamed from: BG */
    private boolean f584BG;

    /* renamed from: BH */
    private float f585BH;

    /* renamed from: BI */
    private float f586BI;

    /* renamed from: BJ */
    private boolean f587BJ;

    /* renamed from: BK */
    private InterfaceC0462a f588BK;

    /* renamed from: BL */
    private boolean f589BL;

    /* renamed from: Bn */
    private final int f590Bn;

    /* renamed from: Bo */
    private final int f591Bo;

    /* renamed from: Bp */
    private final long f592Bp;

    /* renamed from: Bq */
    private int f593Bq;

    /* renamed from: Br */
    private int f594Br;

    /* renamed from: Bs */
    private int f595Bs;

    /* renamed from: Bt */
    private boolean f596Bt;

    /* renamed from: Bu */
    private double f597Bu;

    /* renamed from: Bv */
    private double f598Bv;

    /* renamed from: Bw */
    private float f599Bw;

    /* renamed from: Bx */
    private boolean f600Bx;

    /* renamed from: By */
    private long f601By;

    /* renamed from: Bz */
    private int f602Bz;

    /* renamed from: com.kingcore.uilib.ProgressWhell$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0462a {
        /* renamed from: d */
        void mo6827d(float f);
    }

    public ProgressWhell(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f590Bn = 16;
        this.f591Bo = 270;
        this.f592Bp = 200L;
        this.f593Bq = 56;
        this.f594Br = 8;
        this.f595Bs = 8;
        this.f596Bt = false;
        this.f597Bu = 0.0d;
        this.f598Bv = 460.0d;
        this.f599Bw = 0.0f;
        this.f600Bx = true;
        this.f601By = 0L;
        this.f602Bz = -1442840576;
        this.f578BA = ViewCompat.MEASURED_SIZE_MASK;
        this.f579BB = new Paint();
        this.f580BC = new Paint();
        this.f581BD = new RectF();
        this.f582BE = 230.0f;
        this.f583BF = 0L;
        this.f585BH = 0.0f;
        this.f586BI = 0.0f;
        this.f587BJ = false;
        m13558gR();
    }

    public ProgressWhell(Context context) {
        super(context);
        this.f590Bn = 16;
        this.f591Bo = 270;
        this.f592Bp = 200L;
        this.f593Bq = 56;
        this.f594Br = 8;
        this.f595Bs = 8;
        this.f596Bt = false;
        this.f597Bu = 0.0d;
        this.f598Bv = 460.0d;
        this.f599Bw = 0.0f;
        this.f600Bx = true;
        this.f601By = 0L;
        this.f602Bz = -1442840576;
        this.f578BA = ViewCompat.MEASURED_SIZE_MASK;
        this.f579BB = new Paint();
        this.f580BC = new Paint();
        this.f581BD = new RectF();
        this.f582BE = 230.0f;
        this.f583BF = 0L;
        this.f585BH = 0.0f;
        this.f586BI = 0.0f;
        this.f587BJ = false;
        m13558gR();
    }

    @TargetApi(17)
    /* renamed from: gR */
    private void m13558gR() {
        this.f589BL = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = this.f593Bq + getPaddingLeft() + getPaddingRight();
        int paddingTop = this.f593Bq + getPaddingTop() + getPaddingBottom();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(paddingLeft, size) : paddingLeft;
        }
        if (mode2 == 1073741824 || mode == 1073741824) {
            paddingTop = size2;
        } else if (mode2 == Integer.MIN_VALUE) {
            paddingTop = Math.min(paddingTop, size2);
        }
        setMeasuredDimension(size, paddingTop);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m13553o(i, i2);
        m13557gS();
        invalidate();
    }

    /* renamed from: gS */
    private void m13557gS() {
        this.f579BB.setColor(this.f602Bz);
        this.f579BB.setAntiAlias(true);
        this.f579BB.setStyle(Paint.Style.STROKE);
        this.f579BB.setStrokeWidth(this.f594Br);
        this.f580BC.setColor(this.f578BA);
        this.f580BC.setAntiAlias(true);
        this.f580BC.setStyle(Paint.Style.STROKE);
        this.f580BC.setStrokeWidth(this.f595Bs);
    }

    /* renamed from: o */
    private void m13553o(int i, int i2) {
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        if (!this.f596Bt) {
            int min = Math.min(Math.min((i - paddingLeft) - paddingRight, (i2 - paddingBottom) - paddingTop), (this.f593Bq * 2) - (this.f594Br * 2));
            int i3 = paddingLeft + ((((i - paddingLeft) - paddingRight) - min) / 2);
            int i4 = paddingTop + ((((i2 - paddingTop) - paddingBottom) - min) / 2);
            this.f581BD = new RectF(this.f594Br + i3, this.f594Br + i4, (i3 + min) - this.f594Br, (i4 + min) - this.f594Br);
            return;
        }
        this.f581BD = new RectF(paddingLeft + this.f594Br, paddingTop + this.f594Br, (i - paddingRight) - this.f594Br, (i2 - paddingBottom) - this.f594Br);
    }

    public void setCallback(InterfaceC0462a interfaceC0462a) {
        this.f588BK = interfaceC0462a;
        if (!this.f587BJ) {
            m13554gV();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z;
        float f;
        super.onDraw(canvas);
        canvas.drawArc(this.f581BD, 360.0f, 360.0f, false, this.f580BC);
        boolean z2 = false;
        if (this.f589BL) {
            if (this.f587BJ) {
                z = true;
                long uptimeMillis = SystemClock.uptimeMillis() - this.f583BF;
                m13552r(uptimeMillis);
                this.f585BH += (((float) uptimeMillis) * this.f582BE) / 1000.0f;
                if (this.f585BH > 360.0f) {
                    this.f585BH -= 360.0f;
                    m13559c(-1.0f);
                }
                this.f583BF = SystemClock.uptimeMillis();
                float f2 = this.f585BH - 90.0f;
                float f3 = 16.0f + this.f599Bw;
                if (isInEditMode()) {
                    f2 = 0.0f;
                    f3 = 135.0f;
                }
                canvas.drawArc(this.f581BD, f2, f3, false, this.f579BB);
            } else {
                float f4 = this.f585BH;
                if (this.f585BH != this.f586BI) {
                    z2 = true;
                    this.f585BH = Math.min(((((float) (SystemClock.uptimeMillis() - this.f583BF)) / 1000.0f) * this.f582BE) + this.f585BH, this.f586BI);
                    this.f583BF = SystemClock.uptimeMillis();
                }
                z = z2;
                if (f4 != this.f585BH) {
                    m13554gV();
                }
                float f5 = this.f585BH;
                if (this.f584BG) {
                    f = 0.0f;
                } else {
                    f5 = ((float) (1.0d - Math.pow(1.0f - (this.f585BH / 360.0f), 2.0f))) * 360.0f;
                    f = ((float) (1.0d - Math.pow(1.0f - (this.f585BH / 360.0f), 2.0f * 2.0f))) * 360.0f;
                }
                canvas.drawArc(this.f581BD, f - 90.0f, isInEditMode() ? 360.0f : f5, false, this.f579BB);
            }
            if (z) {
                invalidate();
            }
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            this.f583BF = SystemClock.uptimeMillis();
        }
    }

    /* renamed from: r */
    private void m13552r(long j) {
        if (this.f601By >= 200) {
            this.f597Bu += j;
            if (this.f597Bu > this.f598Bv) {
                this.f597Bu -= this.f598Bv;
                this.f601By = 0L;
                this.f600Bx = !this.f600Bx;
            }
            float cos = (((float) Math.cos(((this.f597Bu / this.f598Bv) + 1.0d) * 3.141592653589793d)) / 2.0f) + 0.5f;
            if (!this.f600Bx) {
                float f = (1.0f - cos) * 254.0f;
                this.f585BH += this.f599Bw - f;
                this.f599Bw = f;
                return;
            }
            this.f599Bw = cos * 254.0f;
            return;
        }
        this.f601By += j;
    }

    /* renamed from: gT */
    public void m13556gT() {
        this.f587BJ = false;
        this.f585BH = 0.0f;
        this.f586BI = 0.0f;
        invalidate();
    }

    /* renamed from: gU */
    public void m13555gU() {
        this.f583BF = SystemClock.uptimeMillis();
        this.f587BJ = true;
        invalidate();
    }

    /* renamed from: c */
    private void m13559c(float f) {
        if (this.f588BK != null) {
            this.f588BK.mo6827d(f);
        }
    }

    /* renamed from: gV */
    private void m13554gV() {
        if (this.f588BK != null) {
            this.f588BK.mo6827d(Math.round((this.f585BH * 100.0f) / 360.0f) / 100.0f);
        }
    }

    public void setInstantProgress(float f) {
        if (this.f587BJ) {
            this.f585BH = 0.0f;
            this.f587BJ = false;
        }
        if (f > 1.0f) {
            f -= 1.0f;
        } else if (f < 0.0f) {
            f = 0.0f;
        }
        if (f != this.f586BI) {
            this.f586BI = Math.min(f * 360.0f, 360.0f);
            this.f585BH = this.f586BI;
            this.f583BF = SystemClock.uptimeMillis();
            invalidate();
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        WheelSavedState wheelSavedState = new WheelSavedState(super.onSaveInstanceState());
        wheelSavedState.f606BH = this.f585BH;
        wheelSavedState.f607BI = this.f586BI;
        wheelSavedState.f608BJ = this.f587BJ;
        wheelSavedState.f604BE = this.f582BE;
        wheelSavedState.f610Br = this.f594Br;
        wheelSavedState.f613Bz = this.f602Bz;
        wheelSavedState.f611Bs = this.f595Bs;
        wheelSavedState.f603BA = this.f578BA;
        wheelSavedState.f609Bq = this.f593Bq;
        wheelSavedState.f605BG = this.f584BG;
        wheelSavedState.f612Bt = this.f596Bt;
        return wheelSavedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WheelSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        WheelSavedState wheelSavedState = (WheelSavedState) parcelable;
        super.onRestoreInstanceState(wheelSavedState.getSuperState());
        this.f585BH = wheelSavedState.f606BH;
        this.f586BI = wheelSavedState.f607BI;
        this.f587BJ = wheelSavedState.f608BJ;
        this.f582BE = wheelSavedState.f604BE;
        this.f594Br = wheelSavedState.f610Br;
        this.f602Bz = wheelSavedState.f613Bz;
        this.f595Bs = wheelSavedState.f611Bs;
        this.f578BA = wheelSavedState.f603BA;
        this.f593Bq = wheelSavedState.f609Bq;
        this.f584BG = wheelSavedState.f605BG;
        this.f596Bt = wheelSavedState.f612Bt;
        this.f583BF = SystemClock.uptimeMillis();
    }

    public float getProgress() {
        if (this.f587BJ) {
            return -1.0f;
        }
        return this.f585BH / 360.0f;
    }

    public void setProgress(float f) {
        if (this.f587BJ) {
            this.f585BH = 0.0f;
            this.f587BJ = false;
            m13554gV();
        }
        if (f > 1.0f) {
            f -= 1.0f;
        } else if (f < 0.0f) {
            f = 0.0f;
        }
        if (f != this.f586BI) {
            if (this.f585BH == this.f586BI) {
                this.f583BF = SystemClock.uptimeMillis();
            }
            this.f586BI = Math.min(f * 360.0f, 360.0f);
            invalidate();
        }
    }

    public void setLinearProgress(boolean z) {
        this.f584BG = z;
        if (!this.f587BJ) {
            invalidate();
        }
    }

    public int getCircleRadius() {
        return this.f593Bq;
    }

    public void setCircleRadius(int i) {
        this.f593Bq = i;
        if (!this.f587BJ) {
            invalidate();
        }
    }

    public int getBarWidth() {
        return this.f594Br;
    }

    public void setBarWidth(int i) {
        this.f594Br = i;
        if (!this.f587BJ) {
            invalidate();
        }
    }

    public int getBarColor() {
        return this.f602Bz;
    }

    public void setBarColor(int i) {
        this.f602Bz = i;
        m13557gS();
        if (!this.f587BJ) {
            invalidate();
        }
    }

    public int getRimColor() {
        return this.f578BA;
    }

    public void setRimColor(int i) {
        this.f578BA = i;
        m13557gS();
        if (!this.f587BJ) {
            invalidate();
        }
    }

    public float getSpinSpeed() {
        return this.f582BE / 360.0f;
    }

    public void setSpinSpeed(float f) {
        this.f582BE = 360.0f * f;
    }

    public int getRimWidth() {
        return this.f595Bs;
    }

    public void setRimWidth(int i) {
        this.f595Bs = i;
        if (!this.f587BJ) {
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WheelSavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<WheelSavedState> CREATOR = new Parcelable.Creator<WheelSavedState>() { // from class: com.kingcore.uilib.ProgressWhell.WheelSavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: i */
            public WheelSavedState createFromParcel(Parcel parcel) {
                return new WheelSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: aC */
            public WheelSavedState[] newArray(int i) {
                return new WheelSavedState[i];
            }
        };

        /* renamed from: BA */
        int f603BA;

        /* renamed from: BE */
        float f604BE;

        /* renamed from: BG */
        boolean f605BG;

        /* renamed from: BH */
        float f606BH;

        /* renamed from: BI */
        float f607BI;

        /* renamed from: BJ */
        boolean f608BJ;

        /* renamed from: Bq */
        int f609Bq;

        /* renamed from: Br */
        int f610Br;

        /* renamed from: Bs */
        int f611Bs;

        /* renamed from: Bt */
        boolean f612Bt;

        /* renamed from: Bz */
        int f613Bz;

        WheelSavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private WheelSavedState(Parcel parcel) {
            super(parcel);
            this.f606BH = parcel.readFloat();
            this.f607BI = parcel.readFloat();
            this.f608BJ = parcel.readByte() != 0;
            this.f604BE = parcel.readFloat();
            this.f610Br = parcel.readInt();
            this.f613Bz = parcel.readInt();
            this.f611Bs = parcel.readInt();
            this.f603BA = parcel.readInt();
            this.f609Bq = parcel.readInt();
            this.f605BG = parcel.readByte() != 0;
            this.f612Bt = parcel.readByte() != 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeFloat(this.f606BH);
            parcel.writeFloat(this.f607BI);
            parcel.writeByte((byte) (this.f608BJ ? 1 : 0));
            parcel.writeFloat(this.f604BE);
            parcel.writeInt(this.f610Br);
            parcel.writeInt(this.f613Bz);
            parcel.writeInt(this.f611Bs);
            parcel.writeInt(this.f603BA);
            parcel.writeInt(this.f609Bq);
            parcel.writeByte((byte) (this.f605BG ? 1 : 0));
            parcel.writeByte((byte) (this.f612Bt ? 1 : 0));
        }
    }
}
