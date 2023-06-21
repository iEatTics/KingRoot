package com.kingcore.uilib.smoothprogressbar;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public class ContentLoadingSmoothProgressBar extends SmoothProgressBar {
    private final Runnable mDelayedHide;
    private final Runnable mDelayedShow;
    private boolean mDismissed;
    private boolean mPostedHide;
    private boolean mPostedShow;
    private long mStartTime;

    public ContentLoadingSmoothProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: com.kingcore.uilib.smoothprogressbar.ContentLoadingSmoothProgressBar.1
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingSmoothProgressBar.this.mPostedHide = false;
                ContentLoadingSmoothProgressBar.this.mStartTime = -1L;
                ContentLoadingSmoothProgressBar.this.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() { // from class: com.kingcore.uilib.smoothprogressbar.ContentLoadingSmoothProgressBar.2
            @Override // java.lang.Runnable
            public void run() {
                ContentLoadingSmoothProgressBar.this.mPostedShow = false;
                if (!ContentLoadingSmoothProgressBar.this.mDismissed) {
                    ContentLoadingSmoothProgressBar.this.mStartTime = System.currentTimeMillis();
                    ContentLoadingSmoothProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks();
    }

    private void removeCallbacks() {
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }
}
