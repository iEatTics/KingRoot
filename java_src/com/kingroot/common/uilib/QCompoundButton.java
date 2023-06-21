package com.kingroot.common.uilib;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CompoundButton;
/* loaded from: classes.dex */
public abstract class QCompoundButton extends CompoundButton {

    /* renamed from: Qv */
    private boolean f1019Qv;

    /* renamed from: Qw */
    protected boolean f1020Qw;

    public QCompoundButton(Context context) {
        super(context);
        this.f1019Qv = true;
        this.f1020Qw = false;
        setClickable(true);
    }

    public QCompoundButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1019Qv = true;
        this.f1020Qw = false;
        setClickable(true);
    }

    public QCompoundButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1019Qv = true;
        this.f1020Qw = false;
        setClickable(true);
    }

    /* renamed from: nW */
    public boolean m13248nW() {
        return this.f1019Qv;
    }

    public void setAutoToggleOnClick(boolean z) {
        this.f1019Qv = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        if (!this.f1020Qw) {
            super.toggle();
        }
    }

    @Override // android.widget.CompoundButton, android.view.View
    public boolean performClick() {
        if (!this.f1019Qv) {
            this.f1020Qw = true;
        }
        boolean performClick = super.performClick();
        this.f1020Qw = false;
        return performClick;
    }
}
