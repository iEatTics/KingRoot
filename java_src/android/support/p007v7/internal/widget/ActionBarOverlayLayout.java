package android.support.p007v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.p007v7.app.ActionBar;
import android.support.p007v7.appcompat.C0189R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* renamed from: android.support.v7.internal.widget.ActionBarOverlayLayout */
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends FrameLayout {
    static final int[] mActionBarSizeAttr = {C0189R.attr.actionBarSize};
    private ActionBar mActionBar;
    private View mActionBarBottom;
    private int mActionBarHeight;
    private View mActionBarTop;
    private ActionBarView mActionView;
    private ActionBarContainer mContainerView;
    private View mContent;
    private final Rect mZeroRect;

    public ActionBarOverlayLayout(Context context) {
        super(context);
        this.mZeroRect = new Rect(0, 0, 0, 0);
        init(context);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mZeroRect = new Rect(0, 0, 0, 0);
        init(context);
    }

    private void init(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(mActionBarSizeAttr);
        this.mActionBarHeight = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    public void setActionBar(ActionBar actionBar) {
        this.mActionBar = actionBar;
    }

    private boolean applyInsets(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (z && layoutParams.leftMargin != rect.left) {
            layoutParams.leftMargin = rect.left;
            z5 = true;
        }
        if (z2 && layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z5 = true;
        }
        if (z4 && layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z5 = true;
        }
        if (!z3 || layoutParams.bottomMargin == rect.bottom) {
            return z5;
        }
        layoutParams.bottomMargin = rect.bottom;
        return true;
    }

    void pullChildren() {
        if (this.mContent == null) {
            this.mContent = findViewById(C0189R.C0191id.action_bar_activity_content);
            if (this.mContent == null) {
                this.mContent = findViewById(16908290);
            }
            this.mActionBarTop = findViewById(C0189R.C0191id.top_action_bar);
            this.mContainerView = (ActionBarContainer) findViewById(C0189R.C0191id.action_bar_container);
            this.mActionView = (ActionBarView) findViewById(C0189R.C0191id.action_bar);
            this.mActionBarBottom = findViewById(C0189R.C0191id.split_action_bar);
        }
    }
}
