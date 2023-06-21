package com.kingroot.kingmaster.baseui.widget;

import android.graphics.Canvas;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
/* loaded from: classes.dex */
public class ViewScale implements Parcelable {
    public static final Parcelable.Creator<ViewScale> CREATOR = new Parcelable.Creator<ViewScale>() { // from class: com.kingroot.kingmaster.baseui.widget.ViewScale.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: y */
        public ViewScale createFromParcel(Parcel parcel) {
            return new ViewScale(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: cv */
        public ViewScale[] newArray(int i) {
            return new ViewScale[i];
        }
    };

    /* renamed from: Rl */
    private int f1201Rl;
    private float acO;
    private int acP;
    private float acQ;
    private float acR;
    private boolean acS;
    private int mHeightMeasureSpec;
    private int mMinHeight;
    private View mView;
    private int mWidthMeasureSpec;

    public ViewScale(View view) {
        this.acO = 1.0f;
        this.mView = view;
        this.mView.setWillNotDraw(false);
        this.acS = false;
    }

    public ViewScale(Parcel parcel) {
        this.acO = 1.0f;
        this.acO = parcel.readFloat();
        this.f1201Rl = parcel.readInt();
        this.mMinHeight = parcel.readInt();
        this.acP = parcel.readInt();
        this.mWidthMeasureSpec = parcel.readInt();
        this.mHeightMeasureSpec = parcel.readInt();
        this.acQ = parcel.readFloat();
        this.acR = parcel.readFloat();
        this.acS = parcel.readInt() != 0;
    }

    public void setView(View view) {
        this.mView = view;
    }

    /* renamed from: E */
    public void m13105E(int i, int i2) {
        this.mWidthMeasureSpec = i;
        this.acP = View.MeasureSpec.getSize(i2);
        if (this.acS) {
            this.mHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1201Rl, 1073741824);
        } else {
            this.mHeightMeasureSpec = i2;
        }
    }

    /* renamed from: sl */
    public void m13103sl() {
        if (!this.acS) {
            this.f1201Rl = this.mView.getMeasuredHeight();
            this.mMinHeight = (int) (this.f1201Rl * 0.3f);
            this.acR = this.mMinHeight >> 1;
            this.acO = 1.0f;
            this.acS = true;
        }
        if (this.acP <= this.f1201Rl) {
            this.acO = ((this.acP - this.mMinHeight) * 1.0f) / (this.f1201Rl - this.mMinHeight);
            this.mView.invalidate();
        }
    }

    /* renamed from: k */
    public void m13104k(Canvas canvas) {
        this.acQ = canvas.getWidth() >> 1;
        canvas.scale(this.acO, this.acO, this.acQ, this.acR);
    }

    /* renamed from: sm */
    public int m13102sm() {
        return this.mWidthMeasureSpec;
    }

    /* renamed from: sn */
    public int m13101sn() {
        return this.mHeightMeasureSpec;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeFloat(this.acO);
        parcel.writeInt(this.f1201Rl);
        parcel.writeInt(this.mMinHeight);
        parcel.writeInt(this.acP);
        parcel.writeInt(this.mWidthMeasureSpec);
        parcel.writeInt(this.mHeightMeasureSpec);
        parcel.writeFloat(this.acQ);
        parcel.writeFloat(this.acR);
        parcel.writeInt(this.acS ? 1 : 0);
    }
}
