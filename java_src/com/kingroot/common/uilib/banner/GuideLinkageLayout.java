package com.kingroot.common.uilib.banner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class GuideLinkageLayout extends FrameLayout {
    public GuideLinkageLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GuideLinkageLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        for (int i = 0; i < getChildCount(); i++) {
            try {
                getChildAt(i).dispatchTouchEvent(motionEvent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }
}
