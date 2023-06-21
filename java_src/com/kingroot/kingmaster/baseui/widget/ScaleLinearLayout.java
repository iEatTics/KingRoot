package com.kingroot.kingmaster.baseui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
/* loaded from: classes.dex */
public class ScaleLinearLayout extends LinearLayout {
    private ViewScale acM;

    public ScaleLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.acM = new ViewScale(this);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        this.acM.m13105E(i, i2);
        super.onMeasure(this.acM.m13102sm(), this.acM.m13101sn());
        this.acM.m13103sl();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        this.acM.m13104k(canvas);
        super.onDraw(canvas);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        State state = new State(super.onSaveInstanceState());
        state.acN = this.acM;
        return state;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        State state = (State) parcelable;
        super.onRestoreInstanceState(state.getSuperState());
        state.acN.setView(this);
        this.acM = state.acN;
    }

    /* loaded from: classes.dex */
    public static class State extends View.BaseSavedState {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.kingroot.kingmaster.baseui.widget.ScaleLinearLayout.State.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: x */
            public State createFromParcel(Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: cu */
            public State[] newArray(int i) {
                return new State[i];
            }
        };
        private ViewScale acN;

        public State(Parcel parcel) {
            super(parcel);
            this.acN = ViewScale.CREATOR.createFromParcel(parcel);
        }

        public State(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            this.acN.writeToParcel(parcel, i);
        }
    }
}
