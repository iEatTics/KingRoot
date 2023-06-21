package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
/* loaded from: classes.dex */
public class brv extends View {
    private bru bLd;

    public brv(Context context, bru bruVar) {
        super(context);
        this.bLd = bruVar;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.bLd.mo5620M(this);
        } else {
            this.bLd.mo5619N(this);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.bLd.mo5619N(this);
        super.onDetachedFromWindow();
    }
}
